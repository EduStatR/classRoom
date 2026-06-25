th.medias.dt<-function(med1, med2, var1, var2, n1, n2,
                       mu = 0, var.equal = TRUE, alpha = 0.05, tipo="B",graf=TRUE)
{
  if(!graf) graphics.off()

  tc1 <- 0
  if (var.equal == TRUE) {
    gl<-n1 + n2 - 2
    curve(dt(x, df = gl), from = -4, to = 4, col = "blue",
          ylab = "", xlab = "", main = "Distribuicao da estatistica do teste",
          bty = "l", las = 1)
    s2p = ((n1 - 1) * var1 + (n2 - 1) * var2)/(n1 + n2 - 2)
    tc = (med1 - med2 - mu)/sqrt(s2p * (1/n1 + 1/n2))
  }
  else {
    gl = ((var1/n1 + var2/n2)^2)/(((var1/n1)^2)/(n1 - 1) + ((var2/n2)^2)/(n2 - 1))
    curve(dt(x, df = gl), from = -4, to = 4, col = "blue",
          ylab = "", xlab = "", main = "Distribuicao da estatistica do teste",
          bty = "l", las = 1)
    tc = (med1 - med2 - mu)/sqrt((var1/n1 + var2/n2))
  }
  A <- matrix(c(med1, med2, var1, var2, n1, n2), ncol = 2,
              nrow = 3, byrow = TRUE, dimnames = list(c("Media", "Variancia","n"), c("x", "y")))

  if(tipo=="B"){
    probs = c((1 - alpha/2), ((alpha)/2))
    a<-qt(probs,df=gl)
    axis(1,c(a[2],a[1],tc,-tc),labels=round(c(a[2],a[1],tc,-tc),3),
         col.axis="red",padj = -2,cex.axis=.7)
    if (abs(tc)>5){tc1<-4}else{tc1<-tc}
    rx<-seq(abs(tc1),5,by=.1)     #limite superior =5
    ry<-numeric(2*length(rx))
    ry[1:length(rx)]<-dt(rx,df=gl,log=FALSE)
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
    valor.p = 2*pt(q=abs(tc), df=gl, lower.tail = FALSE)
  }
  if(tipo=="E"){
    probs = c(alpha)
    a<-qt(probs,df=gl)
    axis(1,c(a,tc),labels=round(c(a,tc),3),
         col.axis="red",padj = -2,cex.axis=.7)
    if (abs(tc)>5){tc1<-4}else{tc1<-tc}
    rx<-seq(-5,tc1,by=.1)
    ry<-numeric(2*length(rx))
    ry[1:length(rx)]<-dt(rx,df=gl,log=FALSE)
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
    valor.p = pt(q=tc, df=gl, lower=TRUE)}
  if(tipo=="D"){
    probs = c(1-alpha)
    a<-qt(probs,df=gl)
    axis(1,c(a,tc),labels=round(c(a,tc),3),
         col.axis="red",padj = -2,cex.axis=.7)
    if (abs(tc)>5){tc1<-4}else{tc1<-tc}
    rx<-seq(tc1,5,by=.1)
    ry<-numeric(2*length(rx))
    ry[1:length(rx)]<-dt(rx,df=gl,log=FALSE)
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
    valor.p = pt(q=tc, df=gl, lower=FALSE)}

  cat("------------------------------\n")
  cat("Resultados:\n")
  print(A)
  if(tipo=="B"){
    if (var.equal) {
      cat("Var. comb.", s2p, "\n")
      cat("t", "(", (1 - probs)[1] * 100, "%,", df = gl, ")=", round(a[1], 3), "\n")
    } else {
      cat("t", "(", (1 - probs)[1] * 100, "%,", df = gl, ")=", round(a[1], 3), "\n")
    }
  }
  if(tipo=="E"){
    if (var.equal) {
      cat("Var. comb.", s2p, "\n")
      cat("t", "(",probs*100, "%,", df = gl, ")=", round(a, 3), "\n")
    } else {
      cat("t", "(",probs*100, "%,", df = gl, ")=", round(a, 3), "\n")
    }
  }
  if(tipo=="D"){
    if (var.equal) {
      cat("Var. comb.", s2p, "\n")
      cat("t", "(",(1-probs)*100, "%,", df = gl, ")=", round(a, 3), "\n")
    } else {
      cat("t", "(",(1-probs)*100, "%,", df = gl, ")=", round(a, 3), "\n")
    }
  }
  cat("tc", "=", round(tc, 3), "\n")
  if (valor.p>0.0001){
    cat("Valor-p","=",round(valor.p,4),"\n")
  }else{cat("Valor-p = <0.0001 \n")}

  cat("------------------------------\n")
}
