#import "@preview/sicons:16.0.0": *
#import "common-styles.typ": *

#metadata("Premade icons for contacts")
#let contacts_icons = (
  telegram: box(sicon(
    slug: "telegram",
    size: 1em,
    icon-color: "default",
  )),
  maildotru: box(sicon(
    slug: "maildotru",
    size: 1em,
    icon-color: "default",
  )),
  github: box(sicon(
    slug: "github",
    size: 1em,
    icon-color: "default",
  )),
  codeforces: box(sicon(
    slug: "codeforces",
    size: 1em,
    icon-color: "default",
  )),
  wakatime: box(sicon(
    slug: "wakatime",
    size: 1em,
    icon-color: "default",
  )),
)

#let nickname(str) = [\@#str]

#let make_contact_line = (icon, desc) => {
  [#box(baseline: 0.25em, icon) #h(0.04em) #text(fill: main_color.darken(40%))[#desc]]
}

#let custom-tag(label, color) = {
  set text(size: 0.8em)
  box(
    label,
    radius: 5pt,
    inset: (x: 0.4em),
    outset: (y: 0.4em),
    stroke: 0.6pt + color,
    fill: color.lighten(80%),
  )
}

#let lavander-tag(label) = custom-tag(label, main_color)
