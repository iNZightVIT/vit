% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grob-ghosts.R
\name{ghostsGrob}
\alias{ghostsGrob}
\title{a grob used to display previous boxplots as ghost boxplots}
\usage{
ghostsGrob(
  p25,
  p50,
  p75,
  at = unit(0.15, "native"),
  height = unit(0.2, "native"),
  box.color = "red",
  median.color = "blue",
  alpha = 0.25,
  name = NULL,
  gp = gpar(lwd = 2),
  vp = NULL
)
}
\arguments{
\item{p25}{The 25th percentile of the data to draw a ghost boxplot for}

\item{p50}{The 50th percentile of the data to draw a ghost boxplot for}

\item{p75}{The 75th percentile of the data to draw a ghost boxplot for}
}
\description{
a grob used to display previous boxplots as ghost boxplots
}
