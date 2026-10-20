# Contract: Homepage Identity and Program Index

Changes to `index.html`. Everything not listed stays as it is.

## Hero (`section#hero`)

- Name in `h1` — unchanged.
- `.hero-meta` gains a third entry: label `RESUME`, value a link with visible text stating the
  format, e.g. `PDF ↓` → `documents/<resume file>`. Added only once the PDF is committed (D4).

## Program index (`section#program`, new — between `#about` and `#projects`)

```text
section#program
  h2 "Program"
  dl.meta.meta-panel
    div.row  dt "01"  dd a → leadership.html       "Leadership ↗"
    div.row  dt "02"  dd a → business.html         "Business ↗"
    div.row  dt "03"  dd a → technology.html       "Technology ↗"
    div.row  dt "04"  dd a → career-planning.html  "Career Planning ↗"
    div.row  dt "05"  dd a → wellness.html         "Wellness ↗"
```

Merged to `main` together with the PROGRAM navigation (Phase F).

## Contact (`section#contact` `.meta-panel`)

| Row | dt | dd |
|---|---|---|
| existing | name | Jordan Stephens |
| existing | role | Emerging Developer / i.c.stars |
| existing | email | approved email link |
| **new** | resume | link, text includes "PDF" |
| **new** | linkedin | profile link — URL [NEEDS INPUT] |
| existing | github | github.com/jstephens-create |

## Selected Work card

The third `.project` card (`project-title.html`) changes its `h3`, index label, and description
to the case study's real name and summary once D2 is decided.
