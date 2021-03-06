% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Grading.R
\name{FindMatchingRow}
\alias{FindMatchingRow}
\title{FindMatchingRow}
\usage{
FindMatchingRow(rowtoMatch, DF)
}
\arguments{
\item{rowtoMatch}{One row of a data frame. If the length is longer, it won't output it.}

\item{DF}{Dataframe in which we want to find the matches.

It doesn't search that both the row of Df and rowtoMatch matches exactly, it only checks whether the columns that are found on rowtoMatch are found on DF with the same values (It decides which columns are "the same column" by looking at the names of the columns).

It will throw an error if the names of the columns on \code{rowtoMatch} are not all found on \code{DF}.}
}
\value{
Logical vector, with the same length as the number of rows in \code{DF}. It outputs \code{TRUE} if that row matched the \code{rowtoMatch}, \code{FALSE} otherwise
}
\description{
It outputs a logical vector identifying which rows in \code{DF} have the same values as the values on \code{rowtoMatch}. It ignores all columns that are not found on \code{rowtoMatch} when doing the matching.
}
\details{
\strong{Note:} It matches using the name of columns from \code{rowtoMatch}, matching them to the names of the \code{DF}.


It will output \code{logical(0)} if the \code{rowtoMatch} is null, or if is a data frame with 0 rows.
}
\keyword{internal}
