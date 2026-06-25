am.asa.dados<-function(x,n,replace=FALSE,sort=FALSE)
{ind<-sample(length(x),n,replace=replace)
if(sort==TRUE){ind<-sort(ind)}
nomes<-x[ind]
cat("------------------\n")
cat("Numeros sorteados:\n")
print(ind)
cat("Dados correspondentes aos elementos sorteados:\n")
print(nomes)
cat("------------------\n")
out <- list()
out$sorteados <- nomes

}
