
# cran-deadlines

<!-- badges: start -->
[![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
[![](https://img.shields.io/badge/Shiny-shinyapps.io-blue?style=flat&labelColor=white&logo=RStudio&logoColor=blue)](https://mattdray.shinyapps.io/cran-deadlines/)
[![Blog
posts](https://img.shields.io/badge/rostrum.blog-posts-008900?labelColor=000000&logo=data%3Aimage%2Fgif%3Bbase64%2CR0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh%2BQQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/posts/2024-06-12-cran-db/)
<!-- badges: end -->

A simple Shiny app that highlights R packages on [CRAN](https://cran.r-project.org/) that are currently nearing their archival deadlines, according to `tools::CRAN_package_db()`. 

The app is available as a Shinylive app, which means it will run in your browser without the need for a server: [matt-dray.github.io/cran-deadlines/](https://matt-dray.github.io/cran-deadlines/)

Built primarily with [Shiny](https://shiny.posit.co/r/getstarted/shiny-basics/lesson1/index.html) and [{bslib}](https://rstudio.github.io/bslib/), with many thanks to the CRAN team, all package maintainers and [Eric Nantz](https://github.com/rpodcast), who [fixed my Shinylive problems](https://github.com/matt-dray/cran-deadlines/pull/3).

The Shiny app code is in `app/` and the Shinylive version is in `docs/`.

![](app.png){fig.alt="Screenshot of webpage called 'CRAN Deadlines'. There are individual cards with the names of R packages in them. The header of each card says how many days remain for fixes to be made and is coloured according to the amount of time left (e.g. red for 0 days). The footer says e.g. 'issues need fixing before 2024-06-12' with a link to the CRAN page detailing the errors."}
