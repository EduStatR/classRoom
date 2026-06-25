prob.binom.acum <- function(x, n, p,graf=TRUE) {
  if(!graf) graphics.off()
  if(x>=0 & x<=n & floor(x)==x){

    probabilidade_acumulada <- pbinom(x, n, p)
    x_values <- 0:n
    probabilidades <- dbinom(x_values, n, p)
    barplot(probabilidades,las=1,
            names.arg = x_values,
            col = ifelse(x_values <= x, "red", "lightblue"), # Colore as barras
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
    cat("      P(X\u2264",x,")",round(probabilidade_acumulada,4),sep=c("",""," = "),fill=TRUE)
    cat("     -----------------\n")
  }
  else{cat("\n-----------------------\n")
    cat(probabilidade_entre<-"Observe o domínio de X\n")
    cat("-----------------------\n")}
}


