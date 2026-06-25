\name{med.var}
\alias{med.var}
\title{
Medidas de variabilidade
}
\description{
Calcula a variancia, o desvio padrao, o coeficiente de variacao e o intervalo interquartilico (IQR) de um conjunto de dados
}
\usage{
med.var(x)
}
\arguments{
    \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel}
    }
\details{
Permite obter os valores para a variancia, o desvio padrao, o coeficiente de variacao (em \%), a amplitude total (A) e o intervalo interquartilico (IQR).
}
\value{Sao retornados os valores para a variancia, o desvio padrao, o coeficiente de variacao (em \%), a amplitude total (A) e o intervalo interquartilico (IQR). Se os dados nao sao numericos estas medidas nao podem ser obtidas.
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
\examples{
data(banco)
attach(banco)
med.var(filhosMM)
}
