graf.col <- function(x,
                     xlab = "Título do eixo x",
                     ylab = "Frequência",
                     col = "darkblue",
                     orientation = 2,
                     graf=TRUE){

  if(!graf) graphics.off()

  ##-----------------------------------------
  ## Tabela de frequências
  ##-----------------------------------------

  if(is.numeric(x)){

    Xi  <- seq(min(x), max(x))
    tab <- table(factor(x, levels = Xi))

  } else{

    tab <- table(x)

  }

  ##-----------------------------------------
  ## Orientação do gráfico
  ##-----------------------------------------

  if(is.numeric(orientation)){

    if(orientation == 1){

      orientation <- "horizontal"

    } else if(orientation == 2){

      orientation <- "vertical"

    } else{

      stop("Use orientation = 1 (horizontal) ou orientation = 2 (vertical).")

    }

  }

  if(!orientation %in% c("horizontal","vertical")){

    stop("orientation deve ser 1, 2, 'horizontal' ou 'vertical'.")

  }

  ##-----------------------------------------
  ## Limites
  ##-----------------------------------------

  lim <- max(tab) * 1.20

  ##-----------------------------------------
  ## Gráfico horizontal
  ##-----------------------------------------

  if(orientation == "horizontal"){

    barra <- barplot(tab,
                     horiz = TRUE,
                     xlim = c(0, lim),
                     xlab = xlab,
                     ylab = ylab,
                     las = 1,
                     col = col,
                     border = "black")

    box(bty = "l")

    text(tab,
         barra,
         labels = tab,
         pos = 4,
         cex = 0.9)

  }

  ##-----------------------------------------
  ## Gráfico vertical
  ##-----------------------------------------

  else{

    coluna <- barplot(tab,
                      horiz = FALSE,
                      ylim = c(0, lim),
                      xlab = xlab,
                      ylab = ylab,
                      las = 1,
                      col = col,
                      border = "black")

    box(bty = "l")

    text(coluna,
         tab,
         labels = tab,
         pos = 3,
         cex = 0.9)

  }

  invisible(tab)

}
