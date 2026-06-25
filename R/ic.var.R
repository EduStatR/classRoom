ic.var<-function(var,n,conf.level=0.95){
  #graphics.off()
  alpha<-1-conf.level
  probs = c((1-alpha/2),((alpha)/2))
  gl<-n-1
  a<-qchisq(probs,df=gl)
  IC<-gl*var/a
  if(gl<=30){fim=max(3*gl,a[1]);ini=0}else{fim=gl+6*sqrt(gl);ini=max(0,gl-4*sqrt(gl))}
  #curve(dchisq(x, df=gl), from=ini, to=fim, col='blue',
  #      ylab="",xlab="",main="Quantis da \u03C7\u00B2 utilizados",bty = "l",las=1)
  #abline(v=a,lwd=2,col=3,lty=2)
  #abline(h=0)
  #axis(1,a,labels=round(a,3),col.axis="red",padj = -1)
  cat("------------------------\n")
  cat("\u03C7\u00B2","( ",(1-conf.level)/2*100,"%,",df=n-1,")=",round(qchisq(probs[1], df = n - 1),3),"\n")
  cat("\u03C7\u00B2","(",(1-(alpha/2))*100,"%,",df=n-1,")=",round(qchisq(probs[2], df = n - 1),3),"\n")
  cat("s\u00B2 =", var," \n")
  cat("n =",n,"\n")
  cat("\n")
  cat("Intervalo de confianca:\n")
  cat("IC(",conf.level*100,"%,","\u03C3\u00B2) = [",round(IC[1],4),";", round(IC[2],4),"]\n")
  cat("------------------------\n")
}

