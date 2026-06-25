freq.quali <- function(x, graf = TRUE) {
  if(!graf) graphics.off()

  # Cria a tabela de frequências
  d <- table(x)
  df <- as.data.frame(d)  # Transforma o objeto table em data.frame
  Fi <- df$Freq  # Armazena a frequência absoluta do data frame
  n <- sum(Fi)
  Fri <- Fi / n  # Calcula a frequência relativa
  FA <- cumsum(Fi)  # Frequência acumulada absoluta
  Fpi <- Fri * 100  # Calcula a frequência percentual
  FAPi <- cumsum(Fpi)  # Frequência acumulada percentual
  k <- length(d)

  # Criando uma matriz para armazenar os resultados
  tabela <- matrix(NA, nrow = k, ncol = 6)

  # Preenchendo a tabela com os dados
  tabela[, 1] <- as.character(df$x)  # Converter as categorias para caracteres
  tabela[, 2] <- Fi
  tabela[, 3] <- round(Fri, 2)
  tabela[, 4] <- round(Fpi, 2)
  tabela[, 5] <- FA
  tabela[, 6] <- round(FAPi, 2)
  row.names(tabela)<-rep("",k)
  # Definindo os nomes das colunas
  colnames(tabela) <- c("X", "fi", "fr", "fp", "FA", "FAp")

  # Imprimir a tabela de forma adequada, sem nomes de linhas
  cat("\n   Distribuicao de frequencias\n")
  cat("----------------------------------\n")
  print(tabela, row.names = FALSE, quote = FALSE)  # Evitar aspas na impressão
  cat("-----------------------------------\n")

  # Opcional: gerar gráfico
  if (graf) {
    graf.pizza(x)
  }
}



