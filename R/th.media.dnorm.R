th.media.dnorm<-function(mi0,media,sigma2,n,alpha=0.05,tipo="B",graf=TRUE){
if(!graf) graphics.off()
  zc = (media-mi0)/sqrt(sigma2/n)
  if(tipo=="B"){
    valor.p = 2*pnorm(q=zc, lower=FALSE)
    probs = c((1-alpha/2),((alpha)/2))
    a<-qnorm(probs)
    curve(dnorm(x), -4,4, col='blue',
          ylab="",xlab="",main="Distribuicao da estatistica do teste",bty = "l",las=1)
    zc1<-0
    axis(1,c(a[2],a[1],zc,-zc),labels=round(c(a[2],a[1],zc,-zc),3),
         col.axis="red",padj = -2,cex.axis=.7)
    if (abs(zc)>5){zc1<-4}else{zc1<-zc}
    rx<-seq(abs(zc1),5,by=.001)     #limite superior =5
    ry<-numeric(2*length(rx))
    ry[1:length(rx)]<-dnorm(rx,0,1)
    rx<-c(rx,rev(rx))
    polygon(rx,ry,col="red")
    polygon(-rx,ry,col="red")
    abline(v=a,lwd=2,col="blue",lty=2)
    abline(v=zc,lwd=2,col=3,lty=2)
    abline(v=-zc,lwd=2,col=3,lty=2)
    abline(h=0)
    legend("topright", legend = c("Area = valor-p","Limite da regiao critica","Estatistica de teste"),
           pch = c(15,NA,NA),lwd=2,lty=c(-1,2,2),col=c("red","blue","green"),bty = "o",
           title="Legenda",box.lty = 1,box.lwd = 2,box.col = "black",bg = "lightyellow",cex=0.7)
    legend("center", legend = c("Região de não \n rejeição H0"),
           bty = "n",cex=.9)
    legend("left", legend = c("Região de \n rejeição H0"),
           bty = "n",cex=.9)
    legend("right", legend = c("Região de \n rejeição H0"),
           bty = "n",cex=.9)




    }
  if(tipo=="E"){
    valor.p = pnorm(q=zc,lower=TRUE)
    probs = alpha
    a<-qnorm(probs)
    curve(dnorm(x), -4,4, col='blue',
          ylab="",xlab="",main="Distribuicao da estatistica do teste",bty = "l",las=1)

    axis(1,c(a,zc),labels=round(c(a,zc),3),
         col.axis="red",padj = -2,cex.axis=.7)
    if (abs(zc)>5){zc1<-4}else{zc1<-zc}
    rx<-seq(-5,zc1,by=.001)     #limite superior =5
        ry<-numeric(2*length(rx))
    ry[1:length(rx)]<-dnorm(rx,0,1)
    rx<-c(rx,rev(rx))
    polygon(rx,ry,col="red")

    abline(v=a,lwd=2,col="blue",lty=2)
    abline(v=zc,lwd=2,col=3,lty=2)

    abline(h=0)
    legend("topright", legend = c("Area = valor-p","Limite da regiao critica","Estatistica de teste"),
           pch = c(15,NA,NA),lwd=2,lty=c(-1,2,2),col=c("red","blue","green"),bty = "o",
           title="Legenda",box.lty = 1,box.lwd = 2,box.col = "black",bg = "lightyellow",cex=0.7)
    legend("center", legend = c("Região de não \n rejeição H0"),
           bty = "n",cex=.9)
    legend("left", legend = c("Região de \n rejeição H0"),
           bty = "n",cex=.9)
    legend("right", legend = c("Região de \n rejeição H0"),
           bty = "n",cex=.9)




    }
  if(tipo=="D"){
    valor.p = pnorm(q=zc, lower=FALSE)
    probs = 1-alpha
    a<-qnorm(probs)
    curve(dnorm(x), -4,4, col='blue',
          ylab="",xlab="",main="Distribuicao da estatistica do teste",bty = "l",las=1)

    axis(1,c(a,zc),labels=round(c(a,zc),3),
         col.axis="red",padj = -2,cex.axis=.7)
    if (abs(zc)>5){zc1<-4}else{zc1<-zc}
    rx<-seq(zc1,5,by=.001)     #limite superior =5

    ry<-numeric(2*length(rx))
    ry[1:length(rx)]<-dnorm(rx,0,1)
    rx<-c(rx,rev(rx))
    polygon(rx,ry,col="red")

    abline(v=a,lwd=2,col="blue",lty=2)
    abline(v=zc,lwd=2,col=3,lty=2)

    abline(h=0)
    legend("topleft", legend = c("Area = valor-p","Limite da regiao critica","Estatistica de teste"),
           pch = c(15,NA,NA),lwd=2,lty=c(-1,2,2),col=c("red","blue","green"),bty = "o",
           title="Legenda",box.lty = 1,box.lwd = 2,box.col = "black",bg = "lightyellow",cex=0.7)
    legend("center", legend = c("Região de não \n rejeição H0"),
           bty = "n",cex=.9)
    legend("left", legend = c("Região de \n rejeição H0"),
           bty = "n",cex=.9)
    legend("right", legend = c("Região de \n rejeição H0"),
           bty = "n",cex=.9)
    }
  cat("------------------------------------\n")
  cat("Resultados:\n")
  cat("\u03BC0 =",mi0,"\n") #cat("\u03BC\u2080 =",mi0,"\n")
  cat("x\u0305 =",media,"\n")
  cat("\u03C3\u00B2 =",sigma2,"\n")
  cat("n =",n,"\n")
  if(tipo=="B"){
    cat("z","(",probs[2]*100,"%)=",round(a[1],3),"\n")}
  if(tipo=="E"){
    cat("z","(",probs*100,"%)=",round(a,3),"\n")
  }
  if(tipo=="D"){
    cat("z","(",(1-probs)*100,"%)=",round(a,3),"\n")
  }
  cat("zc","=",round(zc,3),"\n")
  cat("Valor-p","=",round(valor.p,4),"\n")
  if(valor.p>1){cat("Valor-p > 1, verifique o tipo de teste\n")
if(!graf) graphics.off()
 }
  cat("------------------------------------\n")

}





