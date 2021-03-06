% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grob-boxplot.R
\name{boxplotGrob}
\alias{boxplotGrob}
\title{Construct a boxplot grob}
\usage{
boxplotGrob(
  data,
  at = unit(0.15, "native"),
  height = unit(0.2, "native"),
  box.color = "lightgrey",
  median.color = "lightgrey",
  stat = NULL,
  stat.color = "blue",
  show.w = TRUE,
  show.m = TRUE,
  name = NULL,
  gp = gpar(lwd = 2),
  vp = NULL
)
}
\arguments{
\item{data}{A numeric vector of data}

\item{at}{The height on the y axis of the middle of the boxplot}

\item{height}{The height of the boxplot}

\item{box.color}{A character string. The color to use for the box and whiskers}

\item{median.color}{A character string. The color to use for the median line}

\item{show.w}{A logical value that describes whether the whiskers should be drawn}

\item{name}{A name for the grob to be constructed}

\item{gp}{graphical parameters for the boxplot, constructed with gpar()}

\item{vp}{A default viewport to be used when drawing the grob}
}
\description{
boxplotGrob constructs a horizontally oriented boxplot that describes a vector of data.
To create a vertical boxplot, rotate the viewport it is drawn in. boxplotGrobs inherit the #' class "boxplot".
}
