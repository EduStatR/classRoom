OR_RR<-function(conf.level = 0.95){
  r=2;c=2
  N<-rep(0,r)
  M<-rep(0,c)

  MI<-N%*%t(M)
  colnames(MI)<-c(LETTERS[1:c])
  tab_aux <- data.frame(MI)
  Ma <- edit(tab_aux)
  edicao1<-as.matrix(Ma)
  alpha<-1-conf.level
  probs = c((1-alpha/2),((alpha)/2))
  a<-qnorm(probs)
  OR<-(Ma[1, 1] * Ma[2, 2]) / (Ma[1, 2] * Ma[2, 1])
  IC1a<-exp(log(OR)+a[2]*sqrt(1/Ma[1, 1]+1/ Ma[2, 2]+1/ Ma[1, 2]+1/ Ma[2, 1]))
  IC2a<-exp(log(OR)+a[1]*sqrt(1/Ma[1, 1]+1/ Ma[2, 2]+1/ Ma[1, 2]+1/ Ma[2, 1]))

  RR<-(Ma[1, 1] *((Ma[1, 2]+Ma[2, 2])))/(Ma[1, 2]*(Ma[1, 1]+Ma[2, 1]))
  IC1b<-exp(log(RR)+a[2]*sqrt((Ma[2, 1]/Ma[1, 1])/(Ma[1, 1]+Ma[2, 1])+(Ma[2, 2]/Ma[1, 2])/(Ma[1, 2]+Ma[2, 2])))
  IC2b<-exp(log(RR)+a[1]*sqrt((Ma[2, 1]/Ma[1, 1])/(Ma[1, 1]+Ma[2, 1])+(Ma[2, 2]/Ma[1, 2])/(Ma[1, 2]+Ma[2, 2])))

  cat("------------------------\n")
  cat("Razao de chances\n")
  cat("OR = ", round(OR,2),"\n")
  cat("Intervalo de confianca:\n")
  cat("IC(OR)(",conf.level*100,"%",") = [",round(IC1a,4),";", round(IC2a,4),"]\n")
  cat("------------------------\n")
  cat("Razao de risco\n")
  cat("RR = ", round(RR,2),"\n")
  cat("Intervalo de confianca:\n")
  cat("IC(RR)(",conf.level*100,"%",") = [",round(IC1b,4),";", round(IC2b,4),"]\n")
  cat("------------------------\n")
}

