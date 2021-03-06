% Please edit documentation in R/plot.R
\name{include_graphics}
\alias{include_graphics}
\title{Embed external images in \pkg{knitr} documents}
\usage{
include_graphics(path, auto_pdf = TRUE, dpi = NULL)
}
\arguments{
\item{path}{a character vector of image paths}

\item{auto_pdf}{whether to use PDF images automatically when the output
format is LaTeX, e.g. \file{foo/bar.png} will be replaced by
\file{foo/bar.pdf} if the latter exists; this can be useful since normally
PDF images are of higher qualities than raster images like PNG when the
output is LaTeX/PDF}

\item{dpi}{the DPI (dots per inch) value to be used to calculate the output
width (in inches) of the images from the actual width (in pixels) divided
by \code{dpi}; if not provided, the chunk option \code{dpi} is used; if
\code{NA}, the output width will not be calculated}
}
\value{
The same as the input character vector \code{path} but it is marked
  with special internal S3 classes so that \pkg{knitr} will convert the file
  paths to proper output code according to the output format.
}
\description{
When plots are not generated from R code, there is no way for \pkg{knitr} to
capture plots automatically. In this case, you may generate the images
manually and pass their file paths to this function to include them in the
output. The major advantage of using this function is that it is portable in
the sense that it works for all document formats that \pkg{knitr} supports,
so you do not need to think if you have to use, for example, LaTeX or
Markdown syntax, to embed an external image. Chunk options related to
graphics output that work for normal R plots also work for these images, such
as \code{out.width} and \code{out.height}.
}
\note{
This function is supposed to be used in R code chunks or inline R code
  expressions. You are recommended to use forward slashes (\verb{/}) as path
  separators instead of backslashes in the image paths.

  The automatic calculation of the output width requires the \pkg{png}
  package (for PNG images) or the \pkg{jpeg} package (for JPEG images). The
  width will not be calculated if the chunk option \code{out.width} is
  already provided or \code{dpi = NA}.
}
