med.quantil<-function(x,p){
  if(is.numeric(x)){if(p%in%seq(0,100,0.0001)){
    perc<-quantile(x, probs = c(p/100))
    cat("Resultado\n")
    cat("------------------\n")
    cat("Valor do percentil",p," = ",perc,"\n")}
    else{cat("Observe o valor informado do quantil")}
  }
  else{cat("Nao e possivel calcular o quantil\n")}

}


