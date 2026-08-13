med.var<-function(x){
  if(is.numeric(x)){
    variancia<-var(x)
    desvio_padrao<-sd(x)
    coef_var<-round(sd(x)/mean(x)*100,2)
    A<-max(x)-min(x)
    IQR<-quantile(x,0.75)-quantile(x,0.25)
    }
  else variancia<-desvio_padrao<-coef_var<-IQR<-"Nao calculada, variavel qualitativa"

  cat("Resultado\n")
  cat("------------------\n")
  cat("Variancia:  s\u00B2 = ",variancia,"\n")
  cat("Desvio padrao: s = ",desvio_padrao,"\n")
  if(is.numeric(x)){cat("Coeficiente de variacao: cv = ",coef_var,"%\n")}
  else{cat("Coeficiente de variacao: cv = ",coef_var,"\n")}
  cat("Amplitude: A = ",A,"\n")
  cat("Intervalo interquartilico: IQR = ",IQR,"\n")
  }




