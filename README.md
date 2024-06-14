
# cran-deadlines

<!-- badges: start -->
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![](https://img.shields.io/badge/Shiny-shinylive-447099?style=flat&labelColor=white&logo=Posit&logoColor=447099)](https://matt-dray.github.io/cran-deadlines)
[![Blog
post](https://img.shields.io/badge/rostrum.blog-post-008900?labelColor=000000&logo=data%3Aimage%2Fgif%3Bbase64%2CR0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh%2BQQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/posts/2024-06-12-cran-db/)
<!-- badges: end -->

A simple Shiny app that highlights R packages on [CRAN](https://cran.r-project.org/) that are currently nearing their archival deadlines, according to `tools::CRAN_package_db()`. 

The app is available as a Shinylive app, which means it will run in your browser without the need for a server: [matt-dray.github.io/cran-deadlines/](https://matt-dray.github.io/cran-deadlines/)

Built primarily with [Shiny](https://shiny.posit.co/r/getstarted/shiny-basics/lesson1/index.html) and [{bslib}](https://rstudio.github.io/bslib/), with many thanks to the CRAN team, all package maintainers and [Eric Nantz](https://github.com/rpodcast), who [fixed my Shinylive problems](https://github.com/matt-dray/cran-deadlines/pull/3).

The Shiny app code is in `app/` and the Shinylive version is in `docs/`.

<img src='app.png' alt="Screenshot of webpage called 'CRAN Deadlines'. There are individual cards with the names of R packages in them. The header of each card says how many days remain for fixes to be made and is coloured according to the amount of time left (e.g. red for 0 days). The footer says e.g. 'issues need fixing before 2024-06-12' with a link to the CRAN page detailing the errors.">
