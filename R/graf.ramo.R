graf.ramo <- function(x,
                      orientation = 1,
                      digits = 3,
                      cex = 1,
                       esp=1 ){
#  digits = 0 → inteiros;
#  digits = 1 → décimos;
#  digits = 2 → centésimos;
#  digits = 3 → milésimos.


  if(is.numeric(orientation)){

    if(orientation == 1){
      orientation <- "horizontal"
    }

    else if(orientation == 2){
      orientation <- "vertical"
    }

    else{
      stop("Use orientation = 1 (horizontal) ou orientation = 2 (vertical).")
    }

  }


  if(!orientation %in% c("horizontal","vertical")){
    stop("orientation deve ser 1, 2, 'horizontal' ou 'vertical'.")
  }



  x <- sort(x)

  ramo  <- floor(x*10^(digits-1))
  folha <- round(x*10^digits) %% 10


  lista <- lapply(split(folha, ramo), sort)

  if(orientation == "vertical"){

    nr <- max(lengths(lista))

    plot(0,0,
         type="n",
         axes=FALSE,
         xlim = c(0.5,length(lista)+0.5),
         ylim = c(0,nr*0.7+1),
         xaxt = "n",
         yaxt = "n",
         xlab = "Ramos",
         ylab = "",
         bty = "l",
         main = "")

    axis(1,
         at = seq_along(lista),
         labels = names(lista))

    for(i in seq_along(lista)){

      text(rep(i,length(lista[[i]])),
           seq_along(lista[[i]]),
           labels = lista[[i]],
           cex = cex)

    }

  } else {

    nramos <- length(lista)

    plot(0,0,
         type="n",
         axes=FALSE,

         #xlim = c(0.5,length(lista)+0.5),
         #ylim = c(0,nr*0.7+1),

         xlim = c(0, max(lengths(lista))*1.2),
         ylim = c(0.5,length(lista)+0.5),


         #xlim = c(0,15),
         #ylim = c(0.5,nramos+0.5),
         xaxt = "n",
         yaxt = "n",
         xlab = "",
         ylab = "Ramos",
         bty = "n",
         main = "")


         axis(2,
              at = nramos:1,
              labels = names(lista),
              las = 1
              )

    for(i in seq_along(lista)){

      folhas <- paste(lista[[i]], collapse = " ")

      text(2,
           nramos-i+1,
           folhas,
           adj = 0,
           cex = cex)

    }

  }
#melhorar essa mensagem, tvz colocar em cada grafico
#identifcar os eixos do grafico horizontql

msg <- paste0(
  "\nINTERPRETAÇÃO DO GRÁFICO DE RAMO-E-FOLHAS\n",
  "================================================\n",
  "1. O valor foi decomposto em ramo e folha.\n",
  "2. O ramo representa a parte mais significativa do número.\n",
  "3. A folha representa a parte menos significativa.\n",
  "4. O símbolo | indica a posição do ponto decimal implícito.\n\n",
  "CONFIGURAÇÃO DO GRÁFICO:\n",
  "- Casas decimais consideradas: ", digits, "\n",
  "- Orientação: ", orientation, "\n",
  "================================================\n"
)

cat(msg)}


