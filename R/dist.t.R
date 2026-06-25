dist.t<-function(prob,df,graf=TRUE){
  if(!graf) graphics.off()
  a<-round(qt(prob, df, ncp=0, lower.tail = FALSE, log.p = FALSE),3)

  curve(dt(x, df=df), from=-4, to=4, col='blue',ylim=c(0,.4),
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





