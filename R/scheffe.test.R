scheffe.test <- function(trat, resp, GLRes, SQRes, alpha = 0.05) {
  meansAux <- tapply(resp, factor(trat), mean)
  niveis <- levels(factor(trat))
  means <- data.frame(Tratamento = niveis, Medias = meansAux)

  TabelaContr <- data.frame(Tratamento = means$Tratamento, Medias = means$Medias, Coeficientes = rep(0, length(niveis)))
  TabelaContr <- edit(TabelaContr)

  # Normalização dos coeficientes
  if (any(TabelaContr$Coeficientes != 0)) {
    max_coef <- max(abs(TabelaContr$Coeficientes))
    TabelaContr$Coeficientes <- TabelaContr$Coeficientes / max_coef
  } else {
    cat("\nTodos os coeficientes são iguais a zero.")
    return(invisible(NULL))
  }

  contr <- TabelaContr$Coeficientes

  if (sum(contr) >= 1.0e-14) {
    cat("\nA soma dos coeficientes do contraste deve ser igual a zero.")
    return(invisible(NULL))
  }

  # Cálculo da estimativa do contraste
  estimativa <- sum(means$Medias * contr)

  nTrat <- nrow(means)
  GLres <- GLRes
  Ftab <- qf(1 - alpha, nTrat - 1, GLres)
  QMr <- SQRes / GLres
  qtdRepPorTrat <- tapply(resp, factor(trat), length)

  somaCoefQuad <- sum((contr^2) / qtdRepPorTrat)
  V <- QMr * somaCoefQuad
  S <- sqrt((nTrat - 1) * Ftab * V)
  valorP <- pf((estimativa^2) / ((nTrat - 1) * V), nTrat - 1, GLres, lower.tail = FALSE)

  # Exibição dos resultados
  cat("\nContraste original:", TabelaContr$Coeficientes*max_coef)
  cat("\nContraste utilizado:", contr)
  cat("\nOs valores dos coeficientes do contraste foram divididos por:", max_coef)
  cat("\nNível de significância:", alpha)
  cat("\nEstimativa do contraste:", estimativa)
  cat("\nDMS Scheffé:", S, "\n")
    cat("Valor-p Scheffé:", valorP, "\n")

    cat("\nConclusão:\n")

  if (abs(estimativa) < S) {
    cat("- O valor absoluto da estimativa do contraste \n")
    cat("(", abs(estimativa), ") é menor que a DMS Scheffé (", S, ").\n")
    cat("- O contraste NÃO DIFERE significativamente\n ao nível de", (alpha * 100), "% de probabilidade.\n")
    cat("- Os grupos de médias testados NÃO DIFEREM entre si.\n")
  } else {
    cat("- O valor absoluto da estimativa do contraste \n")
    cat("(", abs(estimativa), ") é maior ou igual à DMS Scheffé (", S, ").\n")
    cat("- O contraste DIFERE significativamente ao nível de", (alpha * 100), "% de probabilidade.\n")
    cat("- Os grupos de médias testados DIFEREM entre si.\n")
  }


  cat("\n----------------------------------------------------------------------------\n")
}




