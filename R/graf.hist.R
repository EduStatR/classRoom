graf.hist <- function(x,
                      arred_c=2,
                      arred_LI1=2,
                      grafs,
                      col= "yellow",
                      xlab= "Título do eixo-x",
                      ylab= "Titulo do eixo-y",
                      graf=TRUE )

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
  C <- round(C, arred_c)
  LI1 <- mi - C/2
  LI1 <- round(LI1, arred_LI1)
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
  tabela <- matrix(c(rep(7 * k)), k, 10)
  for (i in 1:k) {
    fmt <- paste0("%.", arred_LI1, "f")
    tabela[i, 1] <- paste0("[", sprintf(fmt, limites[i]))
    tabela[i, 2] <- paste0(", ", sprintf(fmt, limites[i + 1]), ")")
    tabela[i, 3] <- round(mean(c(limites[i],limites[i+1])), 2)
    tabela[i, 4] <- (freq[i])
    tabela[i, 5] <- round((freq[i]/n), 4)
    tabela[i, 6] <- round((100 * freq[i])/n, 2)
    tabela[i, 7] <- sum(freq[1:i])
    tabela[i, 8] <- round(100 * sum(freq[1:i]/n), 2)
    tabela[i, 9] <- sum(freq[i:length(freq)])
    tabela[i, 10] <- round(100 * sum(freq[i:length(freq)]/n), 2)

   # freq.acum <- cumsum(freq)

  #  freq.acum.inv <- rev(cumsum(rev(freq)))


  }
  colnames(tabela) <- c("LI", "LS", "PM", "fi", "fr", "fp",
                        "FAb", "FpAb","FpAc", "FpAc")
  df_tabela <- as.data.frame(tabela)
  cat(" \n   Distribuicao de frequencias\n")
  cat("-----------------------------------------------------\n")
  print(df_tabela)
  cat("-----------------------------------------------------\n")




  if (graf) {

    if(any(!grafs %in% 1:5))
    stop("grafs deve assumir valores entre 1 e 5.")

  graf <- unique(grafs)


    ##=========================================================
    ## Dados para os gráficos
    ##=========================================================

    mids <- (limites[-length(limites)] + limites[-1])/2

    freq.acum <- cumsum(freq)

    freq.acum.inv <- rev(cumsum(rev(freq)))

    ylim <- c(0,max(freq,freq.acum)*1.1)

    xlim <- range(limites)

    ##=========================================================
    ## 1 - Histograma
    ##=========================================================

    if(1 %in% graf){

      par(mar=c(5,5,4,2)+0.1)

      plot(NA,
           xlim=xlim,
           ylim=c(0,max(freq)*1.1),
           xlab=xlab,
           ylab=ylab,
           main="Histograma",
           type="n",
           xaxt="n",
           las=1,
           bty="l")

      fmt <- paste0("%.", arred_LI1, "f")
      axis(1,
           at=limites,
           labels = sprintf(fmt, limites))

      for(i in seq_along(freq))
        rect(limites[i],
             0,
             limites[i+1],
             freq[i],
             col=col,
             border="black")

    }

    ##=========================================================
    ## 2 - Polígono de frequência
    ##=========================================================

    if(2 %in% graf){

      par(mar=c(5,5,4,2)+0.1)

      plot(mids,
           freq,
           type="o",
           pch=16,
           lwd=2,
           col="red",
           xlab=xlab,
           ylab=ylab,
           main="Polígono de frequências",
           xaxt="n",
           las=1,
           bty="l")

      fmt <- paste0("%.", arred_LI1, "f")
      axis(1,
           at=limites,
           labels = sprintf(fmt, limites))

    }

    ##=========================================================
    ## 3 - Histograma + Polígono
    ##=========================================================

    if(3 %in% graf){

      par(mar=c(5,5,4,2)+0.1)

      plot(NA,
           xlim=xlim,
           ylim=c(0,max(freq)*1.1),
           xlab=xlab,
           ylab=ylab,
           main="Histograma e Polígono de frequências",
           type="n",
           xaxt="n",
           las=1,
           bty="l")

      fmt <- paste0("%.", arred_LI1, "f")
      axis(1,
           at=limites,
           labels = sprintf(fmt, limites))

      for(i in seq_along(freq))
        rect(limites[i],
             0,
             limites[i+1],
             freq[i],
             col=col,
             border="black")

      lines(mids,
            freq,
            type="o",
            pch=16,
            col="red",
            lwd=2)

    }

    ##=========================================================
    ## 4 - Ogiva crescente
    ##=========================================================

    if(4 %in% graf){

      par(mar=c(5,5,4,2)+0.1)

      plot(limites[-1],
           freq.acum,
           type="o",
           pch=16,
           lwd=2,
           col="blue",
           xlab=xlab,
           ylab="Frequência acumulada",
           main="Ogiva crescente",
           xaxt="n",
           ylim=c(0,max(freq.acum)),
           las=1,
           bty="l")

      fmt <- paste0("%.", arred_LI1, "f")
      axis(1,
           at=limites,
           labels = sprintf(fmt, limites))

    }

    ##=========================================================
    ## 5 - Ogiva decrescente
    ##=========================================================

    if(5 %in% graf){

      par(mar=c(5,5,4,2)+0.1)

      plot(limites[-length(limites)],
           freq.acum.inv,
           type="o",
           pch=16,
           lwd=2,
           col="darkgreen",
           xlab=xlab,
           ylab="Frequência acumulada",
           main="Ogiva decrescente",
           xaxt="n",
           ylim=c(0,max(freq.acum.inv)),
           las=1,
           bty="l")

      fmt <- paste0("%.", arred_LI1, "f")
      axis(1,
           at=limites,
           labels = sprintf(fmt, limites))



  }
    }
  out <- list(Tabela = df_tabela)
  invisible(out)
  cat("-----------------------------------------------------\n")
  cat("LI e LS - limite inferior e superior da classe\n")
  cat("PM - ponto medio da classe\n")
  cat("fi - frequencia absoluta da classe\n")
  cat("fr - frequencia relativa da classe\n")
  cat("fp - frequencia percentual da classe\n")
  cat("FAb - frequencia acumulada abaixo\n")
  cat("FpAb - frequencia percentual acumulada abaixo\n")
  cat("FAc - frequencia acumulada acima\n")
  cat("FpAc - frequencia percentual acumulada acima\n")

  cat("-----------------------------------------------------\n")
  cat("Outras informacoes:\n")
  cat("Numero de classes (k):", k,"\n")
  cat("Intervalo de classe (c):", C,"\n")
  cat("-----------------------------------------------------\n")


}




