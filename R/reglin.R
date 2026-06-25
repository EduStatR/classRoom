reglin<-function(x,y,alpha=0.05,graf=TRUE,xlab="nome da variavel",ylab="nome da variavel"){
  conf.level<-1-alpha
  rl<-lm(y~x)
  rll<-summary(aov(lm(y~x)))
  R2<-rll[[1]][1,2]/(rll[[1]][1,2]+rll[[1]][2,2])

  if(graf==TRUE){
    # gráfico dos pontos
    plot(x,y,xlab=xlab,ylab=ylab,bty="l",las=1,pch=16,
         xlim=c(min(x)*0.9,max(x)*1.1),
         ylim=c(min(y)-0.5*min(y),max(y)+0.1*max(y)))

    # função da reta
    f<-function(x){rl$coefficients[1]+rl$coefficients[2]*x}

    # adiciona curva ao gráfico
    curve(f, from = min(x), to = max(x), col = "red", lwd = 1, add=TRUE)

    if(summary(rl)[[4]][2,4]<=alpha){
      text(min(x),min(y)-0.05*min(y),
           paste("y =",round(rl$coefficients[1],4),"+ (",round(rl$coefficients[2],4),")","x",
                 "         ","R\u00B2 =",round(R2*100,2),"%"),
           pos=4,col="blue",cex=1)
    }
    else{
      text(min(x),min(y)-0.05*min(y),
           bquote("Coeficiente" ~ beta[1] ~ "não significativo"),
           pos=4,col="red",cex=1)
    }
  }
  else{if(!graf) graphics.off()}

  cat("-----------------------------\n")
  cat("Resultados\n")
  cat("Equacao ajustada\n")
  cat("y = ",round(rl$coefficients[1],4),"+","(",round(rl$coefficients[2],4),")","x","\n")
  cat("R\u00B2 = ",round(R2*100,2),"%","\n")
  cat("----------------------------\n")
  cat("Teste de hipotese considerando H1: \u03B21 \u2260 0\n")
  cat("tc = ",summary(rl)[[4]][2,3],"\n")
  probs = alpha
  n<-length(x)
  a<-qt(probs/2,df=n-2,lower.tail=F)
  cat("t","(",probs/2*100,"%,",df=n-2,")=",round(a[1],3),"\n")
  valor.p<-round(summary(rl)[[4]][2,4],4)
  if (valor.p>0.0001&&valor.p<=1){
    cat("Valor-p = ",valor.p,"\n")
  }else{cat("Valor-p = <0.0001 \n")}

  cat("----------------------------\n")
}
