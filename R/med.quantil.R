med.quantil <- function(x, q)
{
  # Verificações
  if(!is.numeric(x))
  {
    cat("Resultado\n")
    cat("----------------------\n")
    cat("Nao e possivel calcular o quantil.\n")
    cat("----------------------\n")
    return(invisible(NULL))
  }

  if(length(q) != 1 || !is.numeric(q) || q < 0 || q > 100)
  {
    cat("Resultado\n")
    cat("----------------------\n")
    cat("Observe o valor informado do quantil.\n")
    cat("Este nao e um valor valido.\n")
    cat("----------------------\n")
    return(invisible(NULL))
  }

  # Calculo do quantil
  perc <- quantile(x, probs = q / 100)

  # Saida
  cat("\n----------------------\n")
  cat("Resultado\n")
  cat("----------------------\n")

  cat("Quantil de",q,"% ( quantil de ordem", q/100,")\n")

  cat("q(",q,"%) =", perc, "\n")

  cat("----------------------\n")
}

