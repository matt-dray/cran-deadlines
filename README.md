
# cran-deadlines

<!-- badges: start -->
[![Project Status: Inactive – The project has reached a stable, usable state but is no longer being actively developed; support/maintenance will be provided as time allows.](https://www.repostatus.org/badges/latest/inactive.svg)](https://www.repostatus.org/#inactive)
[![](https://img.shields.io/badge/Shiny-shinyapps.io-447099?style=flat&labelColor=white&logo=Posit&logoColor=447099)](https://mattdray.shinyapps.io/cran-deadlines)
[![Blog
post](https://img.shields.io/badge/rostrum.blog-post-008900?labelColor=000000&logo=data%3Aimage%2Fgif%3Bbase64%2CR0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh%2BQQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/posts/2024-06-12-cran-db/)
<!-- badges: end -->

## About

A simple Shiny app that highlights R packages on [CRAN](https://cran.r-project.org/) that are currently nearing their archival deadlines, according to `tools::CRAN_package_db()`. Access the app at [mattdray.shinyapps.io/cran-deadlines/](https://mattdray.shinyapps.io/cran-deadlines/)[^1] and read more in [the associated blog post](https://www.rostrum.blog/posts/2024-06-12-cran-db/).

[^1]: There's also [a Shinylive version](https://matt-dray.github.io/cran-deadlines/) of the app, but it [isn't working as intended](https://github.com/matt-dray/cran-deadlines/issues/6).

## Acknowledgements

Built primarily with [Shiny](https://shiny.posit.co/r/getstarted/shiny-basics/lesson1/index.html) and [{bslib}](https://rstudio.github.io/bslib/), with many thanks to the CRAN team and all package maintainers. Special thanks to [Eric Nantz](https://github.com/rpodcast), who fixed my [initial Shinylive problems](https://github.com/matt-dray/cran-deadlines/pull/3).

## Similar projects

You may prefer to use [Hadley's table](https://hadley.github.io/cran-deadlines/) instead.

## Preview

<img src='app.png' alt="Screenshot of webpage called 'CRAN Deadlines'. There are individual cards with the names of R packages in them. The header of each card says how many days remain for fixes to be made and is coloured according to the amount of time left (e.g. red for 0 days). The footer says e.g. 'issues need fixing before 2024-06-12' with a link to the CRAN page detailing the errors.">
