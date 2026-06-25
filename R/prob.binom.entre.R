prob.binom.entre <- function(a,b, n, p,graf=TRUE) {
  if(!graf) graphics.off()
  if(a<b & a>=0 & b<=n & floor(a)==a &floor(b) == b){
    probabilidade_entre <- pbinom(b, n, p)-pbinom(a-1, n, p)
    x_values <- 0:n
    probabilidades <- dbinom(x_values, n, p)
    barplot(probabilidades,las=1,
            names.arg = x_values,
            col = ifelse(x_values<= b & x_values>=a, "red", "lightblue"), # Colore as barras
            main = paste("Distribuição Binomial Acumulada: n =", n, ", p =", p),
            xlab = "Número de Sucessos (x)",
            ylab = "Probabilidade")
    abline(h=0)
    df_tabela<-t(data.frame(P=probabilidades))
    colnames(df_tabela)<-x_values
    rownames(df_tabela)<-"P(X=x)"
    cat("\nDistribuicao de probabilidades de X\n")
    cat("-------------------------------------\n")
    print(df_tabela)
    cat("-------------------------------------\n\n")
    cat("Probabilidade calculada\n")
    cat("     -----------------\n")
    cat("     P(",a,"\u2264X\u2264",b,")",round(probabilidade_entre,4),sep=c("","","",""," = "),fill=TRUE)
    cat("     -----------------\n")

  }
  else{cat("\n-----------------------\n")
    cat(probabilidade_entre<-"Observe o domínio de X\n")
    cat("-----------------------\n")}
}

