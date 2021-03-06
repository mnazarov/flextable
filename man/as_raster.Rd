% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/printers.R
\name{as_raster}
\alias{as_raster}
\title{get a flextable as a raster}
\usage{
as_raster(x, zoom = 2, expand = 2)
}
\arguments{
\item{x}{a flextable object}

\item{zoom, expand}{parameters used by \code{webshot} function.}
}
\description{
save a flextable as an image and return the corresponding
raster. This function has been implemented to let flextable be printed
on a ggplot object.
}
\note{
This function requires packages: webshot and magick.
}
\examples{
ft <- qflextable( head( mtcars ) )
\dontrun{
if( require("ggplot2") && require("webshot") ){
  print(qplot(speed, dist, data = cars, geom = "point"))
  grid::grid.raster(as_raster(ft))
}
}
}
\seealso{
Other flextable print function: \code{\link{docx_value}},
  \code{\link{format.flextable}},
  \code{\link{htmltools_value}},
  \code{\link{knit_print.flextable}},
  \code{\link{plot.flextable}},
  \code{\link{print.flextable}},
  \code{\link{save_as_html}}, \code{\link{save_as_image}}
}
\concept{flextable print function}
