\name{am.as.dados}
\alias{am.as.dados}
\title{Amostragem sistematica com acesso ao banco de dados
}
\description{De um banco de dados de tamanho \eqn{N} sao sorteados de forma sistematica \eqn{n} elementos para compor a amostra.}
\usage{
am.as.dados(x,n)
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel na qual os elementos serao sorteados.}
\item{n}{tamanho da amostra com a qual se quer trabalhar.}
}
\details{Permite sortear \eqn{n} elementos de um banco de dados de tamanho \eqn{N} por meio de uma amostragem sistematica.}
\value{Retorna \eqn{n} elementos obtidos por meio de uma amostragem sistematica em que se sorteia apenas o primeiro elemento e os demais são obtidos por meio do intervalo de amostragem. O primeiro elemento \eqn{i} do banco de dados a compor a amostra e sorteado entre 1 e \eqn{I} (intervalo de amostragem). Os demais elementos sao obtidos considerando o inicio casual e o intervalo de amostragem por meio de uma progressao aritmetica. Desta forma, os elementos a serem amostrados serao: \eqn{i;\;i+I;\;i+2I;\;\ldots,\;i+(n-1)I}.
}
\references{
GONCALVES, M. E. Gerencia de saude: estatistica aplicada. Rio de Janeiro, RJ: Fundacao CECIERJ, 2010. 168 p.
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
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(banco)
attach(banco)
am.as.dados(alturaMM,10)

}
