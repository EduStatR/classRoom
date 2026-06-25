prob.normal.extremos<-function(a,b,mean,sigma,graf=TRUE){
  if(a<=b){
    x<- seq(mean-4*sigma,mean+4*sigma, length = 1000)
    curve(dnorm(x,mean,sigma), mean-4*sigma,mean+4*sigma,ylab="",xlab="", yaxt='n',bty='n')
    rx<-seq(b,mean+10*sigma,by=.001)
    rx1<-seq(mean-10*sigma,a,by=.001)
    ry<-numeric(2*length(rx))
    ry1<-numeric(2*length(rx1))
    ry[1:length(rx)]<-dnorm(rx, mean, sigma,log=FALSE)
    ry1[1:length(rx1)]<-dnorm(rx1, mean, sigma,log=FALSE)
    rx<-c(rx,rev(rx))
    rx1<-c(rx1,rev(rx1))
    z<-curve(dnorm(x,mean,sigma), mean-4*sigma,mean+4*sigma,ylab="",xlab="", yaxt='n',bty='n')
    polygon(z,col="lightblue")
    polygon(rx,ry,col='red')
    polygon(rx1,ry1,col='red')
    abline(v=mean,h=0,lty=3)
    axis(1,c(a,b),labels=c(a,b),col.axis="red",padj = -1)
    p1<-pnorm(b, mean, sigma, lower.tail = FALSE)
    p2<-pnorm(mean+10*sigma, mean, sigma, lower.tail = FALSE)
    p3<-pnorm(a, mean, sigma, lower.tail = TRUE)
    p4<-pnorm(mean-10*sigma, mean, sigma, lower.tail = TRUE)
    calc<-p1-p2+(p3-p4)
    cat("\n Probabilidade calculada\n")
    cat(" -----------------------------\n")
    cat("   P(X<",a,")+P(X>",b,")",round(calc,4),sep=c("","","",""," = "),fill=TRUE)
    cat(" -----------------------------\n")
  }
  else{cat("O valor de a tem que ser menor ao valor de b")
    if(!graf) graphics.off()}
}





