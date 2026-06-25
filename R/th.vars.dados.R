th.vars.dados<-function(x,y,alpha=0.05,graf=TRUE){
  var1<-var(x)
  var2<-var(y)
  n1<-length(x)
  n2<-length(y)
  fcalc<-round(max(var1,var2)/min(var1,var2),3)
  if(var1>var2){
    df1=n1-1
    df2=n2-1
  }
  else{
    df1=n2-1
    df2=n1-1
  }
  pval <- pf(fcalc, df1, df2, lower=F)


  if(!graf) graphics.off()


  a<-round(qf(alpha, df1, df2, ncp=0, lower.tail = FALSE, log.p = FALSE),3)
    if(df2==1){b=250}
  else(b=10)
  curve(df(x, df1=df1,df2=df2), from=-0.001, to=b, col='blue',
        ylab="",xlab="",bty = "l",las=1)
  abline(v=a,lwd=2,col=3,lty=2)
  abline(h=0)
  axis(1,c(a,fcalc),labels=c(a,fcalc),col.axis="red",padj = -1)
  rx<-seq(fcalc,650,by=.001)
  ry<-numeric(2*length(rx))
  ry[1:length(rx)]<-df(rx,df1,df2)
  rx<-c(rx,rev(rx))
  polygon(rx,ry,col="red")
  abline(v=a,lwd=2,col="blue",lty=2)
  abline(v=fcalc,lwd=2,col=3,lty=2)
  abline(h=0)
  legend("topright", legend = c("Area = valor-p","Limite da regiao critica","Estatistica de teste"),
         pch = c(15,NA,NA),lwd=2,lty=c(-1,2,2),col=c("red","blue","green"),bty = "o",
         title="Legenda",box.lty = 1,box.lwd = 2,box.col = "black",bg = "lightyellow",cex=0.7)
  legend(0,0.3, legend = c("Região de não \n rejeição H0"),
         bty = "n",cex=.7)
  legend(a,0.3, legend = c("Região de \n rejeição H0"),
         bty = "n",cex=.7)

  A<-matrix(c(round(var1,4),round(var2,4),n1,n2),
            ncol = 2,nrow=2, byrow=TRUE,dimnames = list(c("Variancia","n"),c("x","y")))
  cat("------------------------------\n")
  cat("Resultados:\n")
  print(A)
  cat("F","(",alpha*100,"%,",df1,",",df2,")=",round(a[1],3),"\n")
  cat("F_calc","=",round(fcalc,3),"\n")
  cat("Valor-p","=",round(pval,4),"\n")
  cat("------------------------------\n")
}






