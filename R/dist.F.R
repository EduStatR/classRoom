dist.F<-function(prob,df1,df2,graf=TRUE){
  if(!graf) graphics.off()
  a<-round(qf(prob, df1, df2, ncp=0, lower.tail = FALSE, log.p = FALSE),3)
  if(df2==1){b=250}
  else(b=10)
  curve(df(x, df1=df1,df2=df2), from=-0.01, to=b, col='blue',
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



