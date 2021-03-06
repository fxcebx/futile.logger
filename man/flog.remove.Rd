\name{flog.remove}
\alias{flog.remove}
\title{Remove a logger}
\arguments{
  \item{name}{The logger name to use}
}
\description{
  In the event that you no longer wish to have a logger
  registered, use this function to remove it. Then any
  references to this logger will inherit the next available
  logger in the hierarchy.
}
\section{Usage}{
  # Remove a logger\cr flog.remove(name)
}
\examples{
flog.threshold(ERROR, name='my.logger')
flog.info("Won't print", name='my.logger')
flog.remove('my.logger')
flog.info("Will print", name='my.logger')
}
\author{
  Brian Lee Yung Rowe
}
\keyword{data}

