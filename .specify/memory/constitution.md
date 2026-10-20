<!--
Sync Impact Report
==================
Version change: (unversioned template) → 1.0.0
Bump rationale: First ratification. All placeholders replaced with project-specific governance.

Modified principles (template slot → adopted title):
- [PRINCIPLE_1_NAME] → I. Static, Dependency-Free Delivery
- [PRINCIPLE_2_NAME] → II. Accessible by Default (NON-NEGOTIABLE)
- [PRINCIPLE_3_NAME] → III. Progressive Enhancement
- [PRINCIPLE_4_NAME] → IV. One Design System
- [PRINCIPLE_5_NAME] → V. Media & Performance Discipline

Added sections:
- Technical Constraints (was [SECTION_2_NAME])
- Development Workflow & Quality Gates (was [SECTION_3_NAME])
- Governance (filled)

Removed sections: none

Deferred items / TODOs: none
-->

# Jordan Stephens Portfolio Constitution

## Core Principles

### I. Static, Dependency-Free Delivery

The site MUST be deployable to GitHub Pages as-is from the repository root, with no build step.

- Pages are hand-authored HTML5, a shared `style.css`, and a shared `script.js` written in
  vanilla JavaScript.
- Frameworks, bundlers, package managers, and third-party runtime scripts or stylesheets
  (including CDNs and web-font services) MUST NOT be introduced without a constitution amendment.
- All internal links and asset references MUST be relative so the site works under the
  `/Portfolio/` project path and when opened locally.

Rationale: zero tooling keeps the portfolio easy to maintain, fast to load, and impossible to
break through dependency drift.

### II. Accessible by Default (NON-NEGOTIABLE)

Every page MUST meet WCAG 2.1 AA for the content it presents.

- Each page MUST include `lang`, a descriptive `<title>`, a skip link to `#main-content`, and
  landmark elements (`nav`, `main`, `footer`).
- Every interactive element MUST be reachable and operable by keyboard and MUST show a visible
  `:focus-visible` state; galleries and menus MUST support Escape/arrow keys where applicable.
- Every meaningful image MUST have descriptive `alt` text; decorative elements MUST use
  `alt=""` or `aria-hidden="true"`.
- Motion (animations, autoplay video) MUST respect `prefers-reduced-motion`; video MUST keep
  native controls available.
- Text and focus indicators MUST meet AA contrast against the design-system tokens.

Rationale: the portfolio represents its author professionally; excluding visitors is a defect,
not a style choice.

### III. Progressive Enhancement

All content and navigation MUST be usable with JavaScript disabled.

- JavaScript MAY only enhance an already-working HTML baseline (e.g., the mobile menu toggle,
  gallery viewers, reduced-motion playback control).
- Enhanced states MUST be gated by a class that script adds at runtime (the existing
  `is-enhanced` pattern) so the no-JS layout never hides content.
- Scripts MUST feature-detect required elements and fail silently when they are absent, since
  `script.js` is shared across pages.

Rationale: a static portfolio must never show a blank or broken page because a script failed.

### IV. One Design System

The site uses a single Swiss/industrial visual system, and every page MUST conform to it.

- Colors, fonts, spacing, and sidebar width MUST come from the custom properties on `:root` in
  `style.css`; new raw color values in rules are prohibited—add a token instead.
- Layout MUST use the shared 12-column `main` grid (6 columns ≤900px, single flow ≤700px) and
  the shared sidebar navigation markup.
- Typographic roles are fixed: sans for headings and body, mono for labels, indices, and
  metadata; yellow (`--yellow`) is the sole accent.
- New pages MUST reuse existing components (`.project`, `.meta-panel`, `.viewer`, etc.) before
  creating new ones, and per-page `<style>` blocks or inline styles are prohibited.

Rationale: consistency is what makes a portfolio read as a deliberate body of work.

### V. Media & Performance Discipline

Media MUST be web-ready before it is committed.

- Images MUST be web formats (JPEG, PNG, WebP, AVIF) sized for display; below-the-fold images
  MUST use `loading="lazy"`.
- Video MUST be MP4 (H.264) or WebM; source formats such as `.mov` MUST stay out of the
  repository (enforced via `.gitignore`).
- Any individual committed asset over 10 MB requires a stated justification in the commit
  message.
- When `style.css` or `script.js` changes, the `?v=` cache-busting query on every page that
  references it MUST be updated.

Rationale: GitHub Pages serves files directly with no optimization pipeline, so every byte
committed is a byte a visitor downloads.

## Technical Constraints

- **Stack**: HTML5, CSS3, vanilla ES2015+ JavaScript. No transpilation.
- **Hosting**: GitHub Pages from the `main` branch root;
  live at `https://jstephens-create.github.io/Portfolio/`.
- **Browser support**: current evergreen Chrome, Edge, Firefox, and Safari (desktop and mobile).
- **File layout**: top-level `.html` pages, shared `style.css` and `script.js`, media in
  `images/`, `videos/`, and `photography_*/` folders. New media collections follow the
  `photography_<collection>/` naming pattern.
- **Secrets & privacy**: no API keys, tracking scripts, or analytics. Only contact details the
  author intends to publish may appear on pages.

## Development Workflow & Quality Gates

Before any change is committed to `main` (which deploys immediately), the author MUST verify:

1. **Responsive check** at three widths: desktop (>900px), tablet (≤900px), and mobile (≤700px),
   with no horizontal scroll and no overlapping content.
2. **Keyboard pass**: tab through every changed page; all controls reachable, focus visible,
   skip link functional, and mobile menu closes on Escape.
3. **No-JS pass**: changed pages remain readable and navigable with JavaScript disabled.
4. **Links & media**: every new or changed link, image, and video resolves (no 404s) using
   relative paths.
5. **Docs**: `README.md` Features and Project Structure are updated when pages or top-level
   folders are added, renamed, or removed.

Larger features SHOULD go through the Spec Kit flow (`/speckit-specify` → `/speckit-plan` →
`/speckit-tasks` → `/speckit-implement`), and each plan's Constitution Check MUST cite the
principles above.

## Governance

This constitution supersedes informal conventions for this repository. Where a spec, plan, or
task conflicts with it, the constitution wins until it is amended.

- **Amendments**: proposed by editing `.specify/memory/constitution.md` (via
  `/speckit-constitution`), with a Sync Impact Report describing the change, and committed
  separately from feature work.
- **Versioning**: semantic versioning.
  MAJOR for removing or redefining a principle; MINOR for adding a principle or section or
  materially expanding guidance; PATCH for clarifications and wording fixes.
- **Compliance**: every plan's Constitution Check and every pre-commit review MUST confirm
  adherence to the Core Principles and Quality Gates. Any deviation MUST be recorded with its
  justification in the relevant plan's Complexity Tracking table.
- **Review cadence**: the constitution is reviewed whenever a new page type, media type, or
  external dependency is proposed.

**Version**: 1.0.0 | **Ratified**: 2026-10-20 | **Last Amended**: 2026-10-20
