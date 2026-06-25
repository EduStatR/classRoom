\name{graf.hist}
\alias{graf.hist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Histograma
}
\description{Confecciona a tabela de distribuicao de frequencias e o histograma
}
\usage{
graf.hist(x, arred_c=2, arred_LI1=2, graf=FALSE, polgfreq = FALSE,col= "yellow",
                      xlab = "Título do eixo-x", ylab = "Titulo do eixo-y")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel.}
  \item{arred_c}{Define o numero de casas decimais para o intervalo de classe.}
    \item{arred_LI1}{Define o numero de casas decimais para o limite inferior da primeira classe.}
  \item{graf}{se TRUE, o histograma com as frequencias absolutas sera apresentado, o \emph{default} e FALSE.}
  \item{polgfreq}{se TRUE, o polígono de frequencias absolutas sera apresentado, o \emph{default} e FALSE.}
  \item{xlab}{nomeia a variavel apresentada no eixo horizontal.}
 \item{ylab}{nomeia a variavel apresentada no eixo vertital.}
 \item{col}{define a cor das colunas do histograma, o \emph{default} e lightyellow.}
}
\details{Esta funcao confecciona a tabela de distribuicao de frequencias de uma variavel quantitativa continua e apresenta o histograma e o poligono de frequencias.}
\value{
Sao retornados a tabela de distribuicao de frequencias contendo as categorias da variavel, as frequencias absolutas (fi), as frequencias relativas (fr), as frequencias percentuais (fp), as frequencias acumuladas absolutas (FA) e as frequencias acumuladas acima (FAp) e o histograma e o poligono de frequencias quando solicitado.
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
graf.hist(x=alturaMM, arred_c=3, arred_LI1=3, graf=TRUE, polgfreq = TRUE,col= "yellow",
          xlab="Altura dos estudantes (m)",ylab="Quantidade de estudantes")

}
