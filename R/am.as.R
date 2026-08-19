am.as <- function(N, n) {

  p <- trunc(N / n)
  inicio <- sample(p, 1)
  ind <- seq(inicio, N, p)

  if (length(ind) > n) {
    ind <- ind[1:n]
  }

  cat("----------------------------------------\n")
  cat("          AMOSTRAGEM SISTEMATICA\n")
  cat("----------------------------------------\n\n")

  cat("Tamanho da populacao:", N, "\n")
  cat("Tamanho da amostra:  ", n, "\n")
  cat("Intervalo de amostragem: I = ",p, "\n")
  cat("Inicio casual:       ", inicio, "\n\n")

  cat("Elementos selecionados:\n\n")

  cat(sprintf("%-20s\n", "Identificacao"))
  cat(sprintf("%-20s\n", "--------------------"))

  for (i in seq_along(ind)) {
    cat(sprintf("%-20s\n", ind[i]))
  }

  cat("----------------------------------------\n")

  out <- list()
  out$sorteados <- ind

  invisible(out)
}
