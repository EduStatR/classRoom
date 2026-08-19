freq.disc <- function(x, graf = FALSE,
                      xlab = "Titulo do eixo-x",
                      ylab = "Titulo do eixo-y",
                      col = "darkblue")
{
  if(!graf) graphics.off()

  # Conjunto completo de valores observados
  Xi_full <- seq(min(x), max(x))

  # Tabela de frequencias absolutas
  d <- table(factor(x, levels = Xi_full))

  # Valores e frequencias
  Xi <- as.numeric(names(d))
  Fi <- as.numeric(d)

  # Numero total de observacoes
  n <- sum(Fi)

  # Frequencias relativas e percentuais
  Fri <- Fi / n
  Fpi <- Fri * 100

  # Frequencias acumuladas
  FA <- cumsum(Fi)
  FAPi <- cumsum(Fpi)

  # Saida
  cat("\nDistribuicao de frequencias\n")
  cat("--------------------------------------------------------\n")

  cat(sprintf("%6s %8s %8s %10s %8s %10s\n",
              "X", "fi", "fr", "fp(%)", "FA", "FAp(%)"))

  cat("--------------------------------------------------------\n")

  for(i in seq_along(Xi))
  {
    cat(sprintf("%6g %8d %8.2f %10.2f %8d %10.2f\n",
                Xi[i],
                Fi[i],
                Fri[i],
                Fpi[i],
                FA[i],
                FAPi[i]))
  }

  cat("--------------------------------------------------------\n")

  # Total
  cat(sprintf("%6s %8d %8.2f %10.2f %8d %10.2f\n",
              "Total",
              sum(Fi),
              sum(Fri),
              sum(Fpi),
              FA[length(FA)],
              FAPi[length(FAPi)]))

  cat("--------------------------------------------------------\n")
  cat("--------------------------------------------------------\n")
  cat("Nota:\n")
  cat("X - categorias da variavel\n")
  cat("fi - frequencia absoluta da classe\n")
  cat("fr - frequencia relativa da classe\n")
  cat("fp(%) - frequencia percentual da classe\n")
  cat("FA - frequencia acumulada abaixo\n")
  cat("FAp(%) - frequencia percentual acumulada abaixo\n")
  cat("--------------------------------------------------------\n")

  # Grafico de barras
  if(graf)
  {
    lim <- max(Fi) * 1.2

    coluna <- barplot(
      Fi ~ Xi,
      ylim = c(0, lim),
      ylab = ylab,
      xlab = xlab,
      las = 1,
      col = col
    )

    text(
      coluna,
      Fi,
      labels = Fi,
      pos = 3,
      cex = 1
    )

    abline(h = 0)
  }
}
