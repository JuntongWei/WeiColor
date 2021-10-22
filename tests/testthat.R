library(testthat)
library(WeiColor)

#test_check("WeiColor")


test_that("Test Palette",  {
  expect_equal(length(bright_colours), 7)
  expect_warning(bright_palette(direction = 1)(0), "At least one color should be selected")
  expect_equal(bright_palette(other = "Red", direction = 1)(2), c("#c95975", "#5975c9"))
  expect_equal(bright_palette(direction = 1)(4), c("#5975c9",
                                                   "#75c959",
                                                   "#c95975",
                                                   "#c9ad59"))
  expect_equal(bright_palette(direction = -1)(4), c("#c9ad59",
                                                    "#c95975",
                                                    "#75c959",
                                                    "#5975c9"))
  expect_warning(bright_palette(direction = 1)(10), "Bright Color Palette only has 7 colors.")
})

test_that("Test continous", {
  expect_equal(length(bright_colours), 7)
  expect_error(scale_colour_bright_seq_c("red", direction = 1, amount = 0.2), "This color not included in this package.")
})



