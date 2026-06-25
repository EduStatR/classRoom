am.as.dados<-function(x,n)
{p<-trunc(length(x)/n)
inicio<-sample(p,1)
ind<-seq(inicio,length(x),p)
if(length(ind)>n){ind<-ind[c(1:n)]}
nomes<-x[ind]
cat("------------------\n")
cat("I","=",p,"\n")
cat("inicio","=",inicio,"\n")
cat("Numeros sorteados:\n")
print(ind)
cat("Dados correspondentes aos elementos sorteados:\n")
print(nomes)
cat("------------------\n")
out <- list()
out$sorteados <- nomes

}
