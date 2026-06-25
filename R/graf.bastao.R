graf.bastao <- function(x,
                        col = "blue",
                        xlab = "",
                        ylab = "Frequência",
                        cex = 1.5,
                        completo = TRUE,
                        ...){

  # Ordenação dos dados
  x <- sort(x)


  #--------------------------------------
  # Dados quantitativos discretos
  #--------------------------------------

  if(is.numeric(x)){


    if(completo){

      # cria todos os valores possíveis
      eixo <- seq(min(x), max(x))

      # inclui valores com frequência zero
      freq <- table(factor(x,
                           levels = eixo))

    } else {

      # somente valores observados
      freq <- table(x)

    }


    plot(freq,
         type = "h",
         lwd = 3,
         col = col,
         pch = 20,
         cex = cex,
         xlab = xlab,
         ylab = ylab,
         bty = "l",
         las = 1,
         ...)


  }


  #--------------------------------------
  # Dados qualitativos
  #--------------------------------------

  else{


    freq <- table(x)


    plot(freq,
         type = "h",
         lwd = 3,
         col = col,
         pch = 20,
         cex = cex,
         xlab = xlab,
         ylab = ylab,
         bty = "l",
         las = 1,
         xaxt = "n",
         ...)


    axis(1,
         at = seq_along(freq),
         labels = names(freq))

  }


  #--------------------------------------
  # Mensagem didática
  #--------------------------------------

  cat(
    "\nGRÁFICO DE BASTÃO\n",
    "====================================\n",
    "• Cada bastão representa a frequência de uma categoria ou valor.\n",
    "• A altura do bastão indica quantas vezes o valor ocorreu.\n",
    "• Valores sem ocorrência aparecem com frequência zero quando\n",
    "  a opção completo = TRUE está ativada.\n",
    "====================================\n"
  )

}









