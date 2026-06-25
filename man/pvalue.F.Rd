\name{pvalue.F}
\alias{pvalue.F}

\title{
Valor-p do teste F (cauda superior)
}
\description{
Apresenta o valor-p do teste F (cauda superior)
}
\usage{
pvalue.F(fcalc, df1, df2)
}

\arguments{
  \item{fcalc}{valor da estatistica de teste}
  \item{df1}{graus de liberdade relacionado a fonte de variacao do numerador}
  \item{df2}{graus de liberdade relacionado a fonte de variacao do denominador}
}
\details{
Permite obter o valor-p do teste F.

}
\value{Retorna o valor-p do teste F.


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
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{


pvalue.F(fcalc=1.2345, df1=2, df2=33)
pvalue.F(fcal=50, df1=2, df2=10)

}
