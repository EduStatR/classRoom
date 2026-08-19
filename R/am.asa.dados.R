am.asa.dados <- function(x, n, replace = FALSE, sort = FALSE) {

  ind <- sample(length(x), n, replace = replace)

  if (sort == TRUE) {
    ind <- sort(ind)
  }

  nomes <- x[ind]

  cat("\n----------------------------------------\n")
  cat("       AMOSTRAGEM SIMPLES AO ACASO\n")
  cat("----------------------------------------\n\n")

  cat("Tamanho da populacao:", length(x), "\n")
  cat("Tamanho da amostra:  ", n, "\n\n")

  cat("Elementos sorteados:\n\n")

  cat(sprintf("%-13s %-20s\n",
              "Identificacao", "Valor/Observacao"))

  cat(sprintf("%-13s %-20s\n",
              "-------------", "--------------------"))

  for (i in seq_along(ind)) {
    cat(sprintf("%-13s %-20s\n",
                ind[i], nomes[i]))
  }

  cat("----------------------------------------\n")

  out <- list()
  out$sorteados <- nomes

  invisible(out)
}
