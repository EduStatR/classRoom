med.var <- function(x)
{
  if(is.numeric(x))
  {
    variancia <- var(x)
    desvio_padrao <- sd(x)
    coef_var <- round(sd(x) / mean(x) * 100, 2)
    A <- max(x) - min(x)
    IQR <- quantile(x, 0.75) - quantile(x, 0.25)
  }

  else
  {
    variancia <- desvio_padrao <-
      coef_var <- A <- IQR <-
      "Nao calculada, variavel qualitativa"
  }

  # Saida
  cat("\n----------------------\n")
  cat("Resultado\n")
  cat("----------------------\n")

  cat("Variancia\n")
  cat("s\u00B2 =", variancia, "\n\n")

  cat("Desvio padrao\n")
  cat("s =", desvio_padrao, "\n\n")

  cat("Coeficiente de variacao\n")
  cat("cv =", coef_var, "%\n\n")

  cat("Amplitude\n")
  cat("A =", A, "\n\n")

  cat("Intervalo interquartilico\n")
  cat("IQR =", IQR, "\n")

  cat("----------------------\n")
}
