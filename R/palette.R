
bright_colours <- list(
  "Blue" = "#5975c9",
  "Green" = "#75c959",
  "Red" = "#c95975",
  "Yellow" = "#c9ad59",
  "Purple" = "#7559c9",
  "Indigo" = "#59c9c9",
  "Orange" = "#c97559"
)



#' Color scales
#'
#' @description This function is an custom color palette for ggplot2.
#'
#' @usage bright_palette(primary = , other = , direction = 1)
#'
#' @details
#' \describe{
#'   \item{primary}{The primary color, default is Blue}
#'   \item{other}{The other color that user can change, default is Red}
#'   \item{direction}{Logical, 1 is default primary value is blue, other is red, then -1 is reverse}
#'   \item{n}{The number of color selected}
#'  ...
#' }
#'
#'
#' @examples
#'  #p + bright_palette(direction=1)(2)
#'
bright_palette <- function(primary = "Blue",
                           other = "Red",
                           direction = 1) {
  stopifnot(primary %in% names(bright_colours))

  function(n) {

    if (n > 7) warning("Bright Color Palette only has 7 colors.")

    if (n < 1) warning("At least one color should be selected")

    if (n == 2) {
      other <- if (!other %in% names(bright_colours)) {
        other
      } else {
        bright_colours[other]
      }
      color_list <- c(other, bright_colours[primary])
    } else {
      color_list <- bright_colours[1:n]
    }

    color_list <- unname(unlist(color_list))
    if (direction >= 0) color_list else rev(color_list)
  }
}





