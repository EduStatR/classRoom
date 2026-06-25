graf.diag<-function(x,y,xlab="Título do eixo-x",ylab="Titulo do eixo-y"){
  plot(x, y, xlab=xlab, ylab=ylab, bty="l", las=1, pch=16,
       xlim=c(min(x)*0.9,max(x)*1.1),
       ylim=c(min(y)-0.5*min(y),max(y)+0.1*max(y)))
}

