graf.pontos<-function(x,col="blue",xlab="",ylab="",cex=4,...)

{
  lcl_list <- sort( x )
  lcl_count <- lcl_list
  cur_val <- lcl_list[1]
  m <- 1
  lcl_count[1]<-1

  for (i in 2:length(lcl_list))
  {
    x <- lcl_list[i]
    if ( x==cur_val )
    { m <- m+1
      lcl_count[ i ] <- m
    }
    else
    {
      cur_val <- x
      m <- 1
      lcl_count[i] <- m
    }
  }

if(is.numeric(x)){

plot( lcl_list,lcl_count, xlab=xlab, ylab=ylab, pch=20,col=col, cex=cex,bty="l",las=1,...)}

else{
 plot(as.factor(lcl_list), lcl_count, xlab=xlab, ylab=ylab, col=col, pch=20,cex=cex, bty="l",las=1,xaxt = "n", ... )
  axis(1, at=1:length(levels(as.factor(lcl_list))), labels=levels(as.factor(lcl_list)))
}
}
