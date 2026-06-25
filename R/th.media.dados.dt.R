th.media.dados.dt<-function(mi0,x,tipo="B",alpha=0.05,graf=TRUE){
  media<-mean(x)
  n<-length(x)
  tc = (media-mi0)/sqrt(var(x)/n)
if(!graf) graphics.off()

  curve(dt(x, df=n-1), from=-4, to=4, col='blue',
        ylab="",xlab="",main="Distribuição da estatística do teste",bty = "l",las=1)
  tc1<-0
  if(tipo=="B"){
    probs = c((1-alpha/2),((alpha)/2))
    a<-qt(probs,df=n-1)
    axis(1,c(a[2],a[1],tc,-tc),labels=round(c(a[2],a[1],tc,-tc),3),
         col.axis="red",padj = -2,cex.axis=.7)
    if (abs(tc)>5){tc1<-4}else{tc1<-tc}
    rx<-seq(abs(tc1),5,by=.001)     #limite superior =5
    ry<-numeric(2*length(rx))
    ry[1:length(rx)]<-dt(rx,df=n-1,log=FALSE)
    rx<-c(rx,rev(rx))
    polygon(rx,ry,col="red")
    polygon(-rx,ry,col="red")
    abline(v=a,lwd=2,col="blue",lty=2)
    abline(v=tc,lwd=2,col=3,lty=2)
    abline(v=-tc,lwd=2,col=3,lty=2)
    abline(h=0)
    legend("topright", legend = c("Area = valor-p","Limite da região crítica","Estatística do teste"),
           pch = c(15,NA,NA),lwd=2,lty=c(-1,2,2),col=c("red","blue","green"),bty = "o",
           title="Legenda",box.lty = 1,box.lwd = 2,box.col = "black",bg = "lightyellow",cex=0.7)
    legend("center", legend = c("Região de não \n rejeição H0"),
           bty = "n",cex=.9)
    legend("left", legend = c("Região de \n rejeição H0"),
           bty = "n",cex=.9)
    legend("right", legend = c("Região de \n rejeição H0"),
           bty = "n",cex=.9)
    valor.p = 2*pt(q=abs(tc), df=n-1, lower.tail = FALSE)}
   if(tipo=="E"){
    probs = c(alpha)
    a<-qt(probs,df=n-1)
    axis(1,c(a,tc),labels=round(c(a,tc),3),
         col.axis="red",padj = -2,cex.axis=.7)
    if (abs(tc)>5){tc1<-4}else{tc1<-tc}
    rx<-seq(-5,tc1,by=.001)
    ry<-numeric(2*length(rx))
    ry[1:length(rx)]<-dt(rx,df=n-1,log=FALSE)
    rx<-c(rx,rev(rx))
    polygon(rx,ry,col="red")
    abline(v=a,lwd=2,col="blue",lty=2)
    abline(v=tc,lwd=2,col=3,lty=2)
    abline(h=0)
    legend("right", legend = c("Area = valor-p","Limite da região crítica","Estatística do teste"),
           pch = c(15,NA,NA),lwd=2,lty=c(-1,2,2),col=c("red","blue","green"),bty = "o",
           title="Legenda",box.lty = 1,box.lwd = 2,box.col = "black",bg = "lightyellow",cex=0.7)
    legend("center", legend = c("Região de não \n rejeição H0"),
           bty = "n",cex=.9)
    legend("left", legend = c("Região de \n rejeição H0"),
           bty = "n",cex=.9)
    valor.p = pt(q=tc, df=n-1, lower=TRUE)}
  if(tipo=="D"){
    probs = c(1-alpha)
    a<-qt(probs,df=n-1)
    axis(1,c(a,tc),labels=round(c(a,tc),3),
         col.axis="red",padj = -2,cex.axis=.7)
    if (abs(tc)>5){tc1<-4}else{tc1<-tc}
    rx<-seq(tc1,5,by=.001)
    ry<-numeric(2*length(rx))
    ry[1:length(rx)]<-dt(rx,df=n-1,log=FALSE)
    rx<-c(rx,rev(rx))
    polygon(rx,ry,col="red")
    abline(v=a,lwd=2,col="blue",lty=2)
    abline(v=tc,lwd=2,col=3,lty=2)
    abline(h=0)
    legend("left", legend = c("Area = valor-p","Limite da região crítica","Estatística do teste"),
           pch = c(15,NA,NA),lwd=2,lty=c(-1,2,2),col=c("red","blue","green"),bty = "o",
           title="Legenda",box.lty = 1,box.lwd = 2,box.col = "black",bg = "lightyellow",cex=0.7)
    legend("center", legend = c("Região de não \n rejeição H0"),
           bty = "n",cex=.9)
    legend("right", legend = c("Região de \n rejeição H0"),
           bty = "n",cex=.9)
    valor.p = pt(q=tc, df=n-1, lower=FALSE)}
  cat("------------------------------------\n")
  cat("Resultados:\n")
  cat("\u03BC0 =",mi0,"\n") #cat("\u03BC\u2080 =",mi0,"\n")
  cat("x\u0305 =",media,"\n")
  cat("s\u00B2 =",var(x),"\n")
  cat("n =",n,"\n")
  if(tipo=="B"){
    cat("t","(",probs[2]*100,"%,",df=n-1,")=",round(a[1],3),"\n")}
  if(tipo=="E"){
    cat("t","(",probs*100,"%,",df=n-1,")=",round(a,3),"\n")
  }
  if(tipo=="D"){
    cat("t","(",(1-probs)*100,"%,",df=n-1,")=",round(a,3),"\n")
  }
  cat("tc","=",round(tc,3),"\n")
  if (valor.p>0.0001&&valor.p<=1){
    cat("Valor-p","=",round(valor.p,4),"\n")
  }else{cat("Valor-p = <0.0001 \n")}
  #if(valor.p>1){cat("Valor-p > 1, verifique o tipo de teste\n")}
  cat("------------------------------------\n")
}

