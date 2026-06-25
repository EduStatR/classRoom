prob.normal.areas<-function(a,b,c,d,mean,sigma,graf=TRUE){
  if(a<b &&  b<c && c<d ){
    x<- seq(mean-4*sigma,mean+4*sigma, length = 1000)
    curve(dnorm(x,mean,sigma), mean-4*sigma,mean+4*sigma,ylab="",xlab="", yaxt='n',bty='n')
    rx<-seq(c,d,by=.001)
    rx1<-seq(a,b,by=.001)
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
    axis(1,c(a,b,c,d),labels=c(a,b,c,d),col.axis="red",padj = -1)
    p1<-pnorm(c, mean, sigma, lower.tail = FALSE)
    p2<-pnorm(d, mean, sigma, lower.tail = FALSE)
    p3<-pnorm(b, mean, sigma, lower.tail = TRUE)
    p4<-pnorm(a, mean, sigma, lower.tail = TRUE)
    calc<-p1-p2+(p3-p4)
    cat("\n Probabilidade calculada\n")
    cat(" ------------------------------------\n")
    cat("  P(",a,"<X<",b,")+P(",c,"<X<",d,")",round(calc,4),sep=c(rep("",8)," = "),fill=TRUE)
    cat(" ------------------------------------\n")
  }
  else{cat("\n O valor de a tem que ser menor ou igual\n ao valor de b e o valor de c tem que \n ser menor ou igual ao valor de d\n")
    if(!graf) graphics.off()}
}


