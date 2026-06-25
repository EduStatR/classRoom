croqui.DIC <- function(ntrat, nrep){

  trat <- LETTERS[1:ntrat]
  tratamentos <- rep(trat, each = nrep)
  tratamentos <- sample(tratamentos)
  n <- length(tratamentos)
  ncol <- ceiling(sqrt(n))
  nlin <- ceiling(n / ncol)
  tratamentos <- c(tratamentos, rep(NA, nlin*ncol - n))
  croqui <- matrix(tratamentos, nrow = nlin, byrow = TRUE)
  rownames(croqui) <- paste("Linha", 1:nlin)
  colnames(croqui) <- paste("Coluna", 1:ncol)
  return(croqui)
}







