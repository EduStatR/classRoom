croqui.DBC <- function(ntrat, nblocos){

  trat <- LETTERS[1:ntrat]

  croqui <- matrix(NA, nrow = nblocos, ncol = ntrat)

  for(i in 1:nblocos){
    croqui[i, ] <- sample(trat)
  }

  rownames(croqui) <- paste("Bloco", 1:nblocos)
  colnames(croqui) <- paste("Parcela", 1:ntrat)

  return(croqui)
}

