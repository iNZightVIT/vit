## Functions and methods for writing data in data boxes

#' Draw a datatext grob
grid.datatext <- function(...)
    grid.draw(datatextGrob(...))

#' Construct a datatext grob
#'
#' datatextGrob constructs text of a vector of data.
#' datatextGrobs inherit the class "datatext".
#'
#' @param data a numeric or character vector of data.
#' @param title a character string to provide the title, usually the name of the data vector.
#' @param name a name for the grob to be constructed.
#' @param gp graphical parameters for the text, constructed with gpar().
#' @param vp a default viewport to be used when drawing the grob.

datatextGrob <- function(data, title = NULL, x = 0.5, max = 50, name = NULL, gp = NULL, vp = NULL, dp = 2){
    if (is.numeric(data)){
        data <- format(round(data, dp), nsmall = dp)
    }
    n <- length(data)
    if (n <= max){
        ntext <- n
        datalabs <- c(title, data)
    } else {
        ntext <- max
        datalabs <- c(title, data[1:(max - 1)], "...")
    }
    npcs <- (ntext:0)/ntext
    yunit <- unit(npcs, "npc") - unit(4*(npcs - 0.5), "mm") + unit(1 - npcs, "lines")
    grob(data = data, title = title, datalabs = datalabs, x = x, yunit = yunit, max = max,
         name = name, gp = gp, vp = vp, cl = "datatext")
}

drawDetails.datatext <- function(x, recording){
    datalabs <- x$datalabs
    yunit <- x$yunit
    x <- x$x
    grid.text(datalabs, x = x, y = yunit, just = "top")
}

editDetails.datatext <- function(x, specs){
    g <- datatextGrob(data = x$data, title = x$title, x = x$x,
                      max = x$max, name = x$name, gp = x$gp, vp = x$vp)
    g
}

validDetails.datatext <- function(x){
    if (!is.vector(x$data))
        stop("data must be provided as a vector")
    if (length(x$title) != 1)
        stop("title must be a vector of length 1")
    if (!is.numeric(x$max) | length(x$max) != 1 | x$max < 1)
        stop("max should be a numeric vector of length 1")
    x
}

grid.datatext.example <- function(data = rnorm(100), title = "X", name = "datatext.example")
    grid.datatext(data = data, title = title, name = name)
