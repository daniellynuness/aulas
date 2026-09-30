#import "../components.typ": *

#deck-slide[
  #slide-title[Computador Digital]

  #grid(
    columns: (1fr, 1fr),
    gutter: 16pt,

    [
      #card[
        #bullet[Eletromecânicos]
        #v(8pt)
        #align(center)[
        #image(
      "../assets/image19.png",
      height: 155pt)
      ]
    ]
    ],

    [
      #card[
        #bullet[Eletrônicos]
        #v(8pt)
        #grid(
          columns: (1fr, 1fr),
          gutter: 7pt,
          [#image(
      "../assets/image15.png",
      height: 150pt)],
         [#image(
      "../assets/image16.png",
      height: 155pt)],
        )
      ]
    ],
  )
]
