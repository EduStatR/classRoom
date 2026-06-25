\name{am.asa.dados}
\alias{am.asa.dados}
\title{Amostragem simples ao acaso com acesso ao banco de dados}
\description{De um banco de dados de tamanho \eqn{N} sao sorteados \eqn{n} elementos para compor a amostra
}
\usage{
am.asa.dados(x,n,replace=FALSE,sort=FALSE)
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel na qual os elementos serao sorteados.}
\item{n}{tamanho da amostra com a qual se quer trabalhar}
\item{replace}{se FALSE (\emph{default}) realiza uma amostragem sem reposicao, se TRUE, com reposicao}
\item{sort}{se TRUE ordena os numeros sorteados de forma crescente e os elementos sorteados correspondentes, se FALSE (\emph{default}), apresenta os numeros e elementos na ordem do sorteio}
}
\details{
Permite sortear \eqn{n} elementos de um banco de dados de tamanho \eqn{N}.
}
\value{Retorna \eqn{n} elementos obtidos aleatoriamente do banco de dados de tamanho \eqn{N}.
}
\references{Oliveira et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.
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
am.asa.dados(idadeMM,10,replace=FALSE,sort=FALSE)

}
