  freq.dupla <- function(x, y, graf = FALSE)
  {
    if(!graf) graphics.off()

    # Captura os nomes originais dos vetores
    nome_x <- deparse(substitute(x))
    nome_y <- deparse(substitute(y))

    # Define rotulos
    xlab <- nome_x
    ylab <- "Frequencia"
    leg.tit <- nome_y

    # Cria o data.frame com os nomes originais das variaveis
    df <- data.frame(x, y)
    names(df) <- c(nome_x, nome_y)

    # Formula dinamica
    form <- as.formula(paste("~", nome_y, "+", nome_x))

    # Cria a tabela de contingencia
    tab <- xtabs(form, data = df)

    # Limite do eixo y
    lim <- 1.2 * max(tab) + nrow(tab)

    # Gera a paleta de cores
    col <- c("cyan", "lightgreen")
    corDegrade <- colorRampPalette(col)
    col <- corDegrade(nrow(tab))

    # Grafico
    if(graf)
    {
      coluna_just <- barplot(
        tab,
        beside = TRUE,
        ylim = c(0, lim),
        xlab = xlab,
        ylab = ylab,
        las = 1,
        col = col
      )

      text(
        coluna_just,
        tab,
        labels = tab,
        pos = 3,
        cex = 1
      )

      legend(
        x = max(coluna_just / 2) + 1,
        y = 1.2 * max(tab) + nrow(tab),
        col = col,
        legend = rownames(tab),
        bty = "n",
        xpd = TRUE,
        pch = 15,
        cex = 0.8,
        title = leg.tit
      )

      abline(h = 0)
    }

    # Tabela de dupla entrada
    cat("\nTabela de dupla entrada\n")
    cat("----------------------------------------\n")

    # Nome da variavel das colunas
    cat(sprintf("%-15s", ""))

    largura <- 8 * ncol(tab) + 8

    cat(sprintf("%*s\n",
                nchar(nome_x) + (8 * ncol(tab)) / 2,
                nome_x))

    # Cabecalho
    cat(sprintf("%-15s", nome_y))

    for(j in seq_len(ncol(tab)))
    {
      cat(sprintf("%8s", colnames(tab)[j]))
    }

    cat(sprintf("%8s\n", "Total"))

    cat("----------------------------------------\n")

    # Linhas
    for(i in seq_len(nrow(tab)))
    {
      cat(sprintf("%-15s", rownames(tab)[i]))

      for(j in seq_len(ncol(tab)))
      {
        cat(sprintf("%8d", tab[i, j]))
      }

      cat(sprintf("%8d\n", sum(tab[i, ])))
    }

    cat("----------------------------------------\n")

    # Total das colunas
    cat(sprintf("%-15s", "Total"))

    for(j in seq_len(ncol(tab)))
    {
      cat(sprintf("%8d", sum(tab[, j])))
    }

    cat(sprintf("%8d\n", sum(tab)))

    cat("----------------------------------------\n")
  }
