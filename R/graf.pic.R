graf.pict<-function(x,
                    y,
                    figura,
                    valor,
                    xlab = "",
                    ylab = "",
                    legenda = TRUE,
                    legend.lab = NULL,
                    label=TRUE,
                    graf=TRUE){

  if(!graf) graphics.off()

  if (!requireNamespace("png", quietly = TRUE))
    stop("O pacote 'png' precisa ser instalado.")

  if (!requireNamespace("magick", quietly = TRUE))
    stop("O pacote 'magick' precisa ser instalado.")

  if (!require("BiocManager", quietly = TRUE))
    #    install.packages("BiocManager")
    stop("O pacote 'BiocManager' precisa ser instalado.")

  if(length(figura) == 1)
    figura <- rep(figura, length(x))

  if(length(figura) != length(x))
    stop("'figura' deve ter comprimento 1 ou igual ao número de categorias.")

  if(length(y) != length(x))
    stop("'y' deve possuir o mesmo comprimento de 'x'.")

  if(length(figura) != length(x))
    stop("'figura' deve possuir comprimento 1 ou o mesmo comprimento de 'x'.")


  imgs <- vector("list", length(figura))
  infos <- vector("list", length(figura))
  rasters <- vector("list", length(figura))

  for(j in seq_along(figura)){

    arq <- figura[j]

    if(!file.exists(arq))
      arq <- system.file("extdata", arq, package="classRoom")

    if(arq == "")
      stop(paste("Figura", figura[j], "não encontrada."))

    rasters[[j]] <- png::readPNG(arq)

    imgs[[j]] <- magick::image_read(rasters[[j]])

    infos[[j]] <- magick::image_info(imgs[[j]])

  }

    par(
    mar = c(5.1, 4.1, 4.1, 2.1),
    mgp = c(2.2,0.6,0),
    xpd = NA
  )

  plot(c(0,4), c(0,4), type = "n",
       xlim <- c(0.5,length(x)+0.5),
       ylim <- c(0,max(y)+1),
       xaxt="n",
       xlab= xlab,cex=2,main="", yaxp=c(0,ceiling(max(y)),10),
       ylab = ylab,bty="l",las=1)


  axis(1,
       at=seq_along(x),
       labels=x,
       las=1)

  nfig    <- floor(y/valor)
  resto   <- y %% valor
  fracao  <- resto/valor

  for(j in seq_along(nfig)){

  for(i in seq_len(nfig[j])){

      rasterImage(rasters[[j]],
                  j-0.35,
                  (i-1)*valor,
                  j+0.35,
                  i*valor)
    }
  }

  for(j in seq_along(fracao)){

    if(fracao[j] > 0){

      altura <- round(infos[[j]]$height * fracao[j])

      crop <- sprintf("%dx%d+0+%d",
                      infos[[j]]$width,
                      altura,
                      infos[[j]]$height-altura)

      img.parcial <- magick::image_crop(imgs[[j]], crop)
      img.parcial <- as.raster(img.parcial)

      rasterImage(img.parcial,
                  j-0.35,
                  nfig[j]*valor,
                  j+0.35,
                  nfig[j]*valor + resto[j])
    }
  }
  usr <- par("usr")

  if(legenda){
  if (is.null(legend.lab)) {
    legenda <- paste("Obs.: 1 figura =", valor, "unidade(s)\n-------------")
  } else {
    legenda <- paste("Obs.: 1 figura =", valor, legend.lab,"\n-------------")
  }

  text(mean(usr[1:2]),
       usr[4] + 0.1 * diff(usr[3:4]),
       labels = legenda,
       xpd = NA,
       cex = 0.7)

  if(label){

    text(seq_along(x),
         y + 0.05 * diff(par("usr")[3:4]),
         labels = y,
         cex = 0.8,
         font = 1)
  }
  }
  }
