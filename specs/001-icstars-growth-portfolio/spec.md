# Feature Specification: i.c.stars C60 Digital Portfolio

**Feature Branch**: none (no branch created by Spec Kit)

**Created**: 2026-10-20 | **Revised**: 2026-10-20 (rewritten against the C60 rubric)

**Status**: Approved 2026-10-20 (Jordan ran `/speckit-plan`). Plan: [plan.md](plan.md)

**Canonical path**: `specs/001-icstars-growth-portfolio/spec.md` (the only specification for
this feature; `.specify/feature.json` points here)

**Deadline**: **November 23, 2026**

**Source of truth**: *i.c.stars C60 Digital Portfolio Assignment*, recorded in `CLAUDE.md` →
"Assignment criteria". Where this spec and the rubric differ, the rubric wins.

**Input**: User description: "i.c.stars 14-week professional development portfolio expansion,
due November 23, 2026 ... Rewrite the specification to reflect the rubric minimums ... For each
category, create a selection checklist identifying eligible rubric options, available evidence,
missing reflections, and outstanding requirements."

## Marker Key

None of these markers may appear on the published site at submission.

| Marker | Meaning | Who resolves it |
|---|---|---|
| `[NEEDS INPUT]` | Personal content only Jordan can supply | Jordan |
| `[NEEDS SELECTION]` | Jordan must choose which rubric options to include | Jordan |
| `[NEEDS APPROVAL]` | Content exists but is not yet approved for publication | Jordan |
| `[NEEDS DECISION]` | A project decision still open (see Remaining Decisions) | Jordan |

**Selection rule**: no rubric option is selected, and no deliverable is marked complete,
without Jordan's explicit approval. Every option below starts as **Not selected**.

## Clarifications

### Session 2026-10-20

- **Q1 — How are the five growth areas organized?** → Dedicated, clearly navigable sections
  for each area that integrate with the existing portfolio architecture, with minimal
  disruption to the current site. *(Interpretation recorded in FR-030 to FR-033; whether the
  sections are separate pages or one shared page is left to planning, within those limits.)*
- **Q2 — Resume format?** → A clearly visible resume link to a downloadable PDF. The resume
  file is **Pending** until Jordan supplies it.
- **Q3 — "Project Title" placeholder page?** → Replace it with a genuine software development
  case study based on verified work. No invented results.
- **Rubric** → The C60 Digital Portfolio Assignment was provided and is the source of truth.

## Scope Classification

| Content | Classification | Rubric basis |
|---|---|---|
| Homepage: name, contact info, resume, LinkedIn | **Required** | Portfolio guidelines |
| Homepage: GitHub link | **Required by Jordan** (not a rubric item) | Jordan's instruction |
| Leadership: 5 of 8 options | **Required** | Section 1 |
| Business: 4 of 6 options | **Required** | Section 2 |
| Technology: 5 of 9 options | **Required** | Section 3 |
| Career Planning: 4 of 6 options | **Required** | Section 4 |
| Wellness: 1 option in each of 4 sub-areas | **Required** | Section 5 |
| Section headings, first person, specific reflection, tested links | **Required** | Portfolio guidelines |
| Bonus items in any section | **Optional** | Marked *Bonus* in rubric |
| Software case study (replaces "Project Title") | **Required by Jordan** (Q3); may also serve as Technology evidence | Jordan's instruction |
| TouchDesigner, Photography, Aliases | **Optional creative** — preserve unchanged | — |
| Industrial design system, sidebar identity, animations | **Preserved system** | Constitution |

---

## User Scenarios & Testing *(mandatory)*

Actors (from the rubric's stated audience):

- **Evaluator** — i.c.stars staff checking the portfolio against the rubric.
- **Professional visitor** — employers, mentors, and community partners.
- **Jordan** — the author, who selects options, writes all content, and approves publication.

### User Story 1 — Visitor confirms professional identity on the homepage (Priority: P1)

A visitor opens the homepage and, without leaving it, finds Jordan's name, contact
information, resume, LinkedIn, and GitHub.

**Why this priority**: It is an explicit rubric guideline and the entry point for every other
section. Most items already exist.

**Independent Test**: Load the homepage at desktop and mobile widths; activate each identity
item.

**Acceptance Scenarios**:

1. **Given** the homepage, **When** it loads, **Then** Jordan's name is visible on the first
   screen.
2. **Given** the homepage, **When** the visitor looks for contact info, **Then** an approved
   contact method is visible and usable.
3. **Given** the homepage, **When** the visitor activates the clearly labelled resume link,
   **Then** a PDF resume downloads or opens.
4. **Given** the homepage, **When** the visitor activates the LinkedIn and GitHub links,
   **Then** each opens Jordan's correct profile.

---

### User Story 2 — Evaluator verifies each rubric section meets its minimum (Priority: P1)

The evaluator moves through Leadership, Business, Technology, Career Planning, and Wellness,
and in each finds at least the required number of rubric deliverables, each under a clear
heading, written in first person, specific, and linked to work where work exists.

**Why this priority**: This is the graded core of the assignment.

**Independent Test**: For each section, count the deliverables present against the rubric
minimum, and check each against the deliverable quality rules (FR-020 to FR-025).

**Acceptance Scenarios**:

1. **Given** any section, **When** the evaluator counts its deliverables, **Then** the count
   meets or exceeds the rubric minimum (5 / 4 / 5 / 4 / 1 per Wellness sub-area).
2. **Given** any deliverable, **When** the evaluator reads its heading, **Then** they can tell
   which rubric option it answers.
3. **Given** any deliverable, **When** the evaluator reads it, **Then** it is in first person
   and names at least one specific event, artifact, decision, or result rather than a
   generalization.
4. **Given** any deliverable that references work, **When** its link is activated, **Then** it
   resolves.

---

### User Story 3 — Jordan selects options and supplies content (Priority: P1)

Jordan uses the selection checklists in this spec to choose which rubric options to include,
sees what evidence already exists and what is missing, supplies reflections and artifacts,
and approves each item before it is published.

**Why this priority**: Nothing in the five sections can be built with real content until
Jordan chooses options and supplies material; the deadline depends on it.

**Independent Test**: Every checklist row has a selection status set by Jordan, and every
published deliverable traces to Jordan's content and approval.

**Acceptance Scenarios**:

1. **Given** a rubric option, **When** Jordan has not selected it, **Then** it is not shown on
   the site and is not counted toward the minimum.
2. **Given** a selected option without Jordan's content, **When** it appears in a draft,
   **Then** it shows `[NEEDS INPUT]`, never generated text.
3. **Given** evidence found in the repository, **When** it is listed as available, **Then** it
   is not used until Jordan selects the option and approves it.

---

### User Story 4 — Visitor reads a genuine software case study (Priority: P2)

A visitor opens the software development project page and finds a real project Jordan worked
on: the problem, the approach, Jordan's own role, what was built, and links to the work.

**Why this priority**: Jordan chose to replace the placeholder (Q3). It also strengthens the
Technology section but is not itself a rubric minimum.

**Independent Test**: Open the case study page; every statement traces to a verifiable source
(repository, document, or Jordan's own account) and no placeholder text remains.

**Acceptance Scenarios**:

1. **Given** the case study page, **When** it is read, **Then** it states the problem, approach,
   Jordan's personal contribution, and links to the work.
2. **Given** any result or outcome on the page, **When** it is checked, **Then** it is supported
   by evidence Jordan supplied; otherwise it is omitted.

---

### User Story 5 — Existing creative work and identity are preserved (Priority: P2)

A returning visitor finds the photography archive, TouchDesigner work, Aliases page, sidebar
identity, industrial design, and animations working as before.

**Why this priority**: A firm constraint, satisfied by not breaking existing work.

**Independent Test**: Compare each existing page before and after: media, galleries, labels,
animations, and reduced-motion behavior are unchanged.

**Acceptance Scenarios**:

1. **Given** the photography page, **Then** all 33 photographs (24 Street, 9 Architecture)
   remain viewable with the same controls.
2. **Given** the TouchDesigner page, **Then** both video studies play as before with controls.
3. **Given** any page, **Then** the yellow sidebar, `INDEX_001` toggle, `SYSTEM / 2026` label,
   logo, footer code, and moving sidebar stripe are present, and reduced-motion suppression
   still works.
4. **Given** the new sections, **Then** they use the same typography, colors, labels, and grid.

---

### Edge Cases

- **Live site during development**: `main` deploys immediately. Unselected, unapproved, or
  placeholder content must not reach the live site (FR-041).
- **Fewer options than the minimum**: If Jordan cannot supply enough options for a section by
  the content freeze, this is reported to Jordan immediately; the gap is never filled with
  generated content.
- **More options than the minimum**: Jordan may include more; extras are allowed but not
  required.
- **Multi-part options**: Some options list sub-questions (e.g. Business option 1 asks for the
  problem, the team's approach, and Jordan's role). A selected option counts only when every
  listed sub-point is addressed.
- **Sensitive wellness content**: Medical notes, finances, credit, mood, and therapy are
  sensitive. Jordan chooses the option and the depth; Jordan may describe a practice without
  disclosing private details.
- **Other people and organizations**: Mentors, cohort members, clients, and employer partners
  (e.g. Accenture, Salesforce, Capital One) may appear in deliverables. Names, quotes, and
  client material are published only with Jordan's approval and, where needed, the other
  party's permission.
- **Confidential client work**: If the Client Project or case study involves confidential
  material, Jordan decides whether to show, summarize, or omit it.
- **Resume privacy**: The published PDF contains only contact details Jordan approves.
- **Broken external links**: All links are re-tested at final review (rubric: "test all your
  links").
- **No JavaScript**: Every required item must be reachable with scripts blocked.

## Requirements *(mandatory)*

### Functional Requirements

#### Homepage

- **FR-001**: The homepage MUST show Jordan's full name on the first screen. *(Exists.)*
- **FR-002**: The homepage MUST show at least one contact method Jordan has approved for
  publication. *(Email exists; Jordan to confirm.)*
- **FR-003**: The homepage MUST show a clearly visible, clearly labelled resume link to a
  downloadable PDF. Resume file: **[NEEDS INPUT]** — Pending until supplied.
- **FR-004**: The published resume MUST contain only contact details Jordan approves.
- **FR-005**: The homepage MUST link to Jordan's LinkedIn profile. URL: **[NEEDS INPUT]**.
- **FR-006**: The homepage MUST link to Jordan's GitHub profile. *(Exists; Jordan's addition.)*
- **FR-007**: The homepage MUST provide a path to all five rubric sections.

#### Rubric Sections — Minimums

- **FR-010**: Leadership MUST contain at least **5** deliverables, each answering a different
  Leadership rubric option (8 eligible).
- **FR-011**: Business MUST contain at least **4** deliverables, each answering a different
  Business rubric option (6 eligible).
- **FR-012**: Technology MUST contain at least **5** deliverables, each answering a different
  Technology rubric option (9 eligible).
- **FR-013**: Career Planning MUST contain at least **4** deliverables, each answering a
  different Career Planning rubric option (6 eligible).
- **FR-014**: Wellness MUST contain at least **1** deliverable in **each** of its four
  sub-areas: Financial, Emotional, Mental, Physical (4 eligible options each).
- **FR-015**: Bonus items MAY be included in any section and MUST NOT count toward a minimum.
- **FR-016**: Only options Jordan has selected MAY be shown or counted.

#### Rubric Sections — Deliverable Quality (applies to every deliverable)

- **FR-020**: Each deliverable MUST have a section heading that identifies the rubric option
  it answers.
- **FR-021**: Each deliverable MUST be written in first person by Jordan.
- **FR-022**: Each deliverable MUST be specific: it names at least one concrete event,
  artifact, decision, person's role, or result, and avoids generalizations such as "I learned
  a lot".
- **FR-023**: Each deliverable MUST address every sub-point listed under its rubric option.
- **FR-024**: Each deliverable that refers to work (repos, docs, visuals) MUST link to it, and
  every link MUST resolve.
- **FR-025**: Each image, slide, or scanned artifact MUST have a caption and a text
  description written or approved by Jordan.
- **FR-026**: No reflection, result, metric, quote, recognition, or evidence MAY be written on
  Jordan's behalf.

#### Navigation and Structure (Q1)

- **FR-030**: Each of the five sections MUST be a dedicated, clearly headed section that a
  visitor can reach directly from the primary navigation in one activation.
- **FR-031**: The five sections MUST be added using the existing sidebar pattern (a labelled
  group with sub-items, as PROJECTS uses today). No existing navigation item may be removed
  or renamed. *Exception*: the "PROJECT TITLE" label changes when the case study replaces it
  (FR-034).
- **FR-032**: Navigation MUST visually distinguish required program content from optional
  creative work, using only the existing visual system.
- **FR-033**: New sections MUST follow existing conventions: `FIG. NN /` eyebrows, uppercase
  navigation labels, and `NAME_NNN` footer codes on any new page.
- **FR-034**: The "Project Title" page MUST be replaced by a software development case study
  (see FR-050 to FR-054). Its navigation label and project card change to the project's real
  name. Project name: **[NEEDS INPUT]**.
- **FR-035**: Every existing page MUST remain reachable from the navigation.

#### Preservation

- **FR-040**: Existing pages, media, galleries, and controls MUST behave as before: 2
  TouchDesigner videos, 24 Street and 9 Architecture photographs, the Aliases page, and the
  sidebar. *Known existing issue*: without JavaScript, each photography collection shows only
  its first photo (conflicts with constitution Principle III). Out of scope unless Jordan
  approves — see Remaining Decisions.
- **FR-041**: Unselected, unapproved, or placeholder content MUST NOT be published to the live
  site.
- **FR-042**: The sidebar stripe animation, video autoplay loops, and their reduced-motion
  behavior MUST be preserved and MUST apply on any new page.
- **FR-043**: New content MUST use only the existing visual system.
- **FR-044**: New content MUST meet WCAG 2.1 AA, including keyboard access and use without
  JavaScript.

#### Software Case Study (Q3)

- **FR-050**: The case study MUST describe a real software project Jordan worked on, selected
  by Jordan. Project: **[NEEDS SELECTION]**. *Candidates Jordan may consider (not selected):*
  the program's responsive web application (Technology option 1), the Client Project (Business
  option 1), or this portfolio site (verifiable from its repository history).
- **FR-051**: The case study MUST state the problem the project addresses, the approach, and
  Jordan's personal contribution. Content: **[NEEDS INPUT]**.
- **FR-052**: The case study MUST link to verifiable work (repository, demo, or documents)
  where it can be published. Links: **[NEEDS INPUT]**.
- **FR-053**: Results or outcomes MUST appear only when backed by evidence Jordan supplies;
  otherwise they are omitted, not estimated.
- **FR-054**: If the selected project also answers a Technology option, the Technology section
  MAY reference the case study for that option, counted once.

#### Privacy and Content Integrity

- **FR-060**: Only items marked **Public: Yes** in `PROJECT_CONTEXT.md` MAY appear on the site.
- **FR-061**: All Wellness content MUST stay **Pending** until Jordan explicitly approves it.
- **FR-062**: Names, quotes, or material from other people or organizations MUST be approved by
  Jordan before publication.
- **FR-063**: Rubric text, evaluator names, and the due date MUST NOT appear on the site unless
  Jordan approves.

### Key Entities

- **Rubric Section**: Leadership, Business, Technology, Career Planning, or Wellness. Has a
  minimum count and a set of eligible options. Wellness has four sub-areas, each with its own
  minimum of 1.
- **Rubric Option**: One eligible item within a section. Has its rubric wording, any listed
  sub-points, a selection status (set only by Jordan), and a completion status.
- **Deliverable**: Jordan's answer to one selected option. Has a heading, first-person
  reflection, optional artifacts, links, and an approval status.
- **Artifact**: Evidence attached to a deliverable (document, image, slide, repo, video). Has a
  caption, a text description, and an approval status.
- **Identity Item**: Name, contact, resume (PDF), LinkedIn, GitHub. Each has a value and a
  public-approval status.
- **Case Study**: The software project replacing "Project Title". Has a project name, problem,
  approach, Jordan's contribution, links, and evidence-backed outcomes only.
- **Creative Work**: TouchDesigner, Photography, Aliases. Preserved; not graded.

## Selection Checklists

How to read these tables:

- **Selected** — set only by Jordan. Every row starts as ☐ *Not selected*.
- **Available evidence** — only what is verifiable in this repository today. "None in repo"
  means Jordan must supply it.
- **Reflection** — Jordan's first-person writing for that option.
- **Outstanding** — what remains before the option can count.

### 1. Leadership — minimum 5 of 8 · Selected: 0 / 5

| # | Rubric option | Selected | Available evidence | Reflection | Outstanding |
|---|---|---|---|---|---|
| L1 | Team Week experience and role on the team | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| L2 | Gifts Project deliverables or insights | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection, artifacts |
| L3 | Community Role contributions; leadership in service | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| L4 | Giving & Receiving Feedback or Planetary Responsibility workshop highlights | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| L5 | Serving as Tea Host; preparing for and engaging Tea Guests | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| L6 | Key lessons from Tea Debriefs or cohort discussions | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| L7 | Dream Speech highlights; recognition as business, service, or civic leader | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection; recognition only if it happened |
| L8 | CIVICs Project: what was learned; plan for immediate use after the internship | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection (both sub-points) |

*Bonus (optional)*: visuals, quotes, slides, scanned artifacts — [NEEDS INPUT].

### 2. Business — minimum 4 of 6 · Selected: 0 / 4

| # | Rubric option | Selected | Available evidence | Reflection | Outstanding |
|---|---|---|---|---|---|
| B1 | Client Project: business problem; team approach; Jordan's role and contribution | ☐ | None in repo | [NEEDS INPUT] | Selection, all 3 sub-points, client approval for any material |
| B2 | Forming and working in the Consulting Company | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| B3 | Proposal presentation in response to the RFP: artifacts and takeaways | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection, artifacts |
| B4 | Company Engagement Days insights (e.g. Accenture, Salesforce) | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| B5 | Working with mentors, clients, guest consultants: receiving feedback; adapting the team's approach; lessons on professionalism and communication | ☐ | None in repo | [NEEDS INPUT] | Selection, all 3 sub-points |
| B6 | Highlights from Allskates, Tea Guests, or external guest feedback | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |

*Bonus (optional)*: proposal slides, decks, documentation, mentor quotes — [NEEDS INPUT].

### 3. Technology — minimum 5 of 9 · Selected: 0 / 5

| # | Rubric option | Selected | Available evidence | Reflection | Outstanding |
|---|---|---|---|---|---|
| T1 | Responsive web application walkthrough: problem it solves; part Jordan built | ☐ | None in repo for the program application. *[NEEDS DECISION]* whether this portfolio site qualifies as "built using tech stack" | [NEEDS INPUT] | Selection, project identity, both sub-points, links |
| T2 | Geek Week: SQL, Excel, hot keys; timed testing and growth; data analysis and coaching insights | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection; results only if Jordan supplies them |
| T3 | When coding "clicked," or a struggle overcome | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| T4 | Growth in debugging, testing, asking good technical questions | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| T5 | Collaboration through GitHub, branching, version control | ☐ | **Available**: this repository — 15 commits (2026-09-15 to 2026-10-15), branches `build-portfolio` and `projects-photography-video` pushed to GitHub, GitHub Pages deployment | [NEEDS INPUT] | Selection, reflection; collaboration aspect needs Jordan's account |
| T6 | Cloud tools: Office 365, Google Drive, versioned workflows | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| T7 | Business tools: Trello, Teams, Zoom, Outlook, Windows Explorer | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| T8 | Typing speed growth — 40+ WPM? | ☐ | None in repo | [NEEDS INPUT] | Selection, Jordan's actual results |
| T9 | 5 Hour Minimums | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |

*Bonus (optional)*: GitHub repo links (**available**: github.com/jstephens-create/Portfolio),
code snippets, wireframes, demo videos — Jordan to approve.

Technology status: **evidence available for 1 option (T5); 0 options selected; 0 complete.**

### 4. Career Planning — minimum 4 of 6 · Selected: 0 / 4

| # | Rubric option | Selected | Available evidence | Reflection | Outstanding |
|---|---|---|---|---|---|
| C1 | Career plans after i.c.stars: tech roles; leadership or entrepreneurial goals; business/consulting aspirations | ☐ | None in repo | [NEEDS INPUT] | Selection, all 3 sub-points |
| C2 | Work with the Career Development Director and Program Manager | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| C3 | Insights from employer-partner workshops (Accenture, Capital One, Salesforce, others) | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| C4 | Resume feedback or job-search preparation | ☐ | Resume itself pending (FR-003) | [NEEDS INPUT] | Selection, reflection |
| C5 | Personal professional brand or values | ☐ | Site headline "Emerging Developer / Creative Technologist" exists, but is not a reflection | [NEEDS INPUT] | Selection, reflection |
| C6 | Roles of most interest and why they align with interests, skills, and purpose | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection (roles and reasons) |

*Bonus (optional)*: mission statement, career goals timeline, updated resume link —
[NEEDS INPUT].

### 5. Wellness — minimum 1 per sub-area · Sub-areas covered: 0 / 4

All Wellness content is **Pending** until Jordan explicitly approves it (FR-061).

**Financial** — Selected: 0 / 1

| # | Rubric option | Selected | Available evidence | Reflection | Outstanding |
|---|---|---|---|---|---|
| WF1 | Reflection on spending patterns and lessons | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| WF2 | Short- and long-term financial goals | ☐ | None in repo | [NEEDS INPUT] | Selection, list |
| WF3 | Notes from financial workshops | ☐ | None in repo | [NEEDS INPUT] | Selection, notes |
| WF4 | Techniques to increase a credit score | ☐ | None in repo | [NEEDS INPUT] | Selection, list |

*Bonus*: mock post-program financial plan; vision board; "The Money Story I Want to Tell";
financial dos and don'ts for one's past self.

**Emotional** — Selected: 0 / 1

| # | Rubric option | Selected | Available evidence | Reflection | Outstanding |
|---|---|---|---|---|---|
| WE1 | Journal entry about an emotionally challenging moment | ☐ | None in repo | [NEEDS INPUT] | Selection, entry |
| WE2 | Challenging negative self-talk or imposter syndrome | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| WE3 | Daily or weekly mood tracker | ☐ | None in repo | [NEEDS INPUT] | Selection, tracker |
| WE4 | Affirmations or self-talk upgrades | ☐ | None in repo | [NEEDS INPUT] | Selection, list |

*Bonus*: video or audio clip; letter to younger self; emotional check-in tool; art, music, or
poetry.

**Mental** — Selected: 0 / 1

| # | Rubric option | Selected | Available evidence | Reflection | Outstanding |
|---|---|---|---|---|---|
| WM1 | Coping strategies that work | ☐ | None in repo | [NEEDS INPUT] | Selection, list |
| WM2 | Handling stress or burnout | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| WM3 | Weekly focus journal or mental health self-check | ☐ | None in repo | [NEEDS INPUT] | Selection, journal |
| WM4 | Mental wellness toolbox graphic or list | ☐ | None in repo | [NEEDS INPUT] | Selection, graphic or list |

*Bonus*: stress-management routine; before/now tough-day comparison; focus playlist; "How I
Kept My Mind Right During Geek Week".

**Physical** — Selected: 0 / 1

| # | Rubric option | Selected | Available evidence | Reflection | Outstanding |
|---|---|---|---|---|---|
| WP1 | Habit tracker (hydration, sleep, steps) | ☐ | None in repo | [NEEDS INPUT] | Selection, tracker |
| WP2 | Notes from wellness or medical appointments | ☐ | None in repo | [NEEDS INPUT] | Selection, notes — highly sensitive |
| WP3 | A physical routine improved or started | ☐ | None in repo | [NEEDS INPUT] | Selection, reflection |
| WP4 | Local resources used or planned (clinic, gym, therapist) | ☐ | None in repo | [NEEDS INPUT] | Selection, list |

*Bonus*: before-and-after reflections; food, sleep, or movement journal; health SMART goals;
"I Am My Own Health Advocate".

### Homepage and Case Study

| Item | Status | Outstanding |
|---|---|---|
| Name | Present | — |
| Contact info | Present (email) | Jordan to confirm |
| Resume (PDF) | **Pending** | Public-safe PDF from Jordan |
| LinkedIn | **Missing** | URL from Jordan |
| GitHub | Present | — |
| Case study project | **Not selected** | Project choice, content, links from Jordan |

## Proposed Milestones

| Date | Milestone |
|---|---|
| 2026-10-23 | Spec approved; Jordan's option selections for all five sections |
| 2026-10-30 | Plan and tasks approved; structure built locally (not published) |
| 2026-11-06 | Resume PDF, LinkedIn URL, case study project chosen |
| 2026-11-09 | Leadership, Business, and Technology content supplied |
| 2026-11-16 | **Content freeze**: Career Planning and Wellness supplied; all content approved |
| 2026-11-20 | Final review complete (SC-001 to SC-010); published to live site |
| 2026-11-23 | **Submission deadline** |

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: By November 23, 2026, the homepage shows name, contact info, a working resume
  PDF link, LinkedIn, and GitHub — 5 of 5 items working.
- **SC-002**: Leadership shows ≥ 5 deliverables, each answering a different selected option.
- **SC-003**: Business shows ≥ 4 deliverables, each answering a different selected option.
- **SC-004**: Technology shows ≥ 5 deliverables, each answering a different selected option.
- **SC-005**: Career Planning shows ≥ 4 deliverables, each answering a different selected
  option.
- **SC-006**: Wellness shows ≥ 1 deliverable in each of 4 sub-areas (4 of 4 covered).
- **SC-007**: 100% of deliverables have a heading naming their rubric option, are in first
  person, address every listed sub-point, and contain at least one specific detail — checked
  by Jordan before publication.
- **SC-008**: 100% of links resolve at final review (0 broken links, files, or profiles).
- **SC-009**: 0 placeholder markers (`[NEEDS INPUT]`, `[NEEDS SELECTION]`, `[NEEDS APPROVAL]`,
  `[NEEDS DECISION]`) or placeholder text on the live site at submission.
- **SC-010**: Each of the five sections is reachable from the navigation in 1 activation, from
  any page.
- **SC-011**: The case study page contains 0 placeholder statements and 0 unsupported results.
- **SC-012**: 100% of pre-existing creative content still works: 33 photographs, 2 videos, the
  Aliases page, the sidebar animation, and reduced-motion behavior.
- **SC-013**: Every page passes a keyboard-only walkthrough and a check at desktop, tablet, and
  mobile widths with no overlapping content or sideways scrolling.
- **SC-014**: 100% of personal statements on the site trace to content Jordan wrote or
  approved.

## Remaining Decisions

| # | Decision | Why it matters | Status |
|---|---|---|---|
| D1 | Option selections in all five sections | Nothing can be built with content until chosen | [NEEDS SELECTION] |
| D2 | Case study project (FR-050) | Determines page content and possibly Technology T1/T5 | [NEEDS SELECTION] |
| D3 | Does this portfolio site qualify for Technology T1 ("responsive web application built using tech stack")? | The rubric may mean the program's own application | [NEEDS DECISION] — Jordan to confirm with i.c.stars staff if unsure |
| D4 | PDF resume vs. constitution Principle V, which lists only image and video formats | A PDF needs a constitution amendment (PATCH or MINOR) before it is committed | [NEEDS DECISION] — approve amendment |
| D5 | Photography galleries without JavaScript (FR-040) | Existing conflict with constitution Principle III | [NEEDS DECISION] — fix in this feature or later |
| D6 | Where drafts live before publication (FR-041) | `main` deploys immediately | Resolve in planning; Jordan approves |
| D7 | Whether `CLAUDE.md`, `PROJECT_CONTEXT.md`, and `specs/` are published | GitHub Pages serves every file in the repo | [NEEDS DECISION] |

## Assumptions

- The C60 rubric recorded in `CLAUDE.md` is complete and current.
- The rubric does not specify scoring weights, reflection length, page structure, or resume
  format; these are Jordan's choices within the rubric's guidelines.
- "Dedicated sections ... minimal disruption" (Q1) means each area gets its own clearly headed
  section reachable from the existing sidebar pattern, without removing or renaming existing
  navigation. Separate pages versus one shared page is decided in planning.
- The evaluator reviews the live site and/or the GitHub repository, as the rubric's format
  ("Live GitHub Repo") allows.
- Jordan writes all content; formatting, spelling, and grammar edits are made only with
  Jordan's approval.
- Optional creative content is not expanded before required content is complete.
- No visitor accounts, forms, analytics, or tracking are needed.
