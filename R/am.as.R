am.as<-function(N,n)
{p<-trunc(N/n)
inicio<-sample(p,1)
ind<-seq(inicio,N,p)
if(length(ind)>n){ind<-ind[c(1:n)]}
cat("------------------\n")
cat("I","=",p,"\n")
cat("inicio","=",inicio,"\n")
cat("Numeros sorteados:\n")
print(ind)
cat("------------------\n")
out <- list()
out$sorteados <- ind
}

