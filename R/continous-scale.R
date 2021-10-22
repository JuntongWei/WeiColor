
scale_colour_bright_seq_c <- function(name, direction = 1, amount = 0.2, ...) {

  if (!name %in% names(bright_colours)) warning("Error: This color not included in this package. ")

  if (name %in% names(bright_colours)){
    if(direction >= 0){
      value <- c(colorspace::lighten(bright_colours[name], 0), colorspace::lighten(bright_colours[name], 0.2))
      } else {
      value <- c(colorspace::lighten(bright_colours[name], 0.2), colorspace::lighten(bright_colours[name], 0))
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


