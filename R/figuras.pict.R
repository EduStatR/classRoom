figuras.pict <- function(figs){

  figs <- list.files(
    system.file("extdata", package = "classRoom"),
    pattern = "\\.(png|jpg|jpeg)$",
    full.names = FALSE
  )

  cat("\nFiguras disponíveis para graf.pict()\n")
  cat("-------------------------------------\n")
  print(figs)
  invisible(figs)
}

