scheffe.test2 <- function(medias, repet, GLRes, SQRes, alpha = 0.05){

  #-----------------------------------------
  # Teste de Scheffé para contrastes gerais
  # Inserção dos coeficientes via REditor
  #-----------------------------------------

  niveis <- length(medias)

  # Ajuste para repetições balanceadas
  if(length(repet) == 1){
    repet <- rep(repet, niveis)
  }

  if(length(repet) != niveis){
    cat("\nErro: 'repet' deve ter comprimento 1 ou igual ao número de médias.\n")
    return(invisible(NULL))
  }

  Tratamentos  <- seq_len(niveis)
  Medias       <- medias
  Coeficientes <- rep(0, niveis)

  tabelaAux <- data.frame(
    Tratamentos = Tratamentos,
    Medias = Medias,
    Coeficientes = Coeficientes
  )

  #-----------------------------------------
  # Entrada interativa via editor
  #-----------------------------------------
  TabelaContr <- edit(tabelaAux)

  contr_original <- TabelaContr$Coeficientes

  #-----------------------------------------
  # Verificações iniciais
  #-----------------------------------------
  if(all(contr_original == 0)){
    cat("\nTodos os coeficientes são iguais a zero.\n")
    return(invisible(NULL))
  }

  somaCoef <- sum(contr_original)

  if(abs(somaCoef) > 1e-12){
    cat("\nA soma dos coeficientes do contraste deve ser igual a zero.\n")
    return(invisible(NULL))
  }

  #-----------------------------------------
  # Padronização dos coeficientes
  #-----------------------------------------
  max_coef <- max(abs(contr_original))
  contr <- contr_original / max_coef

  #-----------------------------------------
  # Cálculos
  #-----------------------------------------
  QMRes <- SQRes / GLRes

  estimativa <- sum(Medias * contr_original)

  somaCoefQuad <- sum((contr_original^2) / repet)

  V <- QMRes * somaCoefQuad

  Fcalc <- (estimativa^2) / ((niveis - 1) * V)

  valorP <- pf(Fcalc, niveis - 1, GLRes, lower.tail = FALSE)

  S <- sqrt((niveis - 1) *
              qf(1 - alpha, niveis - 1, GLRes) *
              V)

  #-----------------------------------------
  # Saída
  #-----------------------------------------
  cat("\nContraste original:", contr_original)
  cat("\nContraste utilizado:", contr)
  cat("\nOs valores dos coeficientes do contraste foram divididos por:", max_coef)
  cat("\nNível de significância:", alpha)
  cat("\nEstimativa do contraste:", estimativa)
  cat("\nDMS Scheffé:", S, "\n")
  cat("Valor-p Scheffé:", valorP, "\n")

  cat("\nConclusão:\n")

  if(abs(estimativa) < S){

    cat("- O valor absoluto da estimativa do contraste \n")
    cat("(", abs(estimativa), ") é menor que a DMS Scheffé (", S, ").\n")
    cat("- O contraste NÃO DIFERE significativamente\n ao nível de",
        (alpha * 100), "% de probabilidade.\n")
    cat("- Os grupos de médias testados NÃO DIFEREM entre si.\n")

  } else {

    cat("- O valor absoluto da estimativa do contraste \n")
    cat("(", abs(estimativa), ") é maior ou igual à DMS Scheffé (", S, ").\n")
    cat("- O contraste DIFERE significativamente ao nível de",
        (alpha * 100), "% de probabilidade.\n")
    cat("- Os grupos de médias testados DIFEREM entre si.\n")
  }

  invisible(list(
    contraste.original = contr_original,
    contraste = contr,
    divisor = max_coef,
    estimativa = estimativa,
    variancia = V,
    DMS = S,
    Fcalc = Fcalc,
    pvalor = valorP
  ))
}
