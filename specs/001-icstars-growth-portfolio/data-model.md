# Data Model: i.c.stars C60 Digital Portfolio

The site has no database. These entities describe the content and its status rules. Content
lives in the HTML pages; **selection and approval status is recorded in `PROJECT_CONTEXT.md`**,
which is the living record. The Selection Checklists in `spec.md` are the baseline.

## Rubric Section

| Field | Values / rule |
|---|---|
| name | Leadership, Business, Technology, Career Planning, Wellness |
| minimum | 5, 4, 5, 4; Wellness: 1 per sub-area |
| options | Rubric Options (8, 6, 9, 6; Wellness 4 × 4) |
| page | `leadership.html`, `business.html`, `technology.html`, `career-planning.html`, `wellness.html` |
| status | `incomplete` until published deliverables ≥ minimum (Wellness: all 4 sub-areas ≥ 1) |

## Wellness Sub-area

| Field | Values / rule |
|---|---|
| name | Financial, Emotional, Mental, Physical |
| minimum | 1 |
| options | 4 each (WF1–4, WE1–4, WM1–4, WP1–4) |

## Rubric Option

| Field | Values / rule |
|---|---|
| code | L1–L8, B1–B6, T1–T9, C1–C6, WF1–WP4 |
| wording | Exactly as in `CLAUDE.md` → "Assignment criteria" |
| sub_points | Listed sub-questions; all must be addressed when selected |
| selection | `not-selected` (default) → `selected` — **set only by Jordan** |
| available_evidence | Verifiable repository evidence, or "none in repo" |

## Deliverable

One per selected option.

| Field | Values / rule |
|---|---|
| option | Exactly one Rubric Option; an option is counted once |
| heading | Names the rubric option (FR-020) |
| reflection | Jordan's first-person text; specific (FR-021, FR-022) |
| artifacts | Zero or more Artifacts |
| links | Each resolves (FR-024) |
| status | see state machine below |

**State machine** (Jordan drives every transition):

```text
not-selected ──Jordan selects──▶ selected/needs-input
selected/needs-input ──Jordan supplies content──▶ drafted
drafted ──Jordan reviews──▶ approved      (or back to drafted with edits)
approved ──passes content gate + merged──▶ published
```

Only `published` deliverables count toward a section minimum. A deliverable cannot reach
`approved` while it contains any `[NEEDS …]` marker.

## Artifact

| Field | Values / rule |
|---|---|
| type | image, slide, scanned document, repository link, document link, video |
| file | Web format; in `images/program/` (images) or linked externally |
| caption | Written or approved by Jordan (FR-025) |
| alt_text | Required for images |
| involves_others | If yes, needs Jordan's approval and, where needed, the other party's permission (FR-062) |
| approval | Pending (default) → Yes |

## Identity Item

| Item | Current | Required state |
|---|---|---|
| Name | Present | Present |
| Contact | Email present | Jordan confirms |
| Resume | Pending | Public-safe PDF in `documents/` (after D4) |
| LinkedIn | Missing | URL supplied and approved |
| GitHub | Present | Present |

## Case Study

| Field | Values / rule |
|---|---|
| project | Selected by Jordan (D2) |
| name | Real project name; replaces "Project Title" label and card |
| problem, approach, contribution | Jordan's account (FR-051) |
| links | Verifiable work (FR-052) |
| outcomes | Only evidence-backed; otherwise omitted (FR-053) |
| technology_option | Optional link to one Technology option, counted once (FR-054) |

## Validation Rules (summary)

1. Section published only when its published deliverable count ≥ minimum.
2. No published page contains `[NEEDS INPUT]`, `[NEEDS SELECTION]`, `[NEEDS APPROVAL]`, or
   `[NEEDS DECISION]`.
3. All Wellness content stays Pending until Jordan's explicit approval.
4. Only items with **Public: Yes** in `PROJECT_CONTEXT.md` appear on the site.
