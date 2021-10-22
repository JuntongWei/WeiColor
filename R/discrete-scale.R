# This is where your discrete ggplot palettes would go

scale_colour_bright_d <- function(direction = 1,
                                  primary = "Blue",
                                  other = "Red", ...) {
  ggplot2::discrete_scale(
    "colour", "bright",
    bright_palette(primary, other, direction),
    ...
  )
}

scale_fill_bright_d <- function(direction = 1,
                                primary = "Blue",
                                other = "Red", ...) {
  ggplot2::discrete_scale(
    "fill", "bright",
    bright_palette(primary, other, direction),
    ...
  )
}

