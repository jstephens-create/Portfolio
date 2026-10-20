# Contract: Rubric Section Page

Applies to `leadership.html`, `business.html`, `technology.html`, `career-planning.html`, and
`wellness.html`. Pages follow the same shell as `touchdesigner.html`.

## Page identity

| Page | `<title>` | Eyebrow | Footer code |
|---|---|---|---|
| leadership.html | Jordan Stephens — Leadership | `FIG. 06 / LEADERSHIP` | `LEADERSHIP_006` |
| business.html | Jordan Stephens — Business | `FIG. 07 / BUSINESS` | `BUSINESS_007` |
| technology.html | Jordan Stephens — Technology | `FIG. 08 / TECHNOLOGY` | `TECHNOLOGY_008` |
| career-planning.html | Jordan Stephens — Career Planning | `FIG. 09 / CAREER PLANNING` | `CAREER_009` |
| wellness.html | Jordan Stephens — Wellness | `FIG. 10 / WELLNESS` | `WELLNESS_010` |

## Required structure

```text
html[lang=en]
  head: charset, viewport, <title>, style.css?v=<current>
  a.skip-link → #main-content
  a.logo (HYK Jordan)
  div.dashboard
    aside.sidebar            (navigation contract)
    main#main-content
      section#hero
        .hero-copy: p.eyebrow, h1 (section name), p.tagline  ← tagline text: [NEEDS INPUT] or approved
        p.hero-meta: SECTION 0N / 05, ENTRIES <published count>
      section#entries                        (Wellness: four sections, one per sub-area)
        h2 (section or sub-area name)
        div.work-grid
          article.project   × one per selected option
            span.project-index  "<code> / <SHORT NAME>"   e.g. "L1 / TEAM WEEK"
            h3                  rubric option name
            p …                 Jordan's first-person reflection
            figure (optional)   img[alt][loading=lazy] + figcaption
            links (optional)    descriptive link text, not "click here"
      section#next (optional)
        links to previous/next section page and to index.html#program
  footer: © 2026 Jordan Stephens / <FOOTER CODE>
  script.js?v=<current>
```

## Rules

- Exactly one `h1`; headings never skip levels.
- No inline styles or per-page `<style>`.
- Rubric wording may be paraphrased in headings but not quoted at length (FR-063).
- Placeholders on the working branch use the literal text `[NEEDS INPUT: <what>]` so the marker
  check finds them.
- The page is not linked from `main` until its published count meets the section minimum.
