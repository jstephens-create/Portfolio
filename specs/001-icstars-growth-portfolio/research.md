# Research: i.c.stars C60 Digital Portfolio

All decisions below are design choices within the approved spec. None selects a rubric option
or creates content on Jordan's behalf.

## R1 — Page structure for the five sections (spec Q1, FR-030 to FR-033)

- **Decision**: One dedicated page per section: `leadership.html`, `business.html`,
  `technology.html`, `career-planning.html`, `wellness.html`.
- **Rationale**: Matches the existing architecture, where each body of work (TouchDesigner,
  Photography) has its own page reached from a sidebar group. Leadership and Technology need
  5+ deliverables each; separate pages keep each page readable and let `aria-current` mark the
  active section. Existing pages are disturbed only by the shared sidebar update.
- **Alternatives considered**: One combined `growth.html` with five anchored sections (fewer
  files, but a very long page with 22+ deliverables and no per-section `aria-current`);
  homepage sections (most disruptive to the current homepage).

## R2 — Navigation and required/optional distinction (FR-031, FR-032)

- **Decision**: Add a **PROGRAM** group above the existing PROJECTS group, using the same
  `.nav-group` / `.nav-sub` markup, with five sub-items. The group heading links to the
  homepage program index (`index.html#program`). The two group names, PROGRAM and PROJECTS,
  distinguish required program content from creative work.
- **Rationale**: Reuses an existing pattern exactly; no new CSS; keeps the order ABOUT →
  groups → CONTACT → ALIASES. Mobile navigation already scrolls (`max-height: 75dvh;
  overflow-y: auto`), so five more items fit.
- **Alternatives considered**: A second `.nav-label` (e.g. "PROGRAM" / "ARCHIVE") above each
  group — stronger separation but adds visual weight; kept as a fallback if the group names
  alone do not read clearly in review.

## R3 — Deliverable presentation (FR-020 to FR-025)

- **Decision**: Each deliverable is an `article.project` inside a `.work-grid`, with
  `.project-index` showing its option code and short name (e.g. `L1 / TEAM WEEK`), an `h3`
  naming the rubric option, Jordan's first-person paragraphs, and optional figure and links.
  Wellness uses four `section`s (Financial, Emotional, Mental, Physical), each with its own
  `h2` and `.work-grid`.
- **Rationale**: Constitution Principle IV requires reusing existing components first.
  `.project` already carries the index label, heading, and body styles used across the site.
- **Alternatives considered**: A new single-column reflection component for long text. Deferred:
  add it only if review shows long reflections read poorly in two columns, and then only with
  existing tokens.

## R4 — Homepage identity and program index (FR-001 to FR-007)

- **Decision**: (a) Add `resume` and `linkedin` rows to the existing contact `.meta-panel`.
  (b) Add a RESUME entry to the hero `.hero-meta` so the resume link is visible on the first
  screen. (c) Add a `#program` section between About and Selected Work: a `.meta-panel` index
  listing the five sections as `01 … 05` rows linking to each page.
- **Rationale**: All three reuse existing components. The hero entry satisfies "clearly
  visible"; the contact rows satisfy the rubric's homepage list; the index satisfies FR-007.
- **Alternatives considered**: Five `.project` cards on the homepage (the `.project-grid` is
  tuned for three cards with the first spanning two rows; five cards would look unbalanced).

## R5 — Case study page (Q3, FR-034, FR-050 to FR-054)

- **Decision**: Keep the filename `project-title.html`; replace its content and change its
  visible label, `<title>`, and project card to the real project name once Jordan selects it.
- **Rationale**: Renaming a top-level file is an architectural change that `CLAUDE.md` says to
  ask about, and the project name is not yet known. Keeping the filename avoids breaking links.
- **Alternatives considered**: Rename to `case-study.html` or a project slug — clearer URL;
  offered to Jordan as an option once the project is chosen.

## R6 — Drafting without publishing placeholders (FR-041, D6)

- **Decision**: Work on a branch named `001-icstars-growth-portfolio`. Merge to `main` (which
  deploys) only at the phase points in plan.md, and only after the content gate passes. The
  PROGRAM navigation is merged last, together with all five pages.
- **Rationale**: GitHub Pages deploys `main` only, so branch work never reaches the live site.
  Per-phase merges let finished homepage items go live early without exposing empty pages.
- **Alternatives considered**: Work only locally until Nov 20 (no backup, single risky merge);
  merge pages to `main` unlinked (still reachable by URL, so placeholders would be public).
- **Note**: The repository is public, so placeholder text on the branch is visible on GitHub,
  though not on the live site. Branch creation, commits, and merges each need Jordan's approval.

## R7 — Publication of development files (D7)

- **Finding**: GitHub Pages runs Jekyll by default (no `.nojekyll` file exists). Dot-folders
  (`.specify/`, `.claude/`) are excluded automatically, but `CLAUDE.md`, `PROJECT_CONTEXT.md`,
  and `specs/` would be published as site pages. The rubric's format is "Live GitHub Repo", so
  evaluators may also read these files in the repository.
- **Options for Jordan**: (a) Leave as-is — no sensitive data is in them; (b) add a Jekyll
  `_config.yml` with an `exclude` list so they are hidden from the site but remain in the repo;
  (c) keep them out of the repository entirely.
- **Plan default**: (a), pending Jordan's decision. Option (b) adds a configuration file and
  should be confirmed against constitution Principle I before use.

## R8 — Resume PDF (Q2, D4)

- **Decision**: Store at `documents/resume.pdf` (final name per Jordan), linked with a visible
  label stating the format, e.g. "Resume (PDF)". Use a plain link (with `download` optional) so
  it opens in the browser's viewer or downloads.
- **Prerequisite**: Constitution amendment (MINOR, 1.0.0 → 1.1.0) adding PDF to Principle V's
  allowed formats and `documents/` to the Technical Constraints file layout, committed
  separately. Jordan approves the amendment.
- **Privacy**: Jordan supplies a public-safe version (no home address; phone only if approved).

## R9 — Validation approach (SC-008, SC-009, SC-013)

- **Decision**: Use the constitution's manual quality gates, plus two shell checks: a search
  for placeholder markers in published HTML, and a check that every relative `href`/`src`
  resolves to a file. External links are opened manually at final review. Local preview uses a
  simple static file server from the repository root.
- **Rationale**: No tooling or dependencies are added; checks are repeatable and measurable.
- **Alternatives considered**: Third-party link checkers or CI — rejected under Principle I.

## R10 — Evidence media (FR-025, Principle V)

- **Decision**: Evidence images Jordan supplies are converted to web formats, sized for
  display, stored in `images/program/`, lazy-loaded, and given captions and alt text Jordan
  approves. Slides or documents are shown as images or linked; videos follow the existing
  MP4/WebM rule. Files over 10 MB need a stated justification.
