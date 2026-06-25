\name{prob.normal.areas}
\alias{prob.normal.areas}
\title{
Probabilidade de duas areas de uma variavel normal, \eqn{P(a < X < b) + P(c < X < d)}
}
\description{
Apresenta a probabilidade de ocorrer um valor entre os limites definidos e o grafico da funcao densidade de probabilidade.
}
\usage{
prob.normal.areas(a,b,c,d,mean,sigma)
}
\arguments{
  \item{a}{valor de interesse da variavel X}
  \item{b}{valor de interesse da variavel X}
  \item{c}{valor de interesse da variavel X}
  \item{d}{valor de interesse da variavel X}
  \item{mean}{media da variavel X}
  \item{sigma}{desvio padrao da variavel X}
}
\details{
Permite obter o valor da probabilidade \eqn{P(a < X < b) + P(c < X < d)} e o grafico da distribuicao de probabilidade exibindo a area sob a curva que corresponde a probabibilidade.
}
\value{Sao retornados  o valor da probabilidade \eqn{P(a < X < b) + P(c < X < d)} e o grafico da distribuicao de probabilidade exibindo a area sob a curva que corresponde a probabibilidade.
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
prob.normal.areas(a=155,b=160,c=180,d=190,mean=170,sigma=10)
prob.normal.areas(a=-3,b=-2,c=1,d=2,mean=0,sigma=1)
}
