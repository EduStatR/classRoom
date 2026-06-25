freq.dupla <- function(x, y,graf=TRUE) {
 if(!graf) graphics.off()

  # Captura os nomes originais dos vetores
  nome_x <- deparse(substitute(x))
  nome_y <- deparse(substitute(y))

  # Define rótulos default se não forem passados
  xlab <- nome_x
  ylab <- "Frequencia"
  leg.tit<-nome_y
  # Cria o data.frame com os nomes originais das variáveis
  df <- data.frame(x, y)
  names(df) <- c(nome_x, nome_y)

  # Fórmula dinâmica: ~ y + x com nomes originais
  form <- as.formula(paste("~", nome_y, "+", nome_x))

  # Cria a tabela de contingência
  tab <- xtabs(form, data=df)

  # Limite do eixo y
  lim <- 1.2*max(tab) + nrow(tab)

  # Gera a paleta de cores
  col=c("cyan","lightgreen")
  corDegrade <- colorRampPalette(col)
  col <- corDegrade(nrow(tab))

  if(graf){


    coluna_just <- barplot(tab, beside=TRUE, ylim=c(0, lim),
                           xlab=xlab, ylab=ylab,
                           las=1, col=col)

    text(coluna_just, tab, labels=tab, pos=3, cex=1)

    legend(x = max(coluna_just/2) + 1, y = 1.2*max(tab)  + nrow(tab),
           col=col, legend=rownames(tab), bty="n", xpd=TRUE,
           pch=15, cex=0.8, title=leg.tit)
    abline(h=0)
  }
  # Imprimir a tabela de forma adequada, sem nomes de linhas
  cat("\n   Tabela de dupla entrada\n")
  cat("----------------------------------\n")
  print(tab)
  cat("-----------------------------------\n")
}

