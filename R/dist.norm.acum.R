dist.norm.acum<-function(prob,mean=0,sigma=1,graf=TRUE){
  if(!graf) graphics.off()
  a<-round(qnorm(prob, mean, sigma, lower.tail = TRUE),3)

  curve(dnorm(x,mean,sigma), mean-4*sigma,mean+4*sigma, col='blue',ylab="",xlab="",bty = "l",las=1)
  abline(v=a,lwd=2,col=3,lty=2)
  abline(h=0)
  axis(1,a,labels=a,col.axis="red",padj = -1)
  #arrows(a-1,0.2,a,0.1,length = 0.25,col="red",lwd=2)
  cat("Resultado\n")
  cat("--------------------------\n")
  cat("valor do quantil = ",a,"\n")
  cat("--------------------------\n")
}



