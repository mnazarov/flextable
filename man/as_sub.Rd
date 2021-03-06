% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/05_content.R
\name{as_sub}
\alias{as_sub}
\title{subscript chunk}
\usage{
as_sub(x)
}
\arguments{
\item{x}{value, if a chunk, the chunk will be updated}
}
\description{
The function is producing a chunk with
subscript vertical alignment.
}
\note{
This is a sugar function that ease the composition of complex
labels made of different formattings. It should be used inside a
call to \code{\link{as_paragraph}}.
}
\examples{
ft <- flextable( head(iris), col_keys = c("dummy") )

ft <- compose(ft, i = 1, j = "dummy", part = "header",
    value = as_paragraph(
      as_sub("Sepal.Length"),
      " anything "
    ) )

autofit(ft)
}
\seealso{
Other chunk elements for paragraph: \code{\link{as_bracket}},
  \code{\link{as_b}}, \code{\link{as_chunk}},
  \code{\link{as_image}}, \code{\link{as_i}},
  \code{\link{as_sup}}, \code{\link{hyperlink_text}},
  \code{\link{linerange}}, \code{\link{minibar}}
}
\concept{chunk elements for paragraph}
