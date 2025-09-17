#import "template.typ": *
#show: ATLAS-document.with(
  title: "TITLE",
  information: [],
  footer-title: "FOOTER-TITLE",
  header-title: "HEADER-TITLE",
  icons-top: [],
  icons-bottom: [
        #grid(
      columns: 2,
      row-gutter: 10pt,
      column-gutter: 10pt,
      stroke: 0pt,
      inset: 10pt,
      align: horizon+center,
      image("assets/ENSSAT-logo.png", width: 200pt),
      image("assets/NTNU-logo.png", width: 120pt)
    )
  ],
  header-logo: ATLAS-logo-full(),
  header-logo-bis: ATLAS-logo-text(height: 20pt),
  funky-mode: false,
  debug: false,
)

// INTRODUCTION
#heading(numbering: none)[Abstract]
#lorem(100)
#lorem(200)
#lorem(100)


// OUTLINE
#pagebreak()
#outline(indent: auto)
#pagebreak()

= Part 1 

== Part 1.1


== Part 1.2
#figure(image("assets/ATLAS-logo/ATLAS-logo-full.svg",width: 60%), caption: [ATLAS logo])


#heading(numbering: none)[Conclusion]

#lorem(200)

#lorem(100)


