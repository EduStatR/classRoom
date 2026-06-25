am.asa<-function(N,n,replace=FALSE,sort=FALSE)
{ind<-sample(N,n,replace=replace)
if(sort==TRUE){ind<-sort(ind)}
cat("------------------\n")
cat("Numeros sorteados:\n")
print(ind)
cat("------------------\n")
out <- list()
out$sorteados <- ind
}
