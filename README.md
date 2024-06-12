
# cran-deadlines

<!-- badges: start -->
[![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
[![](https://img.shields.io/badge/Shiny-shinyapps.io-blue?style=flat&labelColor=white&logo=RStudio&logoColor=blue)](https://mattdray.shinyapps.io/cran-deadlines/)
<!-- badges: end -->

A simple Shiny app that highlights R packages on [CRAN](https://cran.r-project.org/) that are currently nearing their archival deadlines, according to `tools::CRAN_package_db()`. 

The app is available on shinyapps.io for now: [matt-dray.github.io/cran-deadlines](https://mattdray.shinyapps.io/cran-deadlines/)

Built primarily with [Shiny](https://shiny.posit.co/r/getstarted/shiny-basics/lesson1/index.html) and [{bslib}](https://rstudio.github.io/bslib/), with many thanks to the CRAN team and all package maintainers.

![](app.png){fig-alt="Screenshot of webpage called 'CRAN Deadlines'. There are individual cards with the names of R packages in them. The header of each card says how many days remain for fixes to be made and is coloured according to the amount of time left (e.g. red for 0 days). The footer says e.g. 'issues need fixing before 2024-06-12' with a link to the CRAN page detailing the errors."}
