th.fisher<-function(r,c,tipo="D"){
  N<-rep(0,r)
  M<-rep(0,c)
  MI<-N%*%t(M)
  colnames(MI)<-c(LETTERS[1:c])
  tab_aux <- data.frame(MI)
  edicao <- edit(tab_aux)
  data<-edicao
  if(tipo=="B"){
    a<-fisher.test(edicao, alternative = "two.sided",workspace = 2000000)$p.value}
  if(tipo=="D"){
    a<-fisher.test(edicao, alternative = "greater",workspace = 2000000)$p.value}
  if(tipo=="E"){
    a<-fisher.test(edicao, alternative = "less",workspace = 2000000)$p.value}

  cat("------------------------\n")
  cat("Valor-p = ",round(a,4),"\n")
  cat("------------------------\n")
}


