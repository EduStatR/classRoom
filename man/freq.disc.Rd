\name{freq.disc}
\alias{freq.disc}
\title{Tabela de distribuicao de frequencias: variavel quantitativa discreta
}
\description{
Confecciona a tabela de distribuicao de frequencias e o grafico de colunas
}
\usage{
freq.disc(x,
          graf=FALSE,
          xlab="Titulo do eixo-x",
          ylab="Titulo do eixo-y",
          col="darkblue")
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel.}
  \item{graf}{se TRUE, o grafico de colunas com as frequencias absolutas sera apresentado, o \emph{default} e FALSE.}
  \item{xlab}{nomeia a variavel apresentada no eixo horizontal.}
 \item{ylab}{nomeia a variavel apresentada no eixo vertical.}
 \item{col}{define a cor das colunas do grafico, o \emph{default} e darkblue.}
}
\details{Esta funcao confecciona a tabela de distribuicao de frequencias de uma variavel quantitativa discreta e apresenta o grafico de colunas.}
\value{
Sao retornados a tabela de distribuicao de frequencias contendo as categorias da variavel, as frequencias absolutas (fi), as frequencias relativas (fr), as frequencias percentuais (fp), as frequencias acumuladas absolutas (FA) e as frequencias acumuladas acima (FAp) e o grafico de colunas se solicitado.
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
\code{\link{freq.cont}},
\code{\link{freq.dupla}},
\code{\link{freq.quali}},
\code{\link{graf.bastao}},
\code{\link{graf.box}},
\code{\link{graf.col}},
\code{\link{graf.col2}},
\code{\link{graf.diag}},
\code{\link{graf.hist}},
\code{\link{graf.linha}},
\code{\link{graf.linhas}},
\code{\link{graf.pic}},
\code{\link{graf.pizza}},
\code{\link{graf.pontos}},
\code{\link{graf.ramo}}
}
\examples{
data(banco)
attach(banco)
freq.disc(x=filhosMM,
          graf=TRUE,
          xlab="Numero de filhos na familia",
          ylab="Quantidade de alunos",
          col="lightgreen")
}
