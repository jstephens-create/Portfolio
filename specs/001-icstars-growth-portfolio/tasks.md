---

description: "Task list for the i.c.stars C60 Digital Portfolio"
---

# Tasks: i.c.stars C60 Digital Portfolio

**Input**: Design documents from `specs/001-icstars-growth-portfolio/`

**Prerequisites**: plan.md, spec.md, research.md, data-model.md, contracts/, quickstart.md

**Tests**: No automated tests were requested. Verification uses the manual and shell checks in
`quickstart.md`, run as explicit tasks.

**Organization**: Tasks are grouped by user story. Story labels match `spec.md`:
US1 Homepage identity · US2 Rubric sections meet minimums · US3 Jordan selects and supplies
content · US4 Software case study · US5 Preservation.

## Format: `[ID] [P?] [Story] Description`

- **[P]**: Can run in parallel (different files, no dependency on unfinished tasks)
- **[Story]**: Which user story the task belongs to
- **JORDAN:** The task is Jordan's to do or approve. Claude must not complete it, guess its
  answer, or mark it done on Jordan's behalf.

## Standing rules for every task

1. Never write reflections, results, quotes, or evidence for Jordan. Missing content is the
   literal text `[NEEDS INPUT: <what>]`.
2. Use only existing classes and tokens from `style.css`; no inline styles or `<style>` blocks.
3. Ask Jordan before every commit, push, and merge. `main` deploys to the live site.
4. Do not push Wellness content or any unapproved personal content to GitHub, even on the
   working branch, until Jordan approves it (the repository is public).
5. Paths are relative to the repository root.

---

## Phase 1: Setup

**Purpose**: Working branch and decisions that unblock later work

- [X] T001 With Jordan's approval, create the local branch `001-icstars-growth-portfolio` from `main` in the repository root (`git switch -c 001-icstars-growth-portfolio`); do not push without approval
- [X] T002 JORDAN: Approve or decline constitution amendment D4 (allow PDF in Principle V and add `documents/` to Technical Constraints → File layout) — **approved 2026-10-20**; `.specify/memory/constitution.md` amended to version 1.1.0 with a Sync Impact Report. Not yet committed — commit requires Jordan's separate explicit approval (standing rule).
- [ ] T003 JORDAN: Answer D3, D5, D7 — **D3 answered (provisional)** and **D7 answered (revised)** 2026-10-20, recorded in plan.md's "Remaining Decisions Carried Into Tasks" table; **D5 (fix no-JS photography galleries now?) still open**

---

## Phase 2: Foundational (Blocking Prerequisites)

**Purpose**: Tracking structure and page shells that every story depends on

**⚠️ CRITICAL**: Complete before story work.

- [X] T004 Add a "## 10. Rubric selection tracker" section to `PROJECT_CONTEXT.md` with one table per rubric section (Leadership L1–L8, Business B1–B6, Technology T1–T9, Career Planning C1–C6, Wellness WF1–WF4, WE1–WE4, WM1–WM4, WP1–WP4), columns `Code | Option | Selection | Deliverable status | Public`, every Selection set to `not-selected`, every Deliverable status set to `not-selected`, every Public set to `Pending`; state above the tables the data-model rule "Only `published` deliverables count toward a section minimum. A deliverable cannot reach `approved` while it contains any `[NEEDS …]` marker." and the state sequence `not-selected → selected/needs-input → drafted → approved → published`
- [X] T005 [P] Create `leadership.html` by copying the shell of `touchdesigner.html` and applying `specs/001-icstars-growth-portfolio/contracts/growth-page.md`: `<title>Jordan Stephens — Leadership</title>`, eyebrow `FIG. 06 / LEADERSHIP`, `h1` "Leadership", tagline `[NEEDS INPUT: Leadership tagline]`, hero-meta `SECTION 01 / 05` and `ENTRIES 00`, an empty `section#entries` with `h2` "Leadership" and an empty `div.work-grid`, footer `© 2026 Jordan Stephens / LEADERSHIP_006`, same `style.css?v=` and `script.js?v=` values as the other pages, and the sidebar from `contracts/navigation.md` with `aria-current="page"` on LEADERSHIP
- [X] T006 [P] Create `business.html` the same way as T005: title "Jordan Stephens — Business", eyebrow `FIG. 07 / BUSINESS`, `SECTION 02 / 05`, footer `BUSINESS_007`, `aria-current` on BUSINESS
- [X] T007 [P] Create `technology.html` the same way as T005: title "Jordan Stephens — Technology", eyebrow `FIG. 08 / TECHNOLOGY`, `SECTION 03 / 05`, footer `TECHNOLOGY_008`, `aria-current` on TECHNOLOGY
- [X] T008 [P] Create `career-planning.html` the same way as T005: title "Jordan Stephens — Career Planning", eyebrow `FIG. 09 / CAREER PLANNING`, `SECTION 04 / 05`, footer `CAREER_009`, `aria-current` on CAREER PLANNING
- [X] T009 [P] Create `wellness.html` the same way as T005, except replace the single `section#entries` with four sections `section#financial`, `section#emotional`, `section#mental`, `section#physical`, each with an `h2` (Financial, Emotional, Mental, Physical) and an empty `div.work-grid`; title "Jordan Stephens — Wellness", eyebrow `FIG. 10 / WELLNESS`, `SECTION 05 / 05`, footer `WELLNESS_010`, `aria-current` on WELLNESS
- [X] T010 Update the sidebar in `index.html`, `touchdesigner.html`, `photography.html`, `Aliases.html`, and `project-title.html` to the exact markup in `specs/001-icstars-growth-portfolio/contracts/navigation.md` (new PROGRAM `.nav-group` above PROJECTS with five `.nav-sub` links), keeping each page's existing `aria-current`; on `index.html` the PROGRAM heading links to `#program`, elsewhere to `index.html#program`
- [X] T011 Run the local link check from `specs/001-icstars-growth-portfolio/quickstart.md` §3 and confirm no output; open each of the 10 pages and confirm the sidebar is identical apart from `aria-current`

**Checkpoint**: Five empty section pages exist on the branch and every page links to them.

---

## Phase 3: User Story 1 — Homepage identity (Priority: P1) 🎯 MVP

**Goal**: The homepage shows name, contact info, resume PDF, LinkedIn, and GitHub.

**Independent Test**: quickstart.md §6 — from `index.html` alone, each of the 5 items is
visible and opens correctly at desktop and mobile widths.

**Early-release option**: To publish this story before Phase F, do T012–T017 on a separate
short-lived branch created from `main` (so the unfinished PROGRAM navigation is not included),
merge it with Jordan's approval, then merge `main` back into `001-icstars-growth-portfolio`.

- [ ] T012 [US1] JORDAN: Supply a public-safe resume PDF (no home address; phone only if approved), the LinkedIn profile URL, and confirm `jstephens@icstars.org` as the portfolio contact; mark each **Public: Yes** in section 1 of `PROJECT_CONTEXT.md`
- [ ] T013 [US1] After T002 is approved and committed, add the resume PDF Jordan supplied to `documents/` using the filename Jordan approves (default `documents/resume.pdf`); confirm it is under 10 MB
- [ ] T014 [US1] In `index.html` `section#contact` `.meta-panel`, add `div.row` entries `resume` (link to the PDF, visible text includes "PDF") and `linkedin` (link to Jordan's profile) between the `email` and `github` rows, matching existing row markup and `↗` style
- [ ] T015 [US1] In `index.html` `section#hero` `.hero-meta`, add a third entry `RESUME` whose `span` contains a link to the PDF with visible text `PDF ↓`, per `specs/001-icstars-growth-portfolio/contracts/homepage.md`
- [ ] T016 [US1] Update the Resume and LinkedIn rows in section 1 of `PROJECT_CONTEXT.md` with their final values and add a change-log entry
- [ ] T017 [US1] Validate `index.html` with quickstart.md §3, §4 (responsive, keyboard, no-JS), and §6; open the PDF and the LinkedIn link in a browser

**Checkpoint**: SC-001 met; US1 can ship on its own.

---

## Phase 4: User Story 3 — Jordan selects options and supplies content (Priority: P1)

**Goal**: Every section has Jordan's selected options, content, evidence, and approvals.

**Independent Test**: The tracker in `PROJECT_CONTEXT.md` shows ≥ 5 / 4 / 5 / 4 selected
options and ≥ 1 per Wellness sub-area, each with status `drafted` or later.

**Note**: Every task in this phase is Jordan's. Claude may help format or organize what
Jordan provides, but never selects options or writes content.

- [ ] T018 [P] [US3] JORDAN: Select at least 5 Leadership options (L1–L8) and set them to `selected/needs-input` in the tracker in `PROJECT_CONTEXT.md`
- [ ] T019 [P] [US3] JORDAN: Select at least 4 Business options (B1–B6) in the tracker in `PROJECT_CONTEXT.md`
- [ ] T020 [P] [US3] JORDAN: Select at least 5 Technology options (T1–T9) in the tracker in `PROJECT_CONTEXT.md`, applying the D3 answer for T1
- [ ] T021 [P] [US3] JORDAN: Select at least 4 Career Planning options (C1–C6) in the tracker in `PROJECT_CONTEXT.md`
- [ ] T022 [P] [US3] JORDAN: Select at least 1 option in each Wellness sub-area (WF, WE, WM, WP) in the tracker in `PROJECT_CONTEXT.md`
- [ ] T023 [US3] JORDAN: For every selected option, supply first-person content that names at least one specific event, artifact, decision, person's role, or result and answers every sub-point listed for that option in `CLAUDE.md` → "Assignment criteria"; set each to `drafted` in the tracker in `PROJECT_CONTEXT.md` (target: Leadership, Business, Technology by 2026-11-09; Career Planning, Wellness by 2026-11-16)
- [ ] T024 [US3] JORDAN: Supply any evidence files (images, slides, scans) with a caption and a text description for each, and confirm permission for any item showing other people, clients, or partner organizations; Claude converts images to JPEG/PNG/WebP sized for display and saves them in `images/program/`
- [ ] T025 [US3] JORDAN: Review each deliverable after it is placed on its page (Phase 5) and set it to `approved` and **Public: Yes** in the tracker in `PROJECT_CONTEXT.md`; Wellness items need explicit approval per FR-061

**Checkpoint**: Content freeze (2026-11-16) — every section meets its minimum in the tracker.

---

## Phase 5: User Story 2 — Rubric sections meet minimums (Priority: P1)

**Goal**: Each section page shows at least the minimum number of deliverables in the required
format, and the homepage links to all five.

**Independent Test**: quickstart.md §2 — marker check returns nothing; deliverable counts are
≥ 5 / 4 / 5 / 4 and each Wellness sub-area has ≥ 1; each section reachable in 1 activation.

- [X] T026 [US2] Add `section#program` to `index.html` between `#about` and `#projects`, with `h2` "Program" and a `dl.meta.meta-panel` of five rows (`dt` 01–05, `dd` links to `leadership.html`, `business.html`, `technology.html`, `career-planning.html`, `wellness.html` with text "Leadership ↗" etc.), exactly as in `specs/001-icstars-growth-portfolio/contracts/homepage.md`
- [ ] T027 [P] [US2] In `leadership.html` `section#entries .work-grid`, add one `article.project` per Leadership option marked selected in `PROJECT_CONTEXT.md`, ordered by code: `span.project-index` "L<n> / <SHORT NAME>", `h3` naming the rubric option, Jordan's text inserted verbatim as `p` elements (or `[NEEDS INPUT: L<n> reflection]` if not yet supplied), optional `figure` with `img` (`alt`, `loading="lazy"`, source in `images/program/`) and `figcaption`, and descriptive link text; update hero-meta `ENTRIES` to the article count
- [ ] T028 [P] [US2] In `business.html`, add one `article.project` per selected Business option exactly as T027 describes, using codes B1–B6
- [ ] T029 [P] [US2] In `technology.html`, add one `article.project` per selected Technology option exactly as T027 describes, using codes T1–T9; for T5, if selected, link to `https://github.com/jstephens-create/Portfolio`; if the case study (US4) answers a selected option, link to `project-title.html` for that option instead of duplicating it
- [ ] T030 [P] [US2] In `career-planning.html`, add one `article.project` per selected Career Planning option exactly as T027 describes, using codes C1–C6; for C4, link to the resume PDF if it is published
- [ ] T031 [P] [US2] In `wellness.html`, add one `article.project` per selected Wellness option to the matching sub-area section (`#financial` WF, `#emotional` WE, `#mental` WM, `#physical` WP) exactly as T027 describes; keep this file uncommitted or unpushed until T025 approvals are recorded for every Wellness item
- [X] T032 [P] [US2] Add a `section#next` to each of `leadership.html`, `business.html`, `technology.html`, `career-planning.html`, `wellness.html` with links to the previous section page, the next section page, and `index.html#program`, using existing `.meta-panel` row markup
- [ ] T033 [US2] Run the content gate from quickstart.md §2 on all five section pages: marker check returns nothing, deliverable counts meet minimums, and Jordan has approved every deliverable (T025)

**Checkpoint**: SC-002 to SC-007 and SC-010 met on the branch.

---

## Phase 6: User Story 4 — Software case study (Priority: P2)

**Goal**: `project-title.html` presents a real software project Jordan worked on.

**Independent Test**: The case study page has 0 placeholder statements and 0 unsupported
results; every statement traces to Jordan's account or a verifiable link (SC-011).

- [ ] T034 [US4] JORDAN: Select the case study project (D2) and supply its name, the problem, the approach, your personal contribution, and links to the work; state whether it answers a Technology option; record the choice in section 7 of `PROJECT_CONTEXT.md`
- [ ] T035 [US4] Replace the content of `project-title.html` with the structure in `specs/001-icstars-growth-portfolio/contracts/case-study.md` (hero, `#problem`, `#approach`, `#contribution`, `#evidence`, and `#outcomes` only if Jordan supplied evidence-backed outcomes), keeping eyebrow `FIG. 05 / SOFTWARE DEVELOPMENT` and footer `PROJECT_005`; insert Jordan's text verbatim
- [ ] T036 [US4] Update `<title>` in `project-title.html`, the PROJECTS sub-item label "PROJECT TITLE" in the sidebar of all 10 pages, and the third `.project` card (`h3`, `.project-index`, `p`) in `index.html` `section#projects` to the project's real name and summary
- [ ] T037 [US4] JORDAN: Decide whether to rename `project-title.html` (research R5); if approved, rename it and update every link to it in all 10 pages and `README.md`
- [ ] T038 [US4] Run quickstart.md §2 marker check and §3 link check on the case study page; Jordan approves the page

**Checkpoint**: SC-011 met.

---

## Phase 7: User Story 5 — Preservation (Priority: P2)

**Goal**: Existing creative work, identity, and animations are unchanged.

**Independent Test**: quickstart.md §5 and the reduced-motion row in §4.

- [ ] T039 [US5] Verify `photography.html`: all 24 Street and 9 Architecture photos reachable with buttons and arrow keys; gallery script unchanged
- [ ] T040 [P] [US5] Verify `touchdesigner.html`: both videos play with controls, autoplay stops under reduced motion
- [ ] T041 [P] [US5] Verify `Aliases.html` content is unchanged apart from the sidebar, and the sidebar stripe animates on all 10 pages and stops under reduced motion
- [ ] T042 [US5] Only if Jordan approved D5 in T003: in `photography.html`, render every photo in HTML so all 33 are visible without JavaScript, and have the existing gallery script switch to the single-photo viewer only after adding the `is-enhanced` class (constitution Principle III); otherwise skip this task and leave it noted in `plan.md`

**Checkpoint**: SC-012 met.

---

## Phase 8: Polish & Release

**Purpose**: Documentation, final validation, and publication by the deadline

- [ ] T043 [P] Update `README.md`: add the five section pages, program index, resume, and case study to Features; add `leadership.html`, `business.html`, `technology.html`, `career-planning.html`, `wellness.html`, `documents/`, and `images/program/` to Project Structure
- [ ] T044 [P] If `style.css` or `script.js` changed at any point, update the `?v=` value on every page that references it (constitution Principle V)
- [ ] T045 [P] Apply the D7 decision from T003 (no change, a Jekyll `_config.yml` `exclude` list for `CLAUDE.md`, `PROJECT_CONTEXT.md`, `specs/`, or removal from the repository), after confirming it against constitution Principle I
- [ ] T046 Run the full quickstart.md validation (§1–§7) on all 10 pages and record any failures in `specs/001-icstars-growth-portfolio/checklists/requirements.md` Notes
- [ ] T047 JORDAN: Final review of the whole site on the branch and approval to publish (target 2026-11-20)
- [ ] T048 With Jordan's approval, merge `001-icstars-growth-portfolio` into `main` and push; then open the live site at `https://jstephens-create.github.io/Portfolio/` and repeat quickstart.md §3, §6, and an external-link click-through
- [ ] T049 JORDAN: Submit the portfolio per i.c.stars instructions by 2026-11-23

---

## Dependencies & Execution Order

### Phase Dependencies

- **Setup (Phase 1)**: Start immediately. T002 blocks T013 only; T003 blocks T020 (D3), T042 (D5), T045 (D7).
- **Foundational (Phase 2)**: Depends on T001. Blocks Phases 5–7.
- **US1 (Phase 3)**: Depends on T002 (for the PDF) and T012. Independent of the other stories.
- **US3 (Phase 4)**: Depends on T004. Can start immediately after it, in parallel with Phase 2 page shells.
- **US2 (Phase 5)**: T026 and T032 depend on Phase 2 only. T027–T031 depend on the matching US3 selections (T018–T022) and content (T023). T033 depends on T025.
- **US4 (Phase 6)**: Depends on T034. T036 touches all 10 sidebars, so run it after T010.
- **US5 (Phase 7)**: Run after Phases 2, 5, and 6 change shared markup.
- **Polish (Phase 8)**: After all stories. T048 is the only step that publishes the PROGRAM navigation.

### User Story Dependencies

- **US1**: None on other stories.
- **US3**: None on other stories; drives US2 and US4 content.
- **US2**: Needs US3 selections and content to finish; its structure can be built first.
- **US4**: Independent; optionally linked from US2 Technology (T029).
- **US5**: Verification of everything else.

### Within Each Story

- Selection before content, content before placement, placement before Jordan's approval,
  approval before the content gate, content gate before merge.

---

## Parallel Opportunities

- T005–T009: five page shells, different files.
- T018–T022: Jordan's selections per section are independent.
- T027–T032: each section page is a different file.
- T040–T041 and T043–T045.

## Parallel Example: User Story 2

```text
Task: "T027 Add selected Leadership deliverables to leadership.html"
Task: "T028 Add selected Business deliverables to business.html"
Task: "T029 Add selected Technology deliverables to technology.html"
Task: "T030 Add selected Career Planning deliverables to career-planning.html"
Task: "T031 Add selected Wellness deliverables to wellness.html"
```

---

## Implementation Strategy

### MVP First (User Story 1)

1. T001–T003 (Setup), T004 (tracker).
2. US1 (T012–T017) — homepage identity is a rubric guideline and mostly exists already.
3. Validate with quickstart.md §6; optionally release early via the separate-branch route.

### Incremental Delivery

1. Phase 2 page shells and sidebar (by 2026-10-30, branch only).
2. Jordan's selections (by 2026-10-23) and content (2026-11-09 / 2026-11-16) — US3.
3. Place content per section as it arrives — US2.
4. Case study — US4.
5. Preservation checks — US5.
6. Full validation, Jordan's approval, single merge of the PROGRAM navigation (2026-11-20).

### Schedule Risk

The critical path is Jordan's content (T023), not page building. If any section is short of
its minimum on 2026-11-16, report the gap to Jordan that day; do not fill it.

---

## Notes

- [P] tasks touch different files and have no unfinished dependencies.
- JORDAN tasks are never marked complete by Claude.
- Commit after each task or logical group, only with Jordan's approval.
- Stop at any checkpoint to validate a story on its own.
