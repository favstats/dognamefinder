



test_that("male names are provided correctly", {
  result <- find_dogname("male")

  male_dogs <- dogs %>% dplyr::filter(gender == "male")

  expect_in(result, male_dogs$name)
})



test_that("female names are provided correctly", {
  result <- find_dogname("female")

  female_dogs <- dogs %>% dplyr::filter(gender == "female")

  expect_in(result, female_dogs$name)
})


# test_that("find_dogname returns a single character present in dogs$name", {
#   x <- find_dogname()
#   expect_type(x, "character")
#   expect_length(x, 1)
#   expect_true(x[1] %in% dogs$name)
# })


test_that("find_dogname returns a single item", {
  x <- find_dogname()
  # expect_type(x, "character")
  expect_length(x, 1)
  # expect_true(x[1] %in% dogs$name)
})



test_that("find_dogname returns a character", {
  x <- find_dogname()
  expect_type(x, "character")
})
