prob.normal.acum<-function(a,mean,sigma,graf=TRUE){
if(!graf) graphics.off()
  x<- seq(mean-4*sigma,mean+4*sigma, length = 1000)
  curve(dnorm(x,mean,sigma), mean-4*sigma,mean+4*sigma,ylab="",xlab="", yaxt='n',bty='n')
  rx<-seq(mean-10*sigma,a,by=.001)
  ry<-numeric(2*length(rx))
  ry[1:length(rx)]<-dnorm(rx, mean, sigma,log=FALSE)
  rx<-c(rx,rev(rx))
  z<-curve(dnorm(x,mean,sigma), mean-4*sigma,mean+4*sigma,ylab="",xlab="", yaxt='n',bty='n')
  polygon(z,col="lightblue")
  polygon(rx,ry,col='red')
  abline(v=mean,h=0,lty=3)
  axis(1,a,labels=a,col.axis="red",padj = -1)
  p1<-pnorm(mean-10*sigma, mean, sigma, lower.tail = FALSE)
  p2<-pnorm(a, mean, sigma, lower.tail = FALSE)
  calc<-p1-p2

  cat("\n Probabilidade calculada\n")
  cat(" ------------------------\n")
  cat("     P(X<",a,")",round(calc,4),sep=c("",""," = "),fill=TRUE)
  cat(" ------------------------\n")
}


