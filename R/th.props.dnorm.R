th.props.dnorm<-function(p1, p2, n1, n2, d0 = 0,
                         alpha = 0.05, tipo="B",metodo=1)
{
  graphics.off()

  zc1 <- 0
     curve(dnorm(x), from = -4, to = 4, col = "blue",
           ylab = "", xlab = "", main = "Distribuicao da estatistica do teste",
           bty = "l", las = 1)
    A <- matrix(c(p1, p2, n1, n2), ncol = 2,
              nrow = 2, byrow = TRUE, dimnames = list(c("Proporções", "n"), c("x", "y")))

  if(metodo==1){
      zc = (p1 - p2 - d0)/sqrt((p1 * (1 - p1)/n1)+(p2 * (1 - p2)/n2))
  }

    if(metodo==2){
      p=(p1*n1+p2*n2)/(n1+n2)
      zc = (p1 - p2 - d0)/sqrt((p * (1 - p)/n1)+(p * (1 - p)/n2))}





  if(tipo=="B"){
    probs = c((1 - alpha/2), ((alpha)/2))
    a<-qnorm(probs)
    axis(1,c(a[2],a[1],zc,-zc),labels=round(c(a[2],a[1],zc,-zc),3),
         col.axis="red",padj = -2,cex.axis=.7)
    if (abs(zc)>5){zc1<-4}else{zc1<-zc}
    rx<-seq(abs(zc1),5,by=.01)     #limite superior =5
    ry<-numeric(2*length(rx))
    ry[1:length(rx)]<-dnorm(rx,log=FALSE)
    rx<-c(rx,rev(rx))
    polygon(rx,ry,col="red")
    polygon(-rx,ry,col="red")
    abline(v=a,lwd=2,col="blue",lty=2)
    abline(v=zc,lwd=2,col=3,lty=2)
    abline(v=-zc,lwd=2,col=3,lty=2)
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
    valor.p = 2*pnorm(q=abs(zc), lower.tail = FALSE)
  }
  if(tipo=="E"){
    probs = c(alpha)
    a<-qnorm(probs)
    axis(1,c(a,zc),labels=round(c(a,zc),3),
         col.axis="red",padj = -2,cex.axis=.7)
    if (abs(zc)>5){zc1<-4}else{zc1<-zc}
    rx<-seq(-5,zc1,by=.01)
    ry<-numeric(2*length(rx))
    ry[1:length(rx)]<-dnorm(rx,log=FALSE)
    rx<-c(rx,rev(rx))
    polygon(rx,ry,col="red")
    abline(v=a,lwd=2,col="blue",lty=2)
    abline(v=zc,lwd=2,col=3,lty=2)
    abline(h=0)
    legend("right", legend = c("Area = valor-p","Limite da região crítica","Estatística do teste"),
           pch = c(15,NA,NA),lwd=2,lty=c(-1,2,2),col=c("red","blue","green"),bty = "o",
           title="Legenda",box.lty = 1,box.lwd = 2,box.col = "black",bg = "lightyellow",cex=0.7)
    legend("center", legend = c("Região de não \n rejeição H0"),
           bty = "n",cex=.9)
    legend("left", legend = c("Região de \n rejeição H0"),
           bty = "n",cex=.9)
    valor.p = pnorm(q=zc, lower=TRUE)}
  if(tipo=="D"){
    probs = c(1-alpha)
    a<-qnorm(probs)
    axis(1,c(a,zc),labels=round(c(a,zc),3),
         col.axis="red",padj = -2,cex.axis=.7)
    if (abs(zc)>5){zc1<-4}else{zc1<-zc}
    rx<-seq(zc1,5,by=.01)
    ry<-numeric(2*length(rx))
    ry[1:length(rx)]<-dnorm(rx,log=FALSE)
    rx<-c(rx,rev(rx))
    polygon(rx,ry,col="red")
    abline(v=a,lwd=2,col="blue",lty=2)
    abline(v=zc,lwd=2,col=3,lty=2)
    abline(h=0)
    legend("left", legend = c("Area = valor-p","Limite da região crítica","Estatística do teste"),
           pch = c(15,NA,NA),lwd=2,lty=c(-1,2,2),col=c("red","blue","green"),bty = "o",
           title="Legenda",box.lty = 1,box.lwd = 2,box.col = "black",bg = "lightyellow",cex=0.7)
    legend("center", legend = c("Região de não \n rejeição H0"),
           bty = "n",cex=.9)
    legend("right", legend = c("Região de \n rejeição H0"),
           bty = "n",cex=.9)
    valor.p = pnorm(q=zc, lower=FALSE)}

  cat("------------------------------\n")
  cat("Resultados:\n")
  print(A)
  if(tipo=="B"){
      cat("z", "(", (1 - probs)[1] * 100, "%)=", round(a[1], 3), "\n")
    }
  if(tipo=="E"){
      cat("z", "(",probs*100, "%)=", round(a, 3), "\n")
    }
  if(tipo=="D"){
      cat("z", "(",(1-probs)*100, "%)=", round(a, 3), "\n")
    }
  cat("zc", "=", round(zc, 3), "\n")
  if (valor.p>0.001){
    cat("Valor-p","=",round(valor.p,4),"\n")
  }else{cat("Valor-p = <0.001 \n")}

  cat("------------------------------\n")
}


