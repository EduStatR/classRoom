\name{th.props.dnorm}
\alias{th.props.dnorm}

\title{
Teste de hipotese para duas proporcoes
}
\description{
Apresenta as proporcoes, os tamanhos amostrais, o quantil da distribuicao normal, a estatistica de teste, o valor-p e o grafico com a(s) regiao(oes) criticas e a representacao do valor-p.

}
\usage{
th.props.dnorm(p1, p2, n1, n2, d0 = 0, alpha = 0.05, tipo="B", metodo = 1)

}

\arguments{
  \item{p1}{valor da proporcao amostral do primeiro grupo}
  \item{p2}{valor da proporcao amostral do segundo grupo}
  \item{n1}{valor do tamanho amostral do primeiro grupo.}
  \item{n2}{valor do tamanho amostral do segundo grupo.}
  \item{d0}{valor assumido para o parametro populacional, o \emph{default} e 0.}
  \item{alpha}{nivel de significancia do teste, o \emph{default} e 0.05}
  \item{tipo}{tipo de hipotese em teste, o \emph{default} e "B": teste bilateral, mas ha outras opcoes: "E" para o teste unilateral a esquerda e "D" para o teste unilateral a direita.}
  \item{metodo}{define a estatistica de teste, o \emph{default} e 1; veja \strong{Note} para informacoes sobre os metodos disponiveis. }

}
\details{Permite obter as proporcoes, os tamanhos amostrais, o quantil da distribuicao normal, a estatistica de teste, o valor-p e o grafico com a(s) regiao(oes) criticas e a representacao do valor-p.
}
\value{Retorna as proporcoes, os tamanhos amostrais, o quantil da distribuicao normal, a estatistica de teste, o valor-p e o grafico com a(s) regiao(oes) criticas e a representacao do valor-p.

}
\references{
FERREIRA, D. F. Estatistica Basica. Lavras: Editora UFLA, 2005. p.664.

TRIOLA, M. F. Introducao a Estatistica. 7 ed. Rio de Janeiro: LTC Editora, 1999. p.407

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
\note{Estatistica de teste adotada nesta funcao:

\enumerate{
\item Metodo 1 (Wald)

\eqn{zc =\displaystyle\frac{\hat{p}_1 - \hat{p}_2 - d_0}{\sqrt{\displaystyle\frac{\hat{p}_1  (1 - \hat{p}_1)}{n_1}+\displaystyle\frac{\hat{p}_2  (1 - \hat{p}_2)}{n_2}}}
}

Sendo:
\itemize{
\item \eqn{\hat{p}_1}, \eqn{\hat{p}_2}, \eqn{n_1}, \eqn{n_2} as proporcoes e os tamanhos amostrais

\item  \eqn{d_0} valor assumido para o parametro populacional
}
\item Metodo 2

\eqn{zc =\displaystyle\frac{\hat{p}_1 - \hat{p}_2 - d_0}{\sqrt{\displaystyle\frac{\bar{p}  (1 - \bar{p})}{n_1}+\displaystyle\frac{\bar{p}  (1 - \bar{p})}{n_2}}}
}

Sendo:
\itemize{

\item \eqn{\hat{p}_1}, \eqn{\hat{p}_2}, \eqn{n_1}, \eqn{n_2} as proporcoes e os tamanhos amostrais

\item \eqn{d_0} valor assumido para o parametro populacional

\item \eqn{\bar{p}=\displaystyle\frac{x_1+x_2}{n_1+n_2}}
}

}
}
%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

th.props.dnorm(p1=0.70, p2=0.50, n1=200, n2=250, d0 = 0, alpha = 0.05, tipo="B",metodo=1)

th.props.dnorm(p1=0.333, p2=0.160, n1=30, n2=750, d0 = 0, alpha = 0.05, tipo="B",metodo=2)

}
