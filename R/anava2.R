anava2<-function(grupos,alpha=0.05,graf=TRUE){
  ni<-c(0)
  Media <- c(0)
  Variancia<-c(0)
  Grupos<-seq(1:grupos-1)
  for (i in 1:(grupos-1)){
    ni<-c(ni,0)
    Media<-c(Media,0)
    Variancia<-c(Variancia,0)
  }
  tab_aux <- data.frame(Grupos, ni, Media, Variancia)
  ed <- edit(tab_aux)
  if(ed$ni[i]>1){
    MG<-sum(ed$ni*ed$Media)/sum(ed$ni)
    se2<-sum(ed$ni*(ed$Media-MG)^2)/(grupos-1)
    sd2<-sum((ed$ni-1)*ed$Variancia)/(sum(ed$ni)-grupos)
    n1<-grupos-1
    n2<-sum(ed$ni)-grupos
    if(!graf) graphics.off()
    a<-round(qf(alpha, df1=n1, df2=n2, ncp=0, lower.tail = FALSE, log.p = FALSE),3)
    fcalc<-round(se2/sd2,3)
    df1=n1
    df2=n2
    if(df2==1){b=250}
    else(b=10)
    curve(df(x, df1=df1,df2=df2), from=-0.001, to=b, col='blue',
          ylab="",xlab="",bty = "l",las=1)
    abline(v=a,lwd=2,col=3,lty=2)
    abline(h=0)
    axis(1,c(a,fcalc),labels=c(a,fcalc),col.axis="red",padj = -1)
    rx<-seq(fcalc,650,by=.001)
    ry<-numeric(2*length(rx))
    ry[1:length(rx)]<-df(rx,df1,df2)
    rx<-c(rx,rev(rx))
    polygon(rx,ry,col="red")
    abline(v=a,lwd=2,col="blue",lty=2)
    abline(v=fcalc,lwd=2,col=3,lty=2)
    abline(h=0)
    legend("topright", legend = c("Area = valor-p","Limite da regiao critica","Estatistica de teste"),
           pch = c(15,NA,NA),lwd=2,lty=c(-1,2,2),col=c("red","blue","green"),bty = "o",
           title="Legenda",box.lty = 1,box.lwd = 2,box.col = "black",bg = "lightyellow",cex=0.7)
    legend(0,0.3, legend = c("Região de não \n rejeição H0"),
           bty = "n",cex=.7)
    legend(a,0.3, legend = c("Região de \n rejeição H0"),
           bty = "n",cex=.7)
    cat("------------------------\n")
    cat("Resultados:\n")
    cat("Media geral = ",round(MG,2),"\n")
    cat("VE = ",round(se2,4),"\n")
    cat("VD = ",round(sd2,4),"\n")
    cat("Fc = ",round(fcalc,3),"\n")
    cat("F","(",alpha*100,"%,",n1,",",n2,")=",round(a,3),"\n")
    cat("Valor-p = ",round(pf(se2/sd2,grupos-1,sum(ed$ni)-grupos,ncp=0,lower.tail=F),4),"\n")
    cat("------------------------\n")
  }
  else{cat("Algum tamanho amostral e menor ou igual a 1")}
}



