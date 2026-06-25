graf.box<-function(...,horizontal=FALSE,nome.var=" ",col="lightgreen",labels=NULL){
  x<-list(...)
  n <- length(x)
  if (is.null(labels)) {
    labels <- paste(names(x), seq_len(n))
  }
  if (length(labels) != n) {
    stop("O numero de labels deve ser igual ao numero de variaveis.")
  }

  y1 <- floor(min(...))
  y2 <- ceiling(max(...))

  n_pontos<-20
  a <- pretty(c(y1, y2), n = n_pontos)[2] - pretty(c(y1, y2), n = n_pontos)[1]

  if(horizontal==FALSE){
    boxplot(x,horizontal = FALSE,pch=16,axes = FALSE,col=col)
    axis(2,las=1,seq(y1,y2,a))
    axis(1, at = seq(1:n),
         labels = labels
    )
    mtext(nome.var, side = 2, line = 3, col = 1)
    #abline(h=y1*0.99)
  }
  else{boxplot(x,horizontal = TRUE,pch=16,axes = FALSE,col=col)
    axis(1,seq(y1,y2,a))
    axis(2, las=1,at = seq(1:n),
         labels = labels
    )
    mtext(nome.var, side = 1, line = 3, col = 1)
    #abline(v=y1*0.99)
  }
  }


