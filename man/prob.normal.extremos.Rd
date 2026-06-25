\name{prob.normal.extremos}
\alias{prob.normal.extremos}

\title{
Probabilidade de duas areas nas pontas da cauda de uma variavel normal, \eqn{P(X < a) + P(X > b)}
}
\description{
}
\usage{
prob.normal.extremos(a,b,mean,sigma)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a}{valor de interesse da variavel X}
  \item{b}{valor de interesse da variavel X}
  \item{mean}{media da variavel X}
  \item{sigma}{desvio padrao da variavel X}
}
\details{
Permite obter o valor da probabilidade \eqn{P(X < a) + P(X > b)} e o grafico da distribuicao de probabilidade exibindo a area sob a curva que corresponde a probabibilidade.
}
\value{Sao retornados  o valor da probabilidade \eqn{P(X < a) + P(X > b)} e o grafico da distribuicao de probabilidade exibindo a area sob a curva que corresponde a probabibilidade.
}
\references{
OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.
}
\author{
Ana Eliza Santa Rosa Scotini

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
prob.normal.extremos(a=-2,b=2,mean=0,sigma=1)
prob.normal.extremos(a=150,b=190,mean=170,sigma=10)


}
