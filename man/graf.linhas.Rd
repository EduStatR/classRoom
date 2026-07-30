\name{graf.linhas}
\alias{graf.linhas}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Grafico de linhas compostas
}
\description{
Confecciona um grafico de linhas compostas de um conjunto de dados
}
\usage{
graf.linhas(dados,
            x,
            resp,
            col = NULL,
            pch = NULL,
            lty = NULL,
            lwd = 2,
            label = TRUE,
            legenda = TRUE,
            xlab = NULL,
            ylab = "")
}
\arguments{
  \item{dados}{nome do banco de dados no \code{R}}
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel do eixo-x.
}
  \item{resp}{nomes das variaveis resposta do banco de dados. A indicacao devera
  ser feita dessa forma \code{resp=c(nome_da_variavel_1,nome_da_variavel_2,...,nome_da_variavel_i)}
}
  \item{col}{define as cores das linhas do grafico}
  \item{pch}{simbolo utilizado para representar os pontos do grafico. O \emph{default} é NULL.}
\item{lwd}{espessura da linha do grafico. Valores maiores produzem linhas mais espessas.}
\item{lty}{tipo da linha utilizada no grafico. O \emph{default} e NULL.}
\item{label}{logico. Se \code{TRUE}, exibe os valores das frequencias junto aos pontos do grafico. Se \code{FALSE}, os valores nao sao apresentados.}
  \item{legenda}{logico. Se \code{TRUE}, exibe a legenda. Se \code{FALSE}, a legenda nao e apresentada.
}
  \item{xlab}{nomeia a variavel apresentada no eixo horizontal.}
  \item{ylab}{nomeia a variavel apresentada no eixo vertical.}

}
\details{Permite obter um grafico de linhas compostas}
\value{Retorna um grafico de linhas compostas}

\references{OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.
}
\author{
Adriana Dias,
\email{adriana.dias@unifal-mg.edu.br}

Denismar Alves Nogueira,
\email{denismar.nogueira@unifal-mg.edu.br}

Flavio Bittencourt,
\email{flavio.bittencourt@unifal-mg.edu.br}

Natalia da Silva Martins Fonseca,
\email{natalia.martins@unifal-mg.edu.br}


}
\note{O grafico de linhas e recomendado quando a variavel independente representa o tempo, como dias, meses, anos ou outras sequencias cronologicas.

}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{graf.linha}}}

\examples{

#Normais Climatologicas 1991-2020:
#temperaturas minimas e maximas
#mensais, Machado-MG, 2023
#https://portal.inmet.gov.br/normais
data(banco6)
attach(banco6)
graf.linhas(dados=banco6,
            x = meses,
            resp = c(min,max,media),
            col = NULL,
            pch = NULL,
            lty = NULL,
            lwd = 2,
            label = TRUE,
            legenda = TRUE,
            xlab = NULL,
            ylab = "Temperatura em °C")


graf.linhas(dados=banco6,
            x = mes,
            resp = c(min,max),
            col = c("green","blue"),
            pch = c(16,7),
            lty = c(1,2),
            lwd = 2,
            label = TRUE,
            legenda = TRUE,
            xlab = "Meses",
            ylab = "Temperatura em °C")

}
