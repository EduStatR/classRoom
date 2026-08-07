graf.pict <- function(x,
                      y,
                      figura,
                      valor,
                      xlab = "",
                      ylab = "",
                      legenda = TRUE,
                      legend.lab = NULL,
                      label = TRUE,
                      graf = TRUE) {

  if (!graf) graphics.off()

  # png e magick estão declarados em Imports no DESCRIPTION;
  # portanto, não fazemos checagens/instalações em tempo de execução.

  if (length(figura) == 1)
    figura <- rep(figura, length(x))

  if (length(figura) != length(x))
    stop("'figura' deve ter comprimento 1 ou igual ao número de categorias.")

  if (length(y) != length(x))
    stop("'y' deve possuir o mesmo comprimento de 'x'.")

  imgs    <- vector("list", length(figura))
  infos   <- vector("list", length(figura))
  rasters <- vector("list", length(figura))

  for (j in seq_along(figura)) {
    arq <- figura[j]

    if (!file.exists(arq)) {
      # Detecta o nome do pacote automaticamente; fallback para "classRoom" fora do pacote
      pkg <- utils::packageName()
      if (is.null(pkg)) pkg <- "classRoom"
      arq <- system.file("extdata", arq, package = pkg)
    }

    if (is.null(arq) || arq == "")
      stop(paste("Figura", figura[j], "não encontrada."))

    # Para desenhar com rasterImage:
    rasters[[j]] <- png::readPNG(arq)

    # Para operações com magick:
    imgs[[j]]  <- magick::image_read(arq)
    infos[[j]] <- magick::image_info(imgs[[j]])
  }

  op <- par(
    mar = c(5.1, 4.1, 4.1, 2.1),
    mgp = c(2.2, 0.6, 0),
    xpd = NA
  )
  on.exit(par(op), add = TRUE)

  plot(c(0, 4), c(0, 4), type = "n",
       xlim = c(0.5, length(x) + 0.5),
       ylim = c(0, max(y) + 1),
       xaxt = "n",
       xlab = xlab,
       ylab = ylab,
       cex = 2,
       main = "",
       yaxp = c(0, ceiling(max(y)), 10),
       bty = "l",
       las = 1)

  axis(1,
       at = seq_along(x),
       labels = x,
       las = 1)

  nfig   <- floor(y / valor)
  resto  <- y %% valor
  fracao <- resto / valor

  for (j in seq_along(nfig)) {
    if (nfig[j] > 0) {
      for (i in seq_len(nfig[j])) {
        rasterImage(rasters[[j]],
                    j - 0.35,
                    (i - 1) * valor,
                    j + 0.35,
                    i * valor)
      }
    }
  }

  for (j in seq_along(fracao)) {
    if (fracao[j] > 0) {
      altura <- round(infos[[j]]$height * fracao[j])

      crop <- sprintf("%dx%d+0+%d",
                      infos[[j]]$width,
                      altura,
                      infos[[j]]$height - altura)

      img.parcial <- magick::image_crop(imgs[[j]], crop)
      img.parcial <- as.raster(img.parcial)

      rasterImage(img.parcial,
                  j - 0.35,
                  nfig[j] * valor,
                  j + 0.35,
                  nfig[j] * valor + resto[j])
    }
  }

  usr <- par("usr")

  if (legenda) {
    legend_txt <- if (is.null(legend.lab)) {
      paste("Obs.: 1 figura =", valor, "unidade(s)\n-------------")
    } else {
      paste("Obs.: 1 figura =", valor, legend.lab, "\n-------------")
    }

    text(mean(usr[1:2]),
         usr[4] + 0.1 * diff(usr[3:4]),
         labels = legend_txt,
         xpd = NA,
         cex = 0.7)

    if (label) {
      text(seq_along(x),
           y + 0.05 * diff(usr[3:4]),
           labels = y,
           cex = 0.8,
           font = 1)
    }
  }
}
