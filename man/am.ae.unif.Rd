\name{am.ae.unif}
\alias{am.ae.unif}

\title{Amostragem estratificada uniforme}
\description{Como o tamanho amostral dos estratos é igual ou aproximadamente igual, obtem-se o mesmo tamanho amostral para todos os estratos.
}
\usage{
am.ae.unif(k,n)
}
\arguments{
  \item{k}{numero de estratos em que a populacao foi dividida.
}
\item{n}{tamanho da amostra com a qual se quer trabalhar.}
}
\details{Permite obter o tamanho amostral a ser sorteado nos estratos.
}
\value{Retorna o tamanho da amostra a ser sorteado nos estratos.
}
\references{OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.
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
\note{Ao executar o comando, uma janela sera aberta para que seja inserido o tamanho populacional de cada estrato, ou seja, o numero de elementos de cada estrato \eqn{N_i}. Apos preencher as informacoes e fechar a janela, o resultado do tamanho amostral \eqn{n_i} de cada estrato sera impresso na tela.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#selecionar uma amostra de tamanho n=50 de uma populacao com k=5 estratos
#sendo o tamanho de cada estrato: N1=100, N2=98, N3=104, N4=102 e N5=96

am.ae.unif(k=5,n=50)


}
