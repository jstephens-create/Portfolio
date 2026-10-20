# Contract: Sidebar Navigation

The sidebar markup MUST be identical on every page except for `aria-current="page"` on the
current page's link (constitution Principle IV). Existing structure and classes are kept.

## Order

```text
SYSTEM / 2026                (p.nav-label)
ABOUT                        → index.html#about
PROGRAM                      → index.html#program        (.nav-group heading)   NEW
  └ LEADERSHIP               → leadership.html            (.nav-sub)            NEW
  └ BUSINESS                 → business.html              (.nav-sub)            NEW
  └ TECHNOLOGY               → technology.html            (.nav-sub)            NEW
  └ CAREER PLANNING          → career-planning.html       (.nav-sub)            NEW
  └ WELLNESS                 → wellness.html              (.nav-sub)            NEW
PROJECTS                     → index.html#projects        (.nav-group heading)
  └ TOUCHDESIGNER            → touchdesigner.html
  └ [CASE STUDY NAME]        → project-title.html         (label changes per D2)
  └ PHOTOGRAPHY              → photography.html
CONTACT                      → index.html#contact
ALIASES                      → Aliases.html
```

On `index.html`, in-page links use `#about`, `#program`, `#projects`, `#contact` as today.

## Rules

- Labels are uppercase, matching existing items.
- The PROGRAM group is merged to `main` only when all five pages pass the content gate (R6).
- `INDEX_001` toggle, `aria-controls="site-nav"`, `aria-expanded`, and `.sidebar-rail` are
  unchanged.
- Mobile: the menu remains scrollable and closes on Escape and on link activation (existing
  `script.js` behavior; no script change).
- Without JavaScript, every link is visible and usable.
