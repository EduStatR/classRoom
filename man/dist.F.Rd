\name{dist.F}
\alias{dist.F}
\title{
Quantil da distribuicao F de Fisher-Snedecor (valor tabelado)
}
\description{
Apresenta o valor do quantil de acordo com a probabilidade e os graus de liberdade (cauda superior)
}
\usage{
dist.F(prob,df1,df2)
}
\arguments{
  \item{prob}{corresponde a probabilidade \eqn{\alpha}}
\item{df1}{graus de liberdade relacionado ao numerador}
\item{df2}{graus de liberdade relacionado ao denominador}
}

\details{Permite obter o valor do quantil de acordo com a probabilidade e os graus de liberdade e apresenta o grafico da distribuicao F.
}
\value{Retorna o valor do quantil de acordo com a probabilidade e os graus de liberdade e apresenta o grafico da distribuicao F.
}
\references{
OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.
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
\examples{dist.F(0.05,5,12)}
