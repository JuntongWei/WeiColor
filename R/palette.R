# Define colour palette variables and functions here

bright_colours <- list(
  "Blue" = "#5975c9",
  "Green" = "#75c959",
  "Red" = "#c95975",
  "Yellow" = "#c9ad59",
  "Purple" = "#7559c9",
  "Indigo" = "#59c9c9",
  "Orange" = "#c97559"
)


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





