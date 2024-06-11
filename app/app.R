make_light <- function() bslib::bs_theme(preset = "bootstrap")

make_dark <- function() {
    bslib::bs_theme(
        preset = "bootstrap",
        bg = "black",
        fg = "white",
        primary = "mediumpurple"
    )
}

colour_days <- function(value) {
    if (value == 1) return("bg-red")
    if (value %in% 2:7) return("bg-orange")
    "bg-yellow"
}

pluralise <- function(value) if (value == 1) "day" else "days"

ui <- bslib::page_fillable(
    theme = make_light(),
    padding = 75,
    fillable_mobile = TRUE,
    title = "CRAN Deadlines",
    htmltools::h1("⌛️ CRAN Deadlines"),
    shiny::checkboxInput("dark_mode", "Dark mode"),
    shiny::htmlOutput("cards", inline = TRUE)
)

server <- function(input, output, session) {

    observe(session$setCurrentTheme(
        if (isTRUE(input$dark_mode)) make_dark() else make_light()
    ))

    output$cards <- shiny::renderUI({

        db <- tools::CRAN_package_db()
        db <- db[!is.na(db$Deadline), c("Deadline", "Package", "Depends", "Title")]
        db$URL <- paste0("https://CRAN.R-project.org/package=", db$Package)
        db$Deadline <- as.Date(db$Deadline)
        db$Days <- db$Deadline - Sys.Date()
        db <- db |> sort_by(~list(Deadline, Package))

        cards_list <- vector("list", length = nrow(db))

        for (i in seq(nrow(db))) {

            pkg <- db[i, ]

            cards_list[[i]] <- bslib::card(
                bslib::card_header(
                    class = colour_days(pkg$Days),
                    paste(pkg$Days, pluralise(pkg$Days))
                ),
                bslib::card_title(
                    htmltools::a(href = pkg$URL, paste0("{", pkg$Package, "}"))
                ),
                bslib::card_body(shiny::markdown(paste0("> ", pkg$Title))),
                bslib::card_footer(
                    htmltools::a(
                        href = paste0(
                            "https://cran.r-project.org/web/checks/check_results_",
                            pkg$Package,
                            ".html"
                        ),
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

        cards_taglist

    })

}

# Run the application
shiny::shinyApp(ui = ui, server = server)
