<#
.SYNOPSIS
  Flags drift between README.md and the HTML pages actually present on this branch.

.DESCRIPTION
  Read-only check, no network calls, no dependencies. It never edits README.md or any other
  file - it only reports what's out of sync so a person (or Claude, when asked) can make a
  small, deliberate edit. This is deliberate: auto-rewriting README.md on every change risks
  publishing something nobody reviewed, which is the failure mode this script also checks for.

  Two checks:
    1. Every top-level *.html file should be mentioned somewhere in README.md (by its relative
       link), and every *.html file linked from README.md should still exist.
    2. No *.html file should contain a placeholder marker
       ([NEEDS INPUT], [NEEDS SELECTION], [NEEDS APPROVAL], [NEEDS DECISION]).
       This is a direct safeguard: unfinished pages carrying these markers reached `main`
       and the live site on 2026-10-20 before being reverted.

  By default this checks the working tree (uncommitted changes included) - the point is to
  catch drift before you commit. Pass -Ref to audit a specific commit or branch instead
  (e.g. -Ref main checks only what's actually committed there).

.EXAMPLE
  powershell -File .\scripts\check-readme-sync.ps1
  powershell -File .\scripts\check-readme-sync.ps1 -Ref main
#>
param(
  [string]$Ref = ''
)

$ErrorActionPreference = 'Stop'
$repoRoot = git rev-parse --show-toplevel
Set-Location $repoRoot

if ($Ref) {
  $label = $Ref
  $trackedPages = git ls-tree -r --name-only $Ref |
    Where-Object { $_ -match '^[^/]+\.html$' } |
    Sort-Object
  $readmeLines = git show "${Ref}:README.md" 2>$null
  $readmeContent = if ($readmeLines) { $readmeLines -join "`n" } else { '' }
  $markerHits = git grep -n -E 'NEEDS INPUT|NEEDS SELECTION|NEEDS APPROVAL|NEEDS DECISION' $Ref -- '*.html' 2>$null
} else {
  $label = 'working tree'
  $trackedPages = Get-ChildItem -Path . -Filter '*.html' -File |
    Select-Object -ExpandProperty Name |
    Sort-Object
  $readmeContent = if (Test-Path README.md) { Get-Content README.md -Raw } else { '' }
  $markerHits = Select-String -Path *.html -Pattern 'NEEDS INPUT|NEEDS SELECTION|NEEDS APPROVAL|NEEDS DECISION' -ErrorAction SilentlyContinue
}

if (-not $readmeContent) {
  Write-Host "No README.md found for '$label' - skipping link comparison." -ForegroundColor Yellow
}

$mentioned = [regex]::Matches($readmeContent, '\(([A-Za-z0-9_\-]+\.html)\)') |
  ForEach-Object { $_.Groups[1].Value } |
  Sort-Object -Unique

$missingFromReadme = $trackedPages | Where-Object { $_ -notin $mentioned }
$staleInReadme     = $mentioned     | Where-Object { $_ -notin $trackedPages }

$problems = New-Object System.Collections.Generic.List[string]

if ($missingFromReadme) {
  $problems.Add("Pages in $label not linked from README.md: $($missingFromReadme -join ', ')")
}
if ($staleInReadme) {
  $problems.Add("README.md links to pages that don't exist in ${label}: $($staleInReadme -join ', ')")
}
if ($markerHits) {
  $problems.Add("Placeholder markers found in $label HTML:`n$markerHits")
}

if ($problems.Count -gt 0) {
  Write-Host "README/repository drift detected in ${label}:" -ForegroundColor Yellow
  foreach ($p in $problems) { Write-Host "`n- $p" }
  exit 1
}

Write-Host "README.md matches $label. No placeholder markers found." -ForegroundColor Green
exit 0
