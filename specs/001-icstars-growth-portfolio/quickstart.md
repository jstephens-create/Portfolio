# Quickstart: Validating the C60 Portfolio

Run these checks on the working branch before any merge to `main`, and in full at final
review (Phase F, 2026-11-20). Commands assume PowerShell at the repository root.

## Prerequisites

- Repository checked out on the working branch (R6).
- A browser with developer tools (responsive mode, JavaScript toggle).

## 1. Local preview

```powershell
python -m http.server 8000
```

Open `http://localhost:8000/index.html`. Pages also work opened directly from disk, since all
links are relative.

## 2. Content gate (per page, before merge)

**Marker check** — must return nothing for any page being merged (SC-009):

```powershell
Select-String -Path *.html -Pattern '\[NEEDS (INPUT|SELECTION|APPROVAL|DECISION)'
```

**Minimum check** — count deliverables on each section page and compare to the minimum
(SC-002 to SC-006):

```powershell
foreach ($p in 'leadership','business','technology','career-planning') {
  "$p : " + (Select-String -Path "$p.html" -Pattern '<article class="project"').Count
}
```

Expected: leadership ≥ 5, business ≥ 4, technology ≥ 5, career-planning ≥ 4. For
`wellness.html`, confirm by inspection that each of the four sub-area sections has ≥ 1
article.

**Jordan's review** — for each deliverable: heading names the option; first person; every
sub-point answered; at least one specific detail; Jordan approves (SC-007, SC-014). Record the
approval in `PROJECT_CONTEXT.md`.

## 3. Local links and media (SC-008)

Every relative `href`/`src` must point to an existing file:

```powershell
Get-ChildItem *.html | ForEach-Object {
  $page = $_.Name
  Select-String -Path $_ -Pattern '(?:href|src)="(?![a-z]+:)([^"#?]+)' -AllMatches |
    ForEach-Object { $_.Matches } | ForEach-Object { $_.Groups[1].Value } |
    Where-Object { -not (Test-Path $_) } | ForEach-Object { "$page -> missing $_" }
}
```

Expected: no output. Gallery photos are set by script, so also click through both photography
collections.

External links (LinkedIn, GitHub, evidence links): open each one manually at final review.

## 4. Constitution quality gates (SC-010, SC-012, SC-013)

For every new or changed page:

| Check | How | Expected |
|---|---|---|
| Responsive | Widths > 900px, ≤ 900px, ≤ 700px | No sideways scroll, no overlap |
| Keyboard | Tab through the page | All controls reachable, focus visible, skip link works, mobile menu closes on Escape |
| No JavaScript | Disable JS, reload | All content and navigation readable and usable |
| Navigation | From any page | Each of the five sections reachable in 1 activation |
| Reduced motion | Emulate `prefers-reduced-motion: reduce` | Sidebar stripe stops; videos do not autoplay |
| Cache busting | If `style.css` or `script.js` changed | `?v=` updated on every page |
| Docs | README | Features and Project Structure list new pages |

## 5. Preservation (SC-012)

- Photography: 24 Street and 9 Architecture photos reachable with buttons and arrow keys.
- TouchDesigner: both videos play with controls.
- Aliases page unchanged.
- Sidebar stripe animates on every page.

## 6. Homepage (SC-001)

From `index.html` alone: name visible on first screen; email, resume PDF, LinkedIn, and GitHub
each open correctly.

## 7. Privacy (FR-060 to FR-063)

- Every personal item on the site is **Public: Yes** in `PROJECT_CONTEXT.md`.
- The resume PDF contains only approved contact details.
- No rubric text, evaluator names, or due date on the site unless approved.
- Wellness content explicitly approved by Jordan.
