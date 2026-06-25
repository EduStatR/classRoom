\name{graf.box}
\alias{graf.box}
\title{
Boxplot (diagrama de caixa e bigodes)
}
\description{
Confecciona boxplot(s) de um conjunto de dados
}
\usage{
graf.box(...,
horizontal=FALSE,
nome.var=" ",
col="lightgreen",
labels=NULL)
}
\arguments{
  \item{...}{nome(s) da variavel(is) ou da(s) coluna(s) do banco de dados que identifica(m) a(s) variavel(is)}
  \item{horizontal}{se FALSE (\emph{default}), confecciona um boxplot na posicao vertical, se TRUE, na horizontal}
  \item{nome.var}{permite inserir o nome no eixo, o \emph{default} e vazio}
  \item{col}{permite alterar a cor do boxplot, o \emph{default} é "lighgreen"}
  \item{labels}{se NULL (\emph{default}) o(s) boxplot(s) e(sao) enumerado(s), para nomear cada boxplot, use \emph{labels="Nome da variavel"} para uma variavel, use \emph{labels=c("Nome da variavel 1", "Nome da variavel 2")} para duas variaveis e use \emph{labels=c("Nome da variavel 1", "Nome da variavel 2", \ldots, "Nome da variavel n")} para \emph{n} variaveis}

}
\details{
Permite obter um ou mais boxplot.
}
\value{
Retorna um ou mais boxplot.
}
\references{
LARSON, R; FARBER, B. Estatistica aplicada. 4ed. Sao Paulo: Pearson Prentice Hall, 2010.
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
Quando for informar o argumento "\eqn{\ldots}", apague-o e insira o nome da variavel. Se for mais variaveis, apage-o e insira os nomes das variaveis separados por virgula. Veja o exemplo.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(banco)
attach(banco)
graf.box(alturaMM,horizontal=FALSE,nome.var="Altura em metros",col="yellow",
         labels=c("Altura"))

graf.box(filhosMM,horizontal=FALSE,nome.var="Número de filhos na familia",col="lightyellow",
         labels=c("Filhos"))

graf.box(filhosMM,alturaMM, horizontal=TRUE,nome.var="Valores",col="cyan",
         labels=c("Filhos","Altura"))




}
