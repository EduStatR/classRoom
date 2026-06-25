freq.disc <- function(x, graf = TRUE,
                      xlab = "Titulo do eixo-x",
                      ylab = "Titulo do eixo-y",
                      col = "darkblue") {
  if(!graf) graphics.off()

  # Conjunto completo de valores observados (discretos)
  Xi_full <- seq(min(x), max(x))

  # Calcula a tabela de frequências absolutas
  d <- table(factor(x, levels = Xi_full))
  df <- as.data.frame(d)

  # Valores únicos e frequências
  Xi <- as.numeric(as.character(df$Var1))
  Fi <- df$Freq

  # Soma total de observações
  n <- sum(Fi)

  # Frequências relativas e percentuais
  Fri <- Fi / n
  Fpi <- Fri * 100
  FA <- cumsum(Fi)
  FAPi <- cumsum(Fpi)

  # Criação da tabela final
  k <- length(Xi)
  tabela <- matrix(NA, k, 6)
  row.names(tabela) <- rep("", k)
  tabela[, 1] <- Xi_full
  tabela[, 2] <- Fi
  tabela[, 3] <- round(Fri, 2)
  tabela[, 4] <- round(Fpi, 2)
  tabela[, 5] <- FA
  tabela[, 6] <- round(FAPi, 2)
  colnames(tabela) <- c("X", "fi", "fr", "fp(%)", "FA", "FAp(%)")

  # Exibe a tabela
  cat("\n   Distribuição de frequências\n")
  cat("----------------------------------\n")
  print(tabela)
  cat("----------------------------------\n")

  # Gráfico de barras (opcional)
  if (graf) {
    lim <- max(Fi) * 1.2  # margem superior para as barras
    coluna <- barplot(Fi ~ Xi, ylim = c(0, lim),
                      ylab = ylab, xlab = xlab,
                      las = 1, col = col)
    text(coluna, Fi, labels = Fi, pos = 3, cex = 1)
    abline(h = 0)
  }
}
