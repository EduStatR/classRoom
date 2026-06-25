graf.col2 <- function(x, y,
                      xlab="Titulo do eixo-x (uma variavel)",
                      ylab="Titulo do eixo-y (frequencia)",
                      leg.tit="Titulo da legenda (outra variavel)",
                      col=c("cyan","lightgreen")) {

  # Captura os nomes originais dos vetores
  nome_x <- deparse(substitute(x))
  nome_y <- deparse(substitute(y))

  # Define rótulos default se não forem passados
  if (is.null(xlab)) xlab <- nome_x
  if (is.null(ylab)) ylab <- "Frequencia"

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
  corDegrade <- colorRampPalette(col)
  col <- corDegrade(nrow(tab))

  # Gráfico de barras
  coluna_just <- barplot(tab, beside=TRUE, ylim=c(0, lim),
                         xlab=xlab, ylab=ylab,
                         las=1, col=col)

  # Adiciona rótulos nos topos das barras
  text(coluna_just, tab, labels=tab, pos=3, cex=1)

  # Legenda

 legend(x = max(coluna_just/2) + 1, y = 1.2*max(tab)  + nrow(tab),
        col=col, legend=rownames(tab), bty="n", xpd=TRUE,
        pch=15, cex=0.8, title=leg.tit)
  abline(h=0)
  #print(tab)
}


