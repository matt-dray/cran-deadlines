colour_days <- function(value) {
  if (value < 2) return("bg-red")
  if (value %in% 2:7) return("bg-orange")
  "bg-yellow"
}

pluralise <- function(value) if (value == 1) "day" else "days"

# credit: Winston Chang
# source: https://github.com/posit-dev/r-shinylive/issues/45#issuecomment-1885233647
is_emscripten <- function() Sys.info()[["sysname"]] == "Emscripten"

get_cran_db <- function() {
  if (is_emscripten()) {
    tmp_file <- tempfile(pattern = "crandb")
    # Need to create a modified URL leveraging a CORS-friendly proxy
    # credit: GH user alekrutkowski
    # source: https://github.com/r-wasm/webr/issues/252#issuecomment-1690142510
    download.file(
      url = "https://corsproxy.io/?https%3A%2F%2FCRAN.R-project.org%2Fweb%2Fpackages%2Fpackages.rds",
      destfile = tmp_file
    )

    df <- as.data.frame(readRDS(tmp_file))
    unlink(tmp_file)
  } else {
    df <- tools::CRAN_package_db()
  }
  return(df)
}

ui <- bslib::page_fillable(
  # Emoji favicon
  # credit: Twitte user Lea Verou
  # source: https://twitter.com/LeaVerou/status/1241619866475474946
  htmltools::HTML(
    paste0(
      "<link rel='icon' href='data:image/svg+xml,",
      "<svg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 100 100%22>",
      "<text y=%22.9em%22 font-size=%2290%22>⌛️</text>",
      "</svg>'>"
    )
  ),
  theme = bslib::bs_theme(preset = "bootstrap"),
  padding = 75,
  fillable_mobile = TRUE,
  title = "CRAN Deadlines",
  shiny::column(
    width = 12,
    htmltools::a(
      href = "https://github.com/matt-dray/cran-deadlines",
      target = "_blank",
      fontawesome::fa("github", height = "1.45em")
    ),
    bslib::input_dark_mode(id = "dark_mode", mode = "dark")
  ),
  htmltools::h1("⌛️CRAN Deadlines"),
  shiny::htmlOutput("cards", inline = TRUE)
)

server <- function(input, output, session) {

  db <- get_cran_db()
  db <- db[!is.na(db$Deadline), c("Deadline", "Package", "Title")]
  db$URL <- paste0("https://CRAN.R-project.org/package=", db$Package)
  db$Deadline <- as.Date(db$Deadline)
  db$Days <- db$Deadline - Sys.Date()
  if (is_emscripten()) {
    db <- db[order(db$Deadline, db$Package),]
  } else {
    db <- db |> sort_by(~list(Deadline, Package))
  }

  cards_list <- vector("list", length = nrow(db))

  for (i in seq(nrow(db))) {

    pkg <- db[i, ]

    cards_list[[i]] <- bslib::card(
      bslib::card_header(
        class = colour_days(pkg$Days),
        paste(pkg$Days, pluralise(pkg$Days))
      ),
      bslib::card_title(
        htmltools::a(
          href = pkg$URL,
          target = "_blank",
          paste0("{", pkg$Package, "}"),
          .noWS = "after"
        ),
        ":", pkg$Title
      ),
      bslib::card_footer(
        htmltools::a(
          href = paste0(
            "https://cran.r-project.org/web/checks/check_results_",
            pkg$Package,
            ".html"
          ),
          target = "_blank",
          "Issues"
        ),
        "need fixing before",
        pkg$Deadline
      )
    )
  }

  cards_taglist <- htmltools::tagList()

  for (i in seq_along(cards_list)) {
    cards_taglist <- cards_taglist |>
      htmltools::tagAppendChild(cards_list[[i]]) |>
      htmltools::tagAppendChild(htmltools::br())
  }

  output$cards <- shiny::renderUI({
    cards_taglist
  })

}

# Run the application
shiny::shinyApp(ui = ui, server = server)
