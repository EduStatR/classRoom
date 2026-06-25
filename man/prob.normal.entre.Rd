\name{prob.normal.entre}
\alias{prob.normal.entre}
\title{
Probabilidade entre dois valores de uma variavel normal, \eqn{P(a < X < b)}
}
\description{
Apresenta a probabilidade de ocorrer um valor entre os limites definidos e o grafico da funcao densidade de probabilidade.
}
\usage{
prob.normal.entre(a,b,mean,sigma)
}
\arguments{
  \item{a}{valor de interesse da variavel X}
  \item{b}{valor de interesse da variavel X}
  \item{mean}{media da variavel X}
  \item{sigma}{desvio padrao da variavel X}
}
\details{
Permite obter o valor da probabilidade \eqn{P(a < X < b)} e o grafico da distribuicao de probabilidade exibindo a area sob a curva que corresponde a probabibilidade.
}
\value{Sao retornados  o valor da probabilidade \eqn{P(a < X < b) } e o grafico da distribuicao de probabilidade exibindo a area sob a curva que corresponde a probabibilidade.
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
prob.normal.entre(a=150,b=160,mean=170,sigma=10)
prob.normal.entre(a=-3,b=-2,mean=0,sigma=1)
}
