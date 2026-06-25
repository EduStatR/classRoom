am.ae.ot<-function(k,n)
{Ni <- c(0)
si<-c(0)
Estrato<-seq(1:k)
for (i in 1:(k-1)){
  Ni<-c(Ni,0)
  si<-c(si,0)
}
tab_aux <- data.frame(Estrato, Ni, si)
edicao <- edit(tab_aux)
f<-n/(sum(edicao$Ni*edicao$si))
ni<-f*(edicao$Ni*edicao$si)
ni<-round(cbind(ni),2)
tab<-matrix(c(edicao[,1],edicao[,2],edicao[,3],ni),nrow=k,ncol=4,byrow=FALSE,dimnames=NULL)
colnames(tab)<-c("Estrato","Ni","si","ni")
rownames(tab)<-rep(" ",k)
cat("------------------------\n")
print(tab)
cat("------------------------\n")
cat("N","=",sum(tab[,2]),"\n")
cat("n","=",sum(tab[,4]),"\n")
cat("Obs.: quando algum ni não for inteiro,\n")
cat("arredonde de modo que a soma seja igual a", sum(tab[,4]), "\n")
}


