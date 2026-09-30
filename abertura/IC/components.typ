#import "@preview/touying:0.7.4": *
#import "theme.typ": *

// ESTRUTURA BASE

#let cabecalho() = [
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
      "assets/cerebro.png",
      width: 27pt,
      fit: "contain",
    )
  ]
]

#let deck-slide(
  body,
  fundo: fundo-escuro,
  mostrar-cabecalho: true,
) = slide(
  config: config-page(
    fill: fundo,
  ),
)[
  #if mostrar-cabecalho [
    #cabecalho()
  ]

  #v(4pt)
  #body
]


// TÍTULOS 

#let slide-title(
  body,
  cor: branco,
) = [
  #text(
    font: fonte-ui,
    size: 25pt,
    fill: cor,
    weight: "bold",
  )[
    #body
  ]

  #v(3pt)

  #line(
    length: 52pt,
    stroke: 2.5pt + turquesa,
  )

  #v(10pt)
]

#let slide-subtitle(
  body,
  cor: magenta,
) = [
  #text(
    font: fonte-ui,
    size: 16pt,
    fill: cor,
    weight: "bold",
  )[
    #body
  ]

  #v(10pt)
]

#let body-text(
  body,
  tamanho: 14pt,
  cor: branco,
) = text(
  font: fonte-ui,
  size: tamanho,
  fill: cor,
)[
  #body
]

#let codigo-inline(body) = text(
  font: fonte-codigo,
  size: 12.5pt,
  fill: azul-codigo,
)[
  #body
]


// LISTAS 

#let bullet(
  body,
  tamanho: 14pt,
  cor: branco,
  marcador: turquesa,
) = grid(
  columns: (14pt, 1fr),
  gutter: 6pt,
  [
    #text(
      font: fonte-ui,
      size: tamanho,
      fill: marcador,
      weight: "bold",
    )[•]
  ],
  [
    #text(
      font: fonte-ui,
      size: tamanho,
      fill: cor,
    )[
      #body
    ]
  ],
)

#let numbered-step(
  numero,
  body,
) = grid(
  columns: (25pt, 1fr),
  gutter: 8pt,
  align: horizon,
  [
    #circle(
      radius: 10pt,
      fill: turquesa,
    )[
      #align(center + horizon)[
        #text(
          font: fonte-ui,
          size: 9pt,
          fill: fundo-escuro,
          weight: "bold",
        )[
          #numero
        ]
      ]
    ]
  ],
  [
    #text(
      font: fonte-ui,
      size: 13pt,
      fill: branco,
    )[
      #body
    ]
  ],
)


// CARDS 

#let card(
  body,
  fundo: fundo-card,
  borda: turquesa,
  texto-cor: branco,
  tamanho: 13pt,
  inset-x: 14pt,
  inset-y: 9pt,
) = block(
  width: 100%,
  fill: fundo,
  stroke: 0.8pt + borda,
  inset: (x: inset-x, y: inset-y),
  radius: 2pt,
)[
  #set text(
    font: fonte-ui,
    size: tamanho,
    fill: texto-cor,
  )

  #body
]

#let quote-line(
  body,
  autor: none,
) = block(
  width: 100%,
  fill: fundo-card,
  stroke: (left: 4pt + magenta),
  inset: (x: 14pt, y: 10pt),
)[
  #text(
    font: fonte-ui,
    size: 13pt,
    fill: branco,
    style: "italic",
  )[
    #body
  ]

  #if autor != none [
    #v(5pt)
    #text(
      font: fonte-ui,
      size: 10.5pt,
      fill: magenta,
      weight: "bold",
    )[
      #autor
    ]
  ]
]


// IMAGENS

#let imagem-slot(
  rotulo: "IMAGEM",
  caminho: none,
  altura: 150pt,
  fit: "contain",
) = block(
  width: 100%,
  height: altura,
  fill: fundo-card,
  stroke: 1pt + turquesa,
  radius: 2pt,
  inset: 0pt,
)[
  #if caminho == none [
    #align(center + horizon)[
      #text(
        font: fonte-ui,
        size: 11pt,
        fill: texto-suave,
        weight: "bold",
      )[
        #rotulo
      ]
    ]
  ] else [
    #image(
      caminho,
      width: 100%,
      height: altura,
      fit: fit,
    )
  ]
]

#let link-text(url) = link(url)[
  #text(
    font: fonte-codigo,
    size: 10.5pt,
    fill: turquesa,
  )[
    #url
  ]
]
