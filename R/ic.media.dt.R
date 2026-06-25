ic.media.dt<-function(media,var,n,conf.level=0.95){
 #graphics.off()
 alpha<-1-conf.level
 probs = c((1-alpha/2),((alpha)/2))
 gl<-n-1
 a<-qt(probs,df=gl)
 IC<-media+a*sqrt(var/n)
 #curve(dt(x, df=gl), from=-3, to=3, col='blue',
  #     ylab="",xlab="",main="Quantis da t utilizados",bty = "l",las=1)
 #abline(v=a,lwd=2,col=3,lty=2)
 #abline(h=0)
 #axis(1,a,labels=round(a,3),col.axis="red",padj = -1)
 cat("------------------------\n")
 cat("Quantil da distribuicao t:\n")
 cat("t","(",probs[2]*100,"%,",df=gl,")=",round(a[1],3),"\n")
 cat("x\u0305 =",media,"\n")
 cat("n =",n,"\n")
 cat("s\u00B2 =", round(var,4)," \n")
 cat("\n")
 cat("Intervalo de confianca:\n")
 cat("IC(",conf.level*100,"%,","\u03BC) = [",round(IC[2],4),";", round(IC[1],4),"]\n")

 cat("------------------------\n")
}



