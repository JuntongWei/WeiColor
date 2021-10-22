# This is where your discrete ggplot palettes would go

#'Palettes for discrete ggplot
#'
#' @description  This function gives you the color palettes to change the discrete value
#'
#'@usage scale_colour_bright_d(direction = )
#'
#' @include
#' \describe{
#'   \item{primary}{The primary color, default is Blue}
#'   \item{other}{The other color that user can change, default is Red}
#'   \item{direction}{Logical, 1 is default primary value is blue, other is red, then -1 is reverse}
#'  ...
#' }
#'
#' @note The color include in this package are "Blue", "Green", "Red", "Yellow", "Purple", "Indigo", "Orange"
#'
#' @examples
#'   #p + scale_colour_bright_d(direction = 1)
#'
scale_colour_bright_d <- function(direction = 1,
                                  primary = "Blue",
                                  other = "Red", ...) {
  ggplot2::discrete_scale(
    "colour", "bright",
    bright_palette(primary, other, direction),
    ...
  )
}




#'
#' Palettes for discrete ggplot
#'
#' @description  This function gives you the color palettes to change the discrete value
#'
#'@usage scale_fill_bright_d(direction = )
#'
#' @include
#' \describe{
#'   \item{primary}{The primary color, default is Blue}
#'   \item{other}{The other color that user can change, default is Red}
#'   \item{direction}{Logical, 1 is default primary value is blue, other is red, then -1 is reverse}
#'  ...
#' }
#'
#' @note The color include in this package are "Blue", "Green", "Red", "Yellow", "Purple", "Indigo", "Orange"
#'
#' @examples
#'   #p + scale_fill_bright_d(direction = 1)
#'
scale_fill_bright_d <- function(direction = 1,
                                primary = "Blue",
                                other = "Red", ...) {
  ggplot2::discrete_scale(
    "fill", "bright",
    bright_palette(primary, other, direction),
    ...
  )
}

