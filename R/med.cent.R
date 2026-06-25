med.cent<-function(x){
  if(is.numeric(x)){
    media<-mean(x)
    mediana<-median(x)
    tol <- .Machine$double.eps^0.5
    is_whole_number <- function(x) abs(x - round(x)) < tol
    all(is_whole_number(x))
      # Mode for integer vectors
      dd <- table(x)
      max_count <- max(dd)
      moda_values <- as.numeric(names(dd[dd == max_count]))

      if (length(moda_values) == length(dd)) {
        vmodal <- "Nao tem moda"
      } else {
        vmodal <- moda_values
      }

      # Mode for non-integer vectors using density
      density_info <- density(x, na.rm = TRUE)
      vmodal1 <- density_info$x[which.max(density_info$y)]
    }

  else{media<-mediana<-c("Nao calculada, variavel qualitativa")
  dd<-table(x)
    valores<-which(dd==max(dd))
    vmodal<-0
    for(i in 1:(length(valores)))
      if (i==1) {vmodal<-(names(valores[i]))}
    else
    {vmodal<-c(vmodal,(names(valores[i])))}
    if (length(vmodal)==length(dd)){
      vmodal<-c("Nao tem moda")
    }
  }


  cat("Resultado\n")
  cat("------------------\n")
  cat("Media = ",media,"\n")
  cat("Mediana = ",mediana,"\n")
  cat("Moda = ",vmodal,"\n")
  if(is.numeric(x)){cat("Moda = ",vmodal1,"(Se a variavel for quantitativa continua)\n")}
}


