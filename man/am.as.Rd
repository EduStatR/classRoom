\name{am.as}
\alias{am.as}
\title{Amostragem sistematica
}
\description{De uma populacao de tamanho \eqn{N} sao sorteados de forma sistematica \eqn{n} elementos para compor a amostra.
}
\usage{
am.as(N,n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{N}{tamanho populacional, numero de elementos da populacao.}
\item{n}{tamanho da amostra com a qual se quer trabalhar.}
}
\details{Permite sortear \eqn{n} elementos de uma populacao por meio da amostragem sistematica.
}
\value{Retorna \eqn{n} numeros obtidos por meio de uma amostragem sistematica em que se sorteia apenas o primeiro elemento e os demais são obtidos por meio do intervalo de amostragem (\eqn{I}). O primeiro elemento \eqn{i} a compor a amostra e sorteado entre 1 e \eqn{I}. Os demais numeros sao obtidos considerando o inicio casual e o intervalo de amostragem por meio de uma progressao aritmetica. Desta forma, os elementos a serem amostrados serao: \eqn{i;\;i+I;\;i+2I;\;\ldots,\;i+(n-1)I}.
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
#sortear 10 alunos de uma sala de aula com 30 alunos

am.as(30,10)
}
