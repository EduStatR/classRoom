dist.qui2<-function(prob,df,graf=TRUE){
  if(!graf) graphics.off()
  a<-round(qchisq(prob, df, ncp=0, lower.tail = FALSE, log.p = FALSE),3)
  if(prob<=.5){b=3*a}
  else(b=300*a)
  curve(dchisq(x, df=df), from=-0.01, to=b, col='blue',
        ylab="",xlab="",bty = "l",las=1)
  abline(v=a,lwd=2,col=3,lty=2)
  abline(h=0)
  axis(1,a,labels=a,col.axis="red",padj = -1)
  #arrows(a-1,0.2,a,0.1,length = 0.25,col="red",lwd=2)
  cat("Resultado\n")
  cat("--------------------------\n")
  cat("valor do quantil = ",a,"\n")
  cat("--------------------------\n")
}


