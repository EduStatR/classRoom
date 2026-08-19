am.asa <- function(N, n, replace = FALSE, sort = FALSE) {

  ind <- sample(N, n, replace = replace)

  if (sort == TRUE) {
    ind <- sort(ind)
  }

  cat("----------------------------------------\n")
  cat("       AMOSTRAGEM SIMPLES AO ACASO\n")
  cat("----------------------------------------\n\n")

  cat("Tamanho da populacao:", N, "\n")
  cat("Tamanho da amostra:  ", n, "\n\n")

  cat("Elementos sorteados:\n\n")

  cat(sprintf("%-20s\n", "Identificacao"))
  cat(sprintf("%-20s\n", "--------------"))

  for (i in seq_along(ind)) {
    cat(sprintf("%-20s\n", ind[i]))
  }

  cat("----------------------------------------\n")

  out <- list()
  out$sorteados <- ind

  invisible(out)
}
