med.cent <- function(x)
{
  if(is.numeric(x))
  {
    media <- mean(x)
    mediana <- median(x)

    # Moda pela frequencia
    dd <- table(x)
    max_count <- max(dd)

    moda_values <- as.numeric(names(dd[dd == max_count]))

    if(length(moda_values) == length(dd))
    {
      vmodal <- "Nao tem moda"
    }
    else
    {
      vmodal <- moda_values
    }

    # Moda para variavel quantitativa continua
    density_info <- density(x, na.rm = TRUE)

    vmodal1 <-
      density_info$x[which.max(density_info$y)]
  }

  else
  {
    media <- mediana <- "Nao calculada, variavel qualitativa"

    # Moda para variavel qualitativa
    dd <- table(x)
    max_count <- max(dd)

    moda_values <- names(dd[dd == max_count])

    if(length(moda_values) == length(dd))
    {
      vmodal <- "Nao tem moda"
    }
    else
    {
      vmodal <- moda_values
    }
  }

  # Saida
  cat("\n----------------------\n")
  cat("Resultado\n")
  cat("----------------------\n")

  cat("Media\n")
  cat("x\u0304 =", media, "\n\n")

  cat("Mediana\n")
  cat("md =", mediana, "\n\n")

  cat("Moda\n")
  cat("mo =", vmodal, "\n")

  if(is.numeric(x))
  {
    cat("\n")
    cat("Se a variavel for continua:\n")
    cat("mo =", round(vmodal1, 4), "\n")
  }

  cat("----------------------\n")
}
