ic.media.dados.dnorm <- function(x,sigma2,conf.level=0.95){
  #graphics.off()
  n<-length(x)
  xbarra<-mean(x)
  alpha<-1-conf.level
  probs = c((1-alpha/2),((alpha)/2))
  a<-qnorm(probs)
  IC<-xbarra+a*sqrt(sigma2/n)
  #curve(dnorm(x), from=-3, to=3, col='blue',
  #      ylab="",xlab="",main="Quantis da normal utilizados",bty = "l",las=1)
  #abline(v=a,lwd=2,col=3,lty=2)
  #abline(h=0)
  #axis(1,a,labels=round(a,3),col.axis="red",padj = -1)
  cat("------------------------\n")
  cat("Quantil da distribuicao normal:\n")
  cat("Z","(",probs[2]*100,"%)=",round(a[1],2),"\n")
  cat("x\u0305 =",round(mean(x),4),"\n")
  cat("n =",length(x),"\n")
  cat("\u03C3\u00B2 =", round(sigma2,4)," \n")
  cat("\n")
  cat("Intervalo de confianca:\n")
  cat("IC(",conf.level*100,"%,","\u03BC) = [",round(IC[2],4),";", round(IC[1],4),"]\n")

    cat("------------------------\n")
}











