\name{graf.hist}
\alias{graf.hist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Histograma e outros
}
\description{Confecciona a tabela de distribuicao de frequencias com variadas frequencias e graficos
}
\usage{
graf.hist(x,
          arred_c=2,
          arred_LI1=2,
          grafs,
          col= "yellow",
          xlab= "Título do eixo-x",
          ylab= "Titulo do eixo-y")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel.}
  \item{arred_c}{define o numero de casas decimais para o intervalo de classe.}
  \item{arred_LI1}{define o numero de casas decimais para o limite inferior da primeira classe.}
  \item{grafs}{define o grafico a confeccionar. Use \bold{1} para \bold{histograma}, \bold{2} para \bold{poligono de
  frequencias}, \bold{3} para \bold{histograma e poligono de frequencias}, \bold{4} para \bold{ogiva crescente} e \bold{5} para \bold{ogiva decrescente}.}
  \item{col}{define a cor das colunas do histograma, o \emph{default} e yellow.}
  \item{xlab}{nomeia a variavel apresentada no eixo horizontal.}
  \item{ylab}{nomeia a variavel apresentada no eixo vertital.}
 }
\details{Esta funcao confecciona a tabela de distribuicao de frequencias
de uma variavel quantitativa continua e apresenta os graficos da tabela.}
\value{
Sao retornados a tabela de distribuicao de frequencias contendo os intervalos (classes) da variavel, as variadas frequencias e os graficos da tabela.
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
\code{\link{freq.cont}}
}
\examples{
data(banco)
attach(banco)
graf.hist(x=alturaMM,
          grafs = 3,    #definir 1, 2, 3, 4 ou 5
          arred_c=2, arred_LI1=2,
          col = "lightyellow",
          xlab = "Altura dos estudantes (m)",
          ylab ="Quantidade de estudantes")
}
