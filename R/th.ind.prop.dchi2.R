th.ind.prop.dchi2<-function(r,c, correcao=TRUE,dados=TRUE,esp=TRUE,cont=TRUE,alpha=0.05,graf=TRUE){
  N<-rep(0,r)
  M<-rep(0,c)
  MI<-N%*%t(M)
  colnames(MI)<-c(LETTERS[1:c])
  tab_aux <- data.frame(MI)
  edicao <- edit(tab_aux)
  data<-edicao

  qui2<-chisq.test(data, correct = correcao,
             p = rep(1/length(nrow(data)), length(nrow(data))), rescale.p = FALSE,
             simulate.p.value = FALSE, B = 2000)

  expec<-qui2$expected
  qui<-round(qui2$statistic,3)
  df<-qui2$parameter
  a<-round(qchisq(alpha, df, ncp=0, lower.tail = FALSE, log.p = FALSE),3)

if(!graf) graphics.off()


  if(alpha<=.5){b=3*a}
  else{b=300*a}
  curve(dchisq(x, df=df), from=-0.01, to=b, col='blue',
        ylab="",xlab="",bty = "l",las=1)
  abline(v=a,lwd=2,col=3,lty=2)
  abline(h=0)


  axis(1,c(a,qui),labels=c(a,qui),col.axis="red",padj = -1)
  rx<-seq(qui,650,by=.001)
  ry<-numeric(2*length(rx))
  ry[1:length(rx)]<-dchisq(rx,df)
  rx<-c(rx,rev(rx))
  polygon(rx,ry,col="red")
  abline(v=a,lwd=2,col="blue",lty=2)
  abline(v=qui,lwd=2,col=3,lty=2)
  abline(h=0)
  legend("topright", legend = c("Area = valor-p","Limite da regiao critica","Estatistica de teste"),
         pch = c(15,NA,NA),lwd=2,lty=c(-1,2,2),col=c("red","blue","green"),bty = "o",
         title="Legenda",box.lty = 1,box.lwd = 2,box.col = "black",bg = "lightyellow",cex=0.7)

  y_max <- max(dchisq(seq(0, 20, length.out = 500), df))

  legend(0,y_max/2, legend = c("Região de não \n rejeição H0"),
         bty = "n",cex=.7)
  legend(a,y_max/2, legend = c("Região de \n rejeição H0"),
         bty = "n",cex=.7)
  cat("------------------------\n")
  cat("Resultados:\n")
  cat("\u03C7\u00B2c = ",qui,"\n")
  cat("\u03C7\u00B2","(",alpha*100, "%,",df,") = ", round(a, 3),"\n")
  if (chisq.test(edicao,correct=correcao)$p.value>0.0001){
    cat("Valor-p","=",round(chisq.test(edicao,correct=correcao)$p.value,4),"\n")
  }else{cat("Valor-p = < 0.0001 \n")}
  cat("\n")
  if(dados==TRUE){
    cat("Valores observados:\n")
    print(data)}
  cat("\n")
  if(esp==TRUE){
    cat("Valores esperados:\n")
    print(round(expec,4))
  }
  cat("\n")
  if(cont==TRUE){
    cat("Coeficiente de contigencia:\n")
    cat("C = ",round(sqrt(qui/(sum(edicao)+qui)),4),  "\n")
  }

  cat("------------------------\n")
}


