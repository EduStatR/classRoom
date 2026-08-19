\name{med.quantil}
\alias{med.quantil}
\title{
Medida de posicao ou separatriz (quantil)
}
\description{
Calcula o valor de um quantil, que divide um conjunto de dados ou uma distribuicao de probabilidades em partes, de acordo com uma determinada proporcao especificada pelo usuario. Os tipos mais conhecidos sao os percentis, os quartis e os decis.
}
\usage{
med.quantil(x,q)
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel}
  \item{q}{percentual correspondente ao quantil a ser calculado,
  informado entre 0 e 100. Por exemplo, use \code{q = 25} para o primeiro quartil e \code{q = 50} para a mediana.}
}
\details{
Permite obter o valor de um quantil especificado pelo usuário. O argumento \code{p} deve ser informado em porcentagem, variando de 0 a 100.
A partir do valor de \code{q}, podem ser obtidos percentis, quartis e outras medidas de posição baseadas em quantis.


}
\value{
Retorna o valor do quantil especificado.
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
O argumento \code{q} deve ser informado em porcentagem.

Para obter o percentil 30, informe \eqn{q = 30}.

Para obter os quartis, informe \eqn{q = 25} para o primeiro quartil,
\eqn{q = 50} para o segundo quartil (mediana) e
\eqn{q = 75} para o terceiro quartil.

Um percentil qualquer pode ser obtido atribuindo a \code{q} o valor desejado.
Por exemplo, para obter o percentil 2,5, informe \eqn{q = 2.5}.
}



\seealso{
\code{\link{med.cent}}, \code{\link{med.var}}
}
\examples{
data(banco)
attach(banco)
med.quantil(alturaMM,25)
}
