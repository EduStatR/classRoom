graf.linha <- function(x,
                       y,
                       xlab = "Título do eixo x",
                       ylab = "Título do eixo y",
                       col = "blue",
                       pch = 16,
                       lwd = 2,
                       lty = 1,
                       labels = TRUE,
                       cex = 0.8,
                       graf=TRUE){

  if(!graf) graphics.off()

  ##-----------------------------------------
  ## Eixo x
  ##-----------------------------------------

  if(is.numeric(x)){

    eixo.x <- x
    labels.x <- x

    dx <- diff(range(x))

    xlim <- c(min(x)-0.05*dx,
              max(x)+0.05*dx)

  }else{

    eixo.x <- seq_along(x)
    labels.x <- x

    xlim <- c(0.8,length(x)+0.2)

  }


  if(length(x) != length(y))
    stop("x e y devem possuir o mesmo comprimento.")

  #dx <- diff(range(x))
  dy <- diff(range(y))

  plot(eixo.x, y,
       type = "o",
       pch = pch,
       col = col,
       lwd = lwd,
       lty = lty,
       las = 1,
       bty = "l",
       xlab = xlab,
       ylab = ylab,
       xlim=xlim,
       #xlim = c(min(x)-0.05*dx,
        #        max(x)+0.05*dx),
       ylim = c(min(y)-0.05*dy,
                max(y)+0.10*dy),
       #ylim=ylim,
       xaxt="n")

  axis(1,
       at=eixo.x,
       labels=labels.x)


  if(labels){

    text(eixo.x,
         y,
         labels = y,
         pos = 3,
         cex = cex)

  }

}



