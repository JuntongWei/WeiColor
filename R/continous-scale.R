
#' Add color for continuous variables
#'
#' @description  This function gives you the color change from light to heavy when you want to compare the value.
#'
#' @usage scale_colour_bright_seq_c(direction = , amount = )
#'
#' @include
#' \describe{
#'   \item{color}{The color you choose from this package}
#'   \item{direction}{Logical, 1 is default lighter colours correspond to higher values, -1 is reverse}
#'   \item{amount}{Adjust the lighter of the color, it should between 0 to 1}
#'  ...
#' }
#' @note The color include in this package are "Blue", "Green", "Red", "Yellow", "Purple", "Indigo", "Orange"
#'
#' @examples
#'   #p + scale_colour_bright_seq_c("Blue", direction = 1, amount = 0.3)
#'
scale_colour_bright_seq_c <- function(name, direction = 1, amount = 0.2, ...) {

  if (!name %in% names(bright_colours)) stop("This color not included in this package. ")

  if (name %in% names(bright_colours)){
    if(direction >= 0){
      value <- c(colorspace::lighten(bright_colours[name], 0), colorspace::lighten(bright_colours[name], amount))
      } else {
      value <- c(colorspace::lighten(bright_colours[name], amount), colorspace::lighten(bright_colours[name], 0))
    }
  }

  ggplot2::scale_color_gradient(
    ...,
    low = value[1],
    high = value[2],
    aesthetics = "colour",
    guide = "colourbar",
    ...
  )
}


