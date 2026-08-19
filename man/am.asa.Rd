\name{am.asa}
\alias{am.asa}
\title{Amostragem simples ao acaso}
\description{Sorteia \eqn{n} elementos de uma populacao de tamanho \eqn{N} para compor a amostra.}
\usage{
am.asa(N,n,replace=FALSE,sort=FALSE)
}
\arguments{
  \item{N}{tamanho populacional, numero de elementos da populacao.}
\item{n}{tamanho da amostra com a qual se quer trabalhar.}
\item{replace}{se FALSE (\emph{default}), realiza uma amostragem sem reposicao, se TRUE, com reposicao}
\item{sort}{se FALSE (\emph{default}) apresenta os numeros sorteados na ordem de sorteio e, se TRUE, ordena de forma crescente os numeros sorteados.}
}
\details{
Permite sortear \eqn{n} elementos de uma populacao de tamanho \eqn{N}.
}
\value{Retorna \eqn{n} numeros obtidos aleatoriamente de uma populacao de tamanho \eqn{N}.
}
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
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{am.ae.ot}}, \code{\link{am.ae.prop}}, \code{\link{am.ae.unif}}, \code{\link{am.as.dados}},
\code{\link{am.ae.prop}}, \code{\link{am.as}}, \code{\link{am.asa.dados}}
}
\examples{
#sortear 10 alunos de uma sala de aula com 30 alunos
am.asa(N=30,n=10,replace=FALSE,sort=FALSE)
}
