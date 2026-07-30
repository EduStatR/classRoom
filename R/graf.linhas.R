graf.linhas <- function(dados,
                        x,
                        resp,
                        col = NULL,
                        pch = NULL,
                        lty = NULL,
                        lwd = 2,
                        label = TRUE,
                        legenda = TRUE,
                        xlab = NULL,
                        ylab = "",
                        las = 1,
                        graf=TRUE){

  if(!graf) graphics.off()

  ##-----------------------------------------
  ## Nome da variável x
  ##-----------------------------------------

  x.nome <- deparse(substitute(x))

  ##-----------------------------------------
  ## Variáveis resposta
  ##-----------------------------------------

  respostas <- sapply(substitute(resp)[-1], deparse)

  nresp <- length(respostas)

  ##-----------------------------------------
  ## Vetor x
  ##-----------------------------------------

  x <- dados[[x.nome]]

  ##-----------------------------------------
  ## Matriz das respostas
  ##-----------------------------------------

  Y <- sapply(respostas, function(v) dados[[v]])

  if(is.vector(Y))
    Y <- matrix(Y, ncol = 1)

  ##-----------------------------------------
  ## Cores
  ##-----------------------------------------

  if(is.null(col)){

    if(nresp <= 8){

      col <- c("black","blue","red","lightgreen",
               "purple","orange","brown","cyan")[1:nresp]

    }else{

      if(is.null(col)){

        if(nresp == 1){

          col <- "black"

        } else if(nresp <= 8){

          col <- c("black","blue","red","darkgreen",
                   "purple","orange","brown","cyan")[1:nresp]

        } else{

          col <- gray.colors(nresp,
                             start=.25,
                             end=.85)

        }

      }

    }

  }

  ##-----------------------------------------
  ## Símbolos
  ##-----------------------------------------

  if(is.null(pch))
    # pch <- seq_len(nresp) #aqui pode inserir a lista de pch
      pch<-rep(16,nresp)
  ##-----------------------------------------
  ## Tipos de linha
  ##-----------------------------------------

  if(is.null(lty))
    lty <- rep(1,nresp)

  ##-----------------------------------------
  ## Limites
  ##-----------------------------------------

  dx <- if(length(unique(x)) > 1)
    diff(range(seq_along(x)))
  else 1

  dy <- diff(range(Y, na.rm = TRUE))

  ylim <- c(min(Y, na.rm = TRUE)-0.05*dy,
            max(Y, na.rm = TRUE)+0.12*dy)

  ##-----------------------------------------
  ## Eixo x
  ##-----------------------------------------

  if(is.numeric(x)){

    eixo.x <- x
    labels.x <- x

  }else{

    eixo.x <- seq_along(x)
    labels.x <- x

  }


  par(mar = c(5,4,6,2))

  ##-----------------------------------------
  ## Primeiro gráfico
  ##-----------------------------------------

  plot(eixo.x,
       Y[,1],
       type="o",
       pch=pch[1],
       col=col[1],
       lwd=lwd,
       lty=lty[1],
       xaxt="n",
       las=las,
       bty="l",
       xlab=ifelse(is.null(xlab),x.nome,xlab),
       ylab=ylab,
       ylim=ylim)

  axis(1,
       at=eixo.x,
       labels=labels.x)

  ##-----------------------------------------
  ## Demais linhas
  ##-----------------------------------------

  if(nresp > 1){

    for(i in 2:nresp){

      lines(eixo.x,
            Y[,i],
            type="o",
            pch=pch[i],
            col=col[i],
            lwd=lwd,
            lty=lty[i])

    }

  }

  ##-----------------------------------------
  ## Valores
  ##-----------------------------------------

  if(label){

    for(i in 1:nresp){

      text(eixo.x,
           Y[,i],
           labels=round(Y[,i],2),
           pos=3,
           cex=.75,
           col=col[i])

    }

  }

  ##-----------------------------------------
  ## Legenda
  ##-----------------------------------------

  if(legenda){

    par(xpd = NA)
    legend("top",inset = c(0,-0.15),
           legend = respostas,
           col=col,
           lwd=lwd,
           lty=lty,
           pch=pch,
           bty="n",
           horiz=TRUE,
           cex=0.7
    )

  }

}


