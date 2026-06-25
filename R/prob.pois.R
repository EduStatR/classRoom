prob.pois <- function(x, lamb,graf=TRUE) {
  if(!graf) graphics.off()
  if(x>=0 & floor(x)==x){
    probabilidade <- dpois(x, lamb)
    x_min <- max(0, floor(lamb - 3 * sqrt(lamb)))
    x_max <- ceiling(lamb + 3 * sqrt(lamb))
    x_values <- x_min:x_max
    probabilidades <- dpois(x_values, lamb)
    barplot(probabilidades,las=1,
            names.arg = x_values,
            col = ifelse(x_values == x, "red", "lightblue"), #Destaca a barra
            main = paste("Distribuição Poisson: \u03BB =", lamb),
            xlab = "Número de Ocorrências (x)",
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
    cat("      P(X=",x,")",round(probabilidade,4),sep=c("",""," = "),fill=TRUE)
    cat("     -----------------\n")
  }
  else{cat("\n-----------------------\n")
    cat(probabilidade_entre<-"Observe o domínio de X\n")
    cat("-----------------------\n")}
}
