\name{med.quantil}
\alias{med.quantil}
\title{
Medidas de posicao ou separatrizes (quantil)
}
\description{
Calcula o valor do quantil de interesse
}
\usage{
med.quantil(x,p)
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel}
  \item{p}{informar o quantil a ser calculado}
}
\details{
Permite obter o valor do quantil de interesse. Qualquer medida de posicao pode ser obtida.
}
\value{
E retormado o valor do quantil de interesse.
}
\references{
OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.

Langford, E. Quartiles in elementary statistics.Journal of Statistics Education, Chico, v.14, n.3, 2006.

\url{https://www.r-bloggers.com/2022/07/how-to-calculate-percentiles-in-r/}
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
Para o caso em que se queira o percentil 30 informe \eqn{p=30}, semelhantemente para os demais casos. Caso queira o valor de um quartil, primeiro transforme em percentil e, entao, informe o valor do percentil. Por exemplo, para calcular o primeiro quartil, use \eqn{p=25}, para obter o segundo quartil (mediana), use \eqn{p=50}, e assim por diante.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(banco)
attach(banco)
med.quantil(alturaMM,25)
}
