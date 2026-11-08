#import "../resume-data.typ": *
#import "../common-styles.typ": *
#import "styles.typ": *

#show heading.where(level: 2): set text(fill: main_color)
#show heading.where(level: 4): set text(size: 11pt, style: "italic")

#set page(
  margin: (top: 0cm, left: 0cm, right: 0cm, bottom: 0.9cm),
  background: place(
    top + left,
    rect(
      width: 25%,
      height: 100%,
      fill: bg_color,
    ),
  ),
  footer: [
    #align(center)[
      Made with
      #box(move(dy: 0.15em, image("./../../assets/love.png", height: 0.9em)))
      on Typst, no AI used. #link("https://github.com/MCtop4ik/resume", text(fill: main_color)[Source Code.])
    ]
  ],
)

#set document(
  title: text(fill: header_color)[Арсений Захаров],
  author: "Арсений Захаров",
  keywords: ("Резюме", "Разработка", "Проекты", "Стартапы"),
  date: datetime(day: 11, month: 09, year: 2026),
)

#grid(
  columns: (1fr, 3fr),
  rows: 1fr,
  column-gutter: 1em,
  grid.cell(
    fill: rgb("#f7f4fc"),
    inset: (left: 1.2em, top: 2em, bottom: 1em, right: 1em),
  )[
    #title()
    === #role

    #v(1em)
    == Контакты
    #stack(dir: ttb, spacing: 0.4em, ..contacts)

    #v(1em)
    == Навыки
    #skills

    #v(1em)
    == Образование
    #education
  ],
  grid.cell(
    inset: (left: 1em, top: 2em, bottom: 1em, right: 1em),
  )[
    == Обо мне
    #about_me

    == Проекты
    #projects
    
    == Достижения
    #achievements
  ],
)
