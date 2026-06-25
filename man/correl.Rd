\name{correl}
\alias{correl}

\title{Coeficiente de correlacao linear

}
\description{Apresenta o coeficiente de correlacao linear, a estatistica de teste, o valor-p do teste e o intervalo de confianca

}
\usage{
correl(x, y, tipo = "B", metodo = "pearson", conf.level = 0.95,
       graf = TRUE, xlab = "nome da variavel X", ylab = "nome da variavel Y",
       exact = NULL, continuity = FALSE)}

\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica uma das variaveis}
  \item{y}{nome da variavel ou da coluna do banco de dados que identifica a outra variavel}
\item{tipo}{tipo de hipotese em teste, o \emph{default} e "B": teste bilateral, mas ha outras opcoes: "E" para o teste unilateral a esquerda e "D" para o teste unilateral a direita.}
  \item{metodo}{permite definir qual tipo de correlacao sera calculada, o \emph{default} e "pearson", mas tem as opcoes: "kendall" e "spearman"}
  \item{conf.level}{nivel de confianca, o \emph{default} e 0.95}
  \item{graf}{confecciona o grafico se TRUE (\emph{default})}
    \item{xlab}{permite nomear a variavel apresentada no eixo horizontal}
  \item{ylab}{permite nomear a variavel apresentada no eixo vertical}
\item{exact}{usado nas correlacoes de Kendall e Spearman quando um valor-p exato precisa ser calculado, o \emph{default} e NULL}
\item{continuity}{se TRUE (\emph{default}) a correcao de continuidade e usada para nas correlacoes de Kendall e Spearman}
}
\details{Permite obter o coeficiente de correlacao linear, a estatistica de teste, o valor-p do teste e o intervalo de confianca

}
\value{Retorna o coeficiente de correlacao linear, a estatistica de teste, o valor-p do teste e o intervalo de confianca

}
\references{
OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.

PAGANO, M.; GAUVREAU, K. Principios de bioestatistica. 2. ed. Sao Paulo: Cengage Learning, 2012. p. 506.
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


data(banco3)
attach(banco3)
correl(N.Colest,N.Trigl,tipo="B",metodo="pearson",conf.level=0.95,
      graf=TRUE,xlab="Nivel de colesterol",ylab="Nivel de triglicerideos",
      exact = NULL, continuity = FALSE)

}
