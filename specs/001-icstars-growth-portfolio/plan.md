# Implementation Plan: i.c.stars C60 Digital Portfolio

**Branch**: `001-icstars-growth-portfolio` (proposed; not yet created — see research R6) |
**Date**: 2026-10-20 | **Spec**: [spec.md](spec.md)

**Input**: Feature specification from `specs/001-icstars-growth-portfolio/spec.md`

## Summary

Add the five C60 rubric sections — Leadership, Business, Technology, Career Planning,
Wellness — to the existing static portfolio as five dedicated pages that slot into the current
sidebar as a new **PROGRAM** navigation group, mirroring how the PROJECTS group works today.
The homepage gains a program index, a resume (PDF) link, and a LinkedIn link. The "Project
Title" page becomes a real software case study. Every new page is built from existing
components (`.project`, `.work-grid`, `.meta-panel`, sidebar markup) so the industrial design,
animations, and creative pages are untouched.

Content is Jordan's alone. Pages are built with clearly marked placeholders on a working
branch, and each page reaches the live site only after it passes a content gate (no markers,
minimum deliverables met, Jordan's approval). No new JavaScript is needed.

## Technical Context

**Language/Version**: HTML5, CSS3, vanilla ES2015+ JavaScript (no transpilation)

**Primary Dependencies**: None (constitution Principle I)

**Storage**: N/A — static files. Content is authored directly in HTML. Selection and approval
status is tracked in `PROJECT_CONTEXT.md` (see data-model.md).

**Testing**: Manual constitution quality gates (responsive, keyboard, no-JS, links, docs),
plus marker and local-link checks run from the shell (see quickstart.md). No test framework.

**Target Platform**: GitHub Pages (`main` branch root); current evergreen Chrome, Edge,
Firefox, Safari on desktop and mobile

**Project Type**: Static multi-page website

**Performance Goals**: No regression from the current site; evidence images sized for display
and lazy-loaded below the fold; no individual asset over 10 MB without justification

**Constraints**: No build step; relative links only; WCAG 2.1 AA; usable without JavaScript;
one design system; deadline 2026-11-23; no unapproved personal content on the live site

**Scale/Scope**: 5 new pages; 3 existing pages edited for content (index, project-title,
README); sidebar markup updated identically on all 10 pages; 1 PDF; up to ~41 deliverable
slots, of which at least 22 will be used (5 + 4 + 5 + 4 + 4)

## Constitution Check

*GATE: Must pass before Phase 0 research. Re-checked after Phase 1 design.*

| Principle / Gate | Assessment | Status |
|---|---|---|
| **I. Static, dependency-free** | New pages are hand-authored HTML using shared `style.css` and `script.js`. No frameworks, CDNs, or packages. All links relative. | PASS |
| **II. Accessible by default** | Each new page has `lang`, descriptive `<title>`, skip link to `#main-content`, `nav`/`main`/`footer` landmarks, one `h1`, ordered `h2`/`h3` headings, alt text and captions for every artifact. | PASS (verified per page in quickstart) |
| **III. Progressive enhancement** | New pages need no script; content and nav work without JS. Existing photography gallery shows only one photo per collection without JS — pre-existing, tracked as D5, not worsened. | PASS (pre-existing issue noted) |
| **IV. One design system** | Reuses `.project`, `.work-grid`, `.meta-panel`, `.nav-group`, `.nav-sub`, `.nav-label`, hero pattern. No inline styles or per-page `<style>`. No new tokens expected; any new rule uses existing tokens. | PASS |
| **V. Media & performance** | Evidence images in web formats, lazy-loaded. Resume PDF now permitted under constitution v1.1.0 (D4 approved and applied 2026-10-20); `documents/` added to File layout. | PASS |
| **Tech constraints: privacy** | Only approved contact details; resume must be public-safe. | PASS |
| **Workflow gates 1–5** | Responsive, keyboard, no-JS, links, README update — all in quickstart.md and required before each merge to `main`. | PASS |

**Gate result**: PASS. Constitution amendment D4 was approved and applied 2026-10-20
(v1.0.0 → v1.1.0, Sync Impact Report in `.specify/memory/constitution.md`). The amendment
itself is not yet committed — commits still require Jordan's separate, explicit approval.
All design work, including the resume PDF path, is unblocked.

**Post-design re-check (after Phase 1)**: No new violations. The design adds no JavaScript,
no new tokens, and no new components beyond existing classes; the navigation contract keeps
shared sidebar markup identical across pages. Status: PASS. D4 is resolved; no remaining
constitution blockers.

## Project Structure

### Documentation (this feature)

```text
specs/001-icstars-growth-portfolio/
├── spec.md              # Feature specification (approved)
├── plan.md              # This file
├── research.md          # Phase 0: decisions and rationale
├── data-model.md        # Phase 1: content entities and status rules
├── quickstart.md        # Phase 1: validation guide
├── contracts/
│   ├── navigation.md        # Sidebar markup and ordering
│   ├── growth-page.md       # Structure of the five section pages
│   ├── homepage.md          # Identity items and program index
│   └── case-study.md        # Structure of the software case study page
├── checklists/
│   └── requirements.md  # Spec quality checklist
└── tasks.md             # Phase 2 output (/speckit-tasks — not created here)
```

### Source Code (repository root)

```text
Portfolio/
├── index.html              # EDIT: program index section, resume + LinkedIn, sidebar
├── leadership.html         # NEW  FIG. 06 / LEADERSHIP_006
├── business.html           # NEW  FIG. 07 / BUSINESS_007
├── technology.html         # NEW  FIG. 08 / TECHNOLOGY_008
├── career-planning.html    # NEW  FIG. 09 / CAREER_009
├── wellness.html           # NEW  FIG. 10 / WELLNESS_010
├── project-title.html      # EDIT: becomes the software case study (filename kept, R5)
├── touchdesigner.html      # EDIT: sidebar markup only
├── photography.html        # EDIT: sidebar markup only (gallery untouched unless D5)
├── Aliases.html            # EDIT: sidebar markup only
├── style.css               # No change expected; if changed, bump ?v= on every page
├── script.js               # No change
├── README.md               # EDIT: Features and Project Structure
├── documents/              # NEW: resume PDF (D4 approved; folder and file not yet added)
├── images/
│   └── program/            # NEW: evidence images supplied by Jordan
├── videos/
├── photography_Architecture/
└── photography_urban/
```

**Structure Decision**: Keep the flat, top-level page layout the constitution prescribes. Add
one page per rubric section, named in lowercase like `touchdesigner.html`. Evidence images go
in `images/program/` (inside the existing `images/` folder, so no new top-level media folder).
The resume goes in a new `documents/` folder, pending amendment D4.

## Delivery Phases

Work happens on the `001-icstars-growth-portfolio` branch (R6). A page is merged to `main`
only after it passes the content gate in quickstart.md. Branch creation and every commit or
merge require Jordan's approval at the time.

| Phase | Work | Target | Publishes to live site? |
|---|---|---|---|
| A | Constitution amendment D4 (separate commit); decide D5, D7 | 2026-10-23 | Constitution only |
| B | Build 5 section pages and case-study skeleton with placeholders; sidebar on all pages | 2026-10-30 | No |
| C | Homepage: resume PDF and LinkedIn once supplied | 2026-11-06 | Yes, if both supplied and approved |
| D | Fill Leadership, Business, Technology with Jordan's content | 2026-11-09 | No (held until navigation is complete) |
| E | Fill Career Planning, Wellness, case study; content freeze | 2026-11-16 | No |
| F | Full quickstart validation; merge PROGRAM navigation and all pages together | 2026-11-20 | **Yes** |

The PROGRAM navigation group is merged only in Phase F, when all five pages pass, so the live
site never links to an incomplete page.

## Remaining Decisions Carried Into Tasks

| # | Decision | Plan default if not answered |
|---|---|---|
| D1 | Option selections per section | Pages built with empty slots; content work cannot start |
| D2 | Case study project | Case-study skeleton only; label stays "PROJECT TITLE" on branch |
| D3 | Does this site count for Technology T1? | **Provisional 2026-10-20**: may serve as Technology evidence, but is not counted toward the verified minimum until the original rubric document confirms eligibility. Treated as not-selected for minimum-counting purposes until then. |
| D4 | Constitution amendment for PDF + `documents/` | **Resolved 2026-10-20**: approved and applied, constitution v1.1.0. The `documents/` folder and resume file itself are still pending (T012, T013). |
| D5 | Fix no-JS photography galleries | Out of scope — still open, Jordan's decision |
| D6 | Branch-based drafting | **Resolved in R6**: branch + per-phase merges, each approved by Jordan |
| D7 | Publication of `CLAUDE.md`, `PROJECT_CONTEXT.md`, `specs/` | **Revised 2026-10-20**: no files are relocated; `.specify/`, `CLAUDE.md`, `PROJECT_CONTEXT.md`, and `specs/` stay in place. All committed files in this repository are public — none of them are a private channel. `.nojekyll` may still be added, but only for deployment/rendering behavior (it stops Jekyll from processing files as Liquid/Markdown), never described as a privacy control. Development docs must be audited for sensitive content before each commit; see "D7 audit" below. |

### D7 audit (2026-10-20)

Reviewed `CLAUDE.md` and `PROJECT_CONTEXT.md` for sensitive content now that both are treated
as fully public once committed. Neither file currently contains personal identifiers (phone,
address) — consistent with existing instructions. One inconsistency found, not yet resolved:

- `PROJECT_CONTEXT.md` §5 marks **Due date**, **Submission format**, and **Stated audience** as
  `Private`, but `CLAUDE.md` → "Assignment criteria" already states all three in plain text
  (Due 11/23/2026; Format: GitHub repo/Pages; Audience: employers, staff, mentors, community
  partners). Neither file has been committed yet, so nothing has actually been exposed — but the
  `Private` label will be inaccurate the moment either file is committed.
- No action taken pending Jordan's decision: either (a) reclassify these three rows as `Public`
  in `PROJECT_CONTEXT.md` to match reality, or (b) remove this detail from `CLAUDE.md` before
  the first commit, accepting the loss of that context for future instruction-following.
- Wellness-related text in `CLAUDE.md` (financial, emotional, mental, physical sub-areas) is
  generic rubric description, not Jordan's personal data, so it is not flagged.
| R5 | Rename `project-title.html` | Filename kept |
| D8 | At 390px width, long hero `h1` words and taglines clip at the right edge (found 2026-10-20; also on existing `touchdesigner.html` — "Designer"). Fix needs a shared `style.css` change to the ≤700px `#hero h1` / `.tagline` rules | Not changed; awaiting Jordan's approval because it alters existing pages |

## Complexity Tracking

No constitution violations require justification. The resume PDF is handled as an amendment
(D4), not a deviation.
