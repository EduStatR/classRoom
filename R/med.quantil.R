med.quantil<-function(x,p){
  #if(is.numeric(x)){if(p%in%seq(0,100,0.0001)){
  if(is.numeric(x)){if(p >= 0 && p <= 100){
    perc<-quantile(x, probs = c(p/100))
    cat("Resultado\n")
    cat("------------------\n")
    cat("Valor do quantil: ",p," = ",perc,"\n")}
    else{cat("Resultado\n")
      cat("------------------\n")
      cat("Observe o valor informado do quantil,\n")
      cat("este nao e um valor valido.")}
  }
  else{cat("Resultado\n")
    cat("------------------\n")
    cat("Nao e possivel calcular o quantil.\n")}
}


