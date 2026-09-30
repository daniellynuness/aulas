#import "../components.typ": *

#deck-slide(mostrar-cabecalho: false)[
  #place(
    top + left,
    dx: 0pt,
    dy: -18pt,
  )[
    #text(
      font: fonte-ui,
      size: 8.5pt,
      fill: turquesa-suave,
      weight: "bold",
    )[
      mentebinaria.com.br
    ]
  ]

  #place(
    top + right,
    dx: 0pt,
    dy: -24pt,
  )[
    #image(
      "../assets/cerebro.png",
      width: 34pt,
      fit: "contain",
    )
  ]

  #align(center + horizon)[

    #v(18pt)

    #text(
      font: fonte-ui,
      size: 34pt,
      fill: turquesa,
      weight: "bold",
    )[
      Introdução à Computação
    ]

    #v(8pt)

    #line(
      length: 78pt,
      stroke: 3pt + magenta,
    )

    #v(18pt)

    #text(
      font: fonte-ui,
      size: 15pt,
      fill: branco,
      weight: "bold",
    )[
      Fernando Mercês
    ]

    #v(5pt)

    #text(
      font: fonte-ui,
      size: 12pt,
      fill: texto-suave,
    )[
      //Mês de 20XX
    ]
  ]
]
