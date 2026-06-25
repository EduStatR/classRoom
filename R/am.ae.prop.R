am.ae.prop<-function(k,n)
{Ni <- c(0)
Estrato<-seq(1:k)
for (i in 1:(k-1)){
  Ni<-c(Ni,0)
}
tab_aux <- data.frame(Estrato, Ni)
edicao <- edit(tab_aux)
N <- sum(edicao[,2])
f<-n/N
ni<-f*edicao$Ni
ni<-round(cbind(ni),2)
tab<-matrix(c(edicao[,1],edicao[,2],ni),nrow=k,ncol=3,byrow=FALSE,dimnames=NULL)
colnames(tab)<-c("Estrato","Ni","ni")
rownames(tab)<-rep(" ",k)
cat("------------------------\n")
print(tab)
cat("------------------------\n")
cat("N","=",sum(tab[,2]),"\n")
cat("n","=",sum(tab[,3]),"\n")
cat("Obs.: quando algum ni não for inteiro,\n")
cat("arredonde de modo que a soma seja igual a", sum(tab[,3]), "\n")
}



