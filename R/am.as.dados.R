am.as.dados <- function(x, n) {

  p <- trunc(length(x) / n)
  inicio <- sample(p, 1)
  ind <- seq(inicio, length(x), p)

  if (length(ind) > n) {
    ind <- ind[1:n]
  }

  nomes <- x[ind]

  cat("----------------------------------------\n")
  cat("          AMOSTRAGEM SISTEMATICA\n")
  cat("----------------------------------------\n\n")

  cat("Tamanho da populacao:", length(x), "\n")
  cat("Tamanho da amostra:  ", n, "\n")
  cat("Intervalo de amostragem: I = ",p, "\n")
  cat("Inicio casual:       ", inicio, "\n\n")

  cat("Elementos selecionados:\n\n")

  cat(sprintf("%-20s %-20s\n",
              "Identificacao", "Valor/Observacao"))

  cat(sprintf("%-20s %-20s\n",
              "--------------------", "--------------------"))

  for (i in seq_along(ind)) {
    cat(sprintf("%-20s %-20s\n",
                ind[i], nomes[i]))
  }

  cat("----------------------------------------\n")

  out <- list()
  out$sorteados <- nomes

  invisible(out)
}
