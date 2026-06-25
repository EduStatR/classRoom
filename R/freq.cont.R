freq.cont <- function (x, graf = TRUE, polgfreq = FALSE, xlab = "Título do eixo-x", ylab = "Titulo do eixo-y",
                        col = "lightyellow")
{
  if(!graf) graphics.off()
  numerodeclasses <- function(x) {
    if (length(x) <= 100) {
      k <- sqrt(length(x)) + 0.5
    }
    else {
      k <- 5 * log10(length(x))
    }
    return(round(k, 0))
  }
  k <- numerodeclasses(x)
  ma <- as.numeric(max(x))
  mi <- as.numeric(min(x))
  AA = ma - mi
  C <- AA/(k - 1)
  C <- round(C, 2)
  LI1 <- mi - C/2
  LI1 <- round(LI1, 2)
  limites <- LI1 + C * (0:k)
  freq <- numeric(length(limites) - 1)
  eps <- .Machine$double.eps * max(abs(limites))
  for (valor in x) {
    for (i in seq_along(freq)) {
      if (valor >= limites[i] && (valor < limites[i + 1] || abs(valor - limites[i + 1]) < eps)) {
        if (abs(valor - limites[i + 1]) < eps && i + 1 < length(freq)) {
          freq[i + 1] <- freq[i + 1] + 1
        } else {
          freq[i] <- freq[i] + 1
        }
        break
      }
    }
  }
  n <- length(x)
  tabela <- matrix(c(rep(7 * k)), k, 8)
  for (i in 1:k) {
    tabela[i, 1] <- paste0("[", sprintf("%.2f",round(limites[i], 2)))
    tabela[i, 2] <- paste0(", ", sprintf("%.2f",round(limites[i + 1], 2)), ")")
    tabela[i, 3] <- round(mean(c(limites[i],limites[i+1])), 2)
    tabela[i, 4] <- (freq[i])
    tabela[i, 5] <- round((freq[i]/n), 4)
    tabela[i, 6] <- round((100 * freq[i])/n, 2)
    tabela[i, 7] <- sum(freq[1:i])
    tabela[i, 8] <- round(100 * sum(freq[1:i]/n), 2)
  }
  colnames(tabela) <- c("LI", "LS", "PM", "fi", "fr", "fp",
                        "FA", "FAp")
  df_tabela <- as.data.frame(tabela)
  cat(" \n   Distribuicao de frequencias\n")
  cat("----------------------------------------------\n")
  print(df_tabela)
  cat("----------------------------------------------\n")
  if (graf) {
    mids <- (limites[-length(limites)] + limites[-1]) / 2  # Ponto médio das classes
    xlim <- range(limites)
    ylim <- c(0, max(freq) * 1.1)
    par(mar = c(5, 5, 4, 2) + 0.1)
    plot(NA, NA, xlim = xlim, ylim = ylim, xlab = xlab, ylab = ylab, main = "Histograma de Frequências", type = "n", xaxt = "n",las=1, bty = "l")
    axis(1, at = limites, labels = sprintf("%.2f", limites))
    for (i in 1:length(freq)) {
      rect(limites[i], 0, limites[i + 1], freq[i], col = col, border = "black")
    }
    if (polgfreq) {
      lines(mids, freq, type = "o", col = "red", lwd = 2, pch = 16)
    }
  }
  out <- list(Tabela = df_tabela)
  invisible(out)
  cat("----------------------------------------------\n")
  cat("Outras informacoes:\n")
  cat("Numero de classes (k):", k,"\n")
  cat("Intervalo de classe (c):", C,"\n")
    cat("----------------------------------------------\n")

}





