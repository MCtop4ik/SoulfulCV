#import "resume-data.typ": *

#show heading.where(level: 4): set text(size: 11pt, style: "italic")
#show heading.where(level: 2): set text(fill: rgb("#414cc8"))

#set page(margin: 0.67cm)

#set document(
  title: text(fill: rgb("#1e0039"))[Арсений Захаров],
  author: "Арсений Захаров",
  keywords: ("Резюме", "Разработка", "Проекты", "Стартапы"),
  date: datetime(day: 11, month: 09, year: 2026),
)

#set page(
  footer-descent: 20%,
  footer: [
    #align(center)[
      Made with
      #box(move(dy: 0.15em, image("./../assets/love.png", height: 0.9em)))
      on Typst, no AI used. #link("https://github.com/MCtop4ik/resume", text(fill: rgb("#414cc8"))[Source Code.])
    ]
  ],
)

#align(center)[
  #title()
  === #role
]

#align(left)[
  #grid(
    columns: (3fr, 1fr),
    column-gutter: 1em,
    [
      == Кто я такой?
      #about_me
    ],
    [
      == Контакты
      #stack(dir: ttb, spacing: 0.4em, ..contacts)
    ],
  )
]

#v(0.5em)

#align(left)[
  #grid(
    columns: (1fr, 3fr),
    column-gutter: 1em,
    [
      #stack(
        dir: ttb,
        spacing: 1.5em,
        [
          == Навыки
          #skills
        ],
      )
    ],
    [
      == Проекты
      #projects
    ],
  )
]

#align(left)[
  #grid(
    columns: (1fr, 3fr),
    column-gutter: 1em,
    [
      == Образование
      #education
    ],
    [
      == Достижения
      #achievements
    ],
  )
]