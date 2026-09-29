#import "../components.typ": *

#deck-slide[
  #slide-title[Computador Digital]
  #slide-subtitle[Periféricos de E/S]

  #grid(
    columns: (1fr, 1fr),
    gutter: 18pt,

    [
      #card[
        #text(
          font: fonte-ui,
          size: 15pt,
          fill: turquesa,
          weight: "bold",
        )[Entrada]

        #v(9pt)
        #bullet[Teclado]
        #v(6pt)
        #bullet[Mouse]
        #v(6pt)
        #bullet[Webcam]
        #v(6pt)
        #bullet[Microfone]
      ]
    ],

    [
      #card[
        #text(
          font: fonte-ui,
          size: 15pt,
          fill: turquesa,
          weight: "bold",
        )[Saída]

        #v(9pt)
        #bullet[Monitor]
        #v(6pt)
        #bullet[Impressora]
        #v(6pt)
        #bullet[Fone de ouvido]
        #v(6pt)
        #bullet[Alto-falante]
      ]
    ],
  )
]
