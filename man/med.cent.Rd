\name{med.cent}
\alias{med.cent}
\title{
Medidas de tendencia central
}
\description{
Calcula a media, a mediana e a moda de conjunto de dados.
}
\usage{
med.cent(x)
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel.}
    }
\details{
Permite obter os valores para a media, a mediana e a moda de um conjunto de dados
}
\value{
Sao retornados os valores para as medidas media, mediana e moda. Se os dados nao sao numericos a media e a mediana nao podem ser calculadas.
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
med.cent(cineMM)
med.cent(filhosMM)
}
