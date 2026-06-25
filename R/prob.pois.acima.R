prob.pois.acima <- function(x, lamb,graf=TRUE) {
  if(!graf) graphics.off()
  if(x>=0 & floor(x)==x){
    probabilidade_acima <- 1-ppois(x-1, lamb)
    x_min <- max(0, floor(lamb - 3 * sqrt(lamb)))
    x_max <- ceiling(lamb + 3 * sqrt(lamb))
    x_values <- x_min:x_max
    probabilidades <- dpois(x_values, lamb)
    barplot(probabilidades,las=1,
            names.arg = x_values,
            col = ifelse(x_values <= x-1, "lightblue", "red"), # Colore as barras
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
    cat("     ------------------------------\n")
    cat("      P(X\u2265",x,")",round(probabilidade_acima,4), "  com \u03BB = ", lamb, sep=c("",""," = "),fill=TRUE)
    cat("     ------------------------------\n")
  }
  else{cat("\n-----------------------\n")
    cat(probabilidade_entre<-"Observe o domínio de X\n")
    cat("-----------------------\n")}

}


