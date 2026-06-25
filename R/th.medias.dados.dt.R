th.medias.dados.dt<-function(x, y, mu = 0, paired = FALSE, var.equal = TRUE, alpha = 0.05, tipo="B",graf=TRUE)
{
  conf.level=1-alpha
 if(!graf) graphics.off()

  n<-length(x)+length(y)-2
  curve(dt(x, df = n), from = -4, to = 4, col = "blue",
        ylab = "", xlab = "", main = "Distribuicao da estatistica do teste",
        bty = "l", las = 1)
  tc1 <- 0
  #if (paired == TRUE & var.equal == FALSE) {
  #  cat("------------------------------------\n")
  #  cat("Para var.equal=FALSE, nao faz\n")
  #  cat("------------------------------------\n")
  #}
  #################
  if (paired == TRUE) {
  if (length(x)!=length(y)){
    if(!graf) graphics.off()

    stop("n1 e n2 devem ser de mesmo tamanho para ter Emparelhamento.")
  }
    A1 <- matrix(c(round(mean(x - y), 4), round(sd(x - y),4),
                   length(x - y)), ncol = 1, nrow = 3, byrow = TRUE,
                   dimnames = list(c("Media", "Desvio padrao", "n"),c("")))
    if(tipo=="B"){
      T <- t.test(x, y, alternative = "two.sided", mu = mu,
                  paired = TRUE, conf.level=conf.level)
      tc <- round(T$statistic, 3)
      probs = c((1 - alpha/2), ((alpha)/2))
      a<-qt(probs,df=T$parameter)
      axis(1,c(a[2],a[1],tc,-tc),labels=round(c(a[2],a[1],tc,-tc),3),
           col.axis="red",padj = -2,cex.axis=.7)
      if (abs(tc)>5){tc1<-4}else{tc1<-tc}
      rx<-seq(abs(tc1),5,by=.001)     #limite superior =5
      ry<-numeric(2*length(rx))
      ry[1:length(rx)]<-dt(rx,df=n,log=FALSE)
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
    }
    if(tipo=="E"){
      T <- t.test(x, y, alternative = "less", mu = mu,
                  paired = TRUE, conf.level=conf.level)
      tc <- round(T$statistic, 3)
      probs = c(alpha)
      a<-qt(probs,df=n)
      axis(1,c(a,tc),labels=round(c(a,tc),3),
           col.axis="red",padj = -2,cex.axis=.7)
      if (abs(tc)>5){tc1<-4}else{tc1<-tc}
      rx<-seq(-5,tc1,by=.001)
      ry<-numeric(2*length(rx))
      ry[1:length(rx)]<-dt(rx,df=n,log=FALSE)
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
    }
    if(tipo=="D"){
      T <- t.test(x, y, alternative = "greater", mu = mu,
                  paired = TRUE, conf.level=conf.level)
      tc <- round(T$statistic, 3)
      probs = c(1-alpha)
      a<-qt(probs,df=n)
      axis(1,c(a,tc),labels=round(c(a,tc),3),
           col.axis="red",padj = -2,cex.axis=.7)
      if (abs(tc)>5){tc1<-4}else{tc1<-tc}
      rx<-seq(tc1,5,by=.001)
      ry<-numeric(2*length(rx))
      ry[1:length(rx)]<-dt(rx,df=n,log=FALSE)
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
    }

    cat("------------------------------------\n")
    cat("Resultados:\n")
    print(A1)
    cat("mu", "=", round(mu, 3), "\n")
    if(tipo=="B"){
      cat("t", "(", (1 - probs)[1] * 100, "%,", df = T$parameter, ")=", round(a[1], 3), "\n")
    }
    if(tipo=="E"){
      cat("t", "(",probs*100, "%,", df = T$parameter, ")=", round(a, 3), "\n")
    }
    if(tipo=="D"){
      cat("t", "(",(1-probs)*100, "%,", df = T$parameter, ")=", round(a, 3), "\n")
    }
    cat("tc", "=", round(T$statistic, 3), "\n")
    if (T$p.value>0.0001){
      cat("Valor-p", "=", round(T$p.value, 4), "\n")}
    else{cat("Valor-p = <0.0001 \n")}
    cat("------------------------------\n")

  }
  #######################
  if (paired == FALSE) {
    A <- matrix(c(round(mean(x), 4), round(mean(y), 4), round(var(x),4),
                  round(var(y), 4), round(length(x), 0), round(length(y),0)),
                ncol = 2, nrow = 3, byrow = TRUE,
                dimnames = list(c("Media","Variancia", "n"),c("x", "y")))
    if(tipo=="B"){
      ifelse(var.equal == FALSE,
             T <- t.test(x,y, alternative = "two.sided", mu = mu, paired = FALSE, var.equal = FALSE, conf.level),
             T <- t.test(x,y, alternative = "two.sided", mu = mu, paired = FALSE, var.equal = TRUE, conf.level))
      tc <- round(T$statistic, 3)
      probs = c((1 - alpha/2), ((alpha)/2))
      a<-qt(probs,df=T$parameter)
      axis(1,c(a[2],a[1],tc,-tc),labels=round(c(a[2],a[1],tc,-tc),3),
           col.axis="red",padj = -2,cex.axis=.7)
      if (abs(tc)>5){tc1<-4}else{tc1<-tc}
      rx<-seq(abs(tc1),5,by=.001)     #limite superior =5
      ry<-numeric(2*length(rx))
      ry[1:length(rx)]<-dt(rx,df=n,log=FALSE)
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
    }
    if(tipo=="E"){
      ifelse(var.equal == FALSE,
             T <- t.test(x,y, alternative = "less", mu = mu, paired = FALSE, var.equal = FALSE, conf.level),
             T <- t.test(x,y, alternative = "less", mu = mu, paired = FALSE, var.equal = TRUE, conf.level))
      tc <- round(T$statistic, 3)
      probs = c(alpha)
      a<-qt(probs,df=n)
      axis(1,c(a,tc),labels=round(c(a,tc),3),
           col.axis="red",padj = -2,cex.axis=.7)
      if (abs(tc)>5){tc1<-4}else{tc1<-tc}
      rx<-seq(-5,tc1,by=.001)
      ry<-numeric(2*length(rx))
      ry[1:length(rx)]<-dt(rx,df=n,log=FALSE)
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
    }
    if(tipo=="D"){
      ifelse(var.equal == FALSE,
             T <- t.test(x,y, alternative = "greater", mu = mu, paired = FALSE, var.equal = FALSE, conf.level),
             T <- t.test(x,y, alternative = "greater", mu = mu, paired = FALSE, var.equal = TRUE, conf.level))
      tc <- round(T$statistic, 3)
      probs = c(1-alpha)
      a<-qt(probs,df=n)
      axis(1,c(a,tc),labels=round(c(a,tc),3),
           col.axis="red",padj = -2,cex.axis=.7)
      if (abs(tc)>5){tc1<-4}else{tc1<-tc}
      rx<-seq(tc1,5,by=.001)
      ry<-numeric(2*length(rx))
      ry[1:length(rx)]<-dt(rx,df=n,log=FALSE)
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
    }

    cat("------------------------------\n")
    cat("Resultados:\n")
    print(A)
    if (var.equal) {
      cat("Var. comb.", T$stderr^2/(1/length(x) + 1/length(y)),"\n")
    }
    cat("mu", "=", round(mu, 3), "\n")
    if(tipo=="B"){
      cat("t", "(", (1 - probs)[1] * 100, "%,", df = T$parameter, ")=", round(a[1], 3), "\n")
    }
    if(tipo=="E"){
      cat("t", "(",probs*100, "%,", df = T$parameter, ")=", round(a, 3), "\n")
    }
    if(tipo=="D"){
      cat("t", "(",(1-probs)*100, "%,", df = T$parameter, ")=", round(a, 3), "\n")
    }
    cat("tc", "=", round(T$statistic, 3), "\n")
    if (T$p.value>0.0001){
      cat("Valor-p", "=", round(T$p.value, 4), "\n")}
    else{cat("Valor-p = <0.0001 \n")}

    cat("------------------------------\n")




  }
}

