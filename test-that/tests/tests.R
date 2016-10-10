#range value tests
# load the source code of the functions to be tested
source("../functions/range-value.R")
source("../functions/missing-values.R")

# context with one test that groups expectations
context("Test for range value ") 

test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)

  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')

  y <- c(1, 2, 3, 4, NA)

  expect_equal(range_value(y), 'NA_real_')
  expect_length(range_value(y), 1)

  z <- c(TRUE, FALSE, TRUE)

  expect_equal(range_value(z), '1L')
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')

  w <- leters[1:5]

  expect_error(range_value(w), 'Input is not correct')
})

context("Test for missing values")

test_that("missing values works as expected ", {

  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(range_value(x), 0)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double') 

  y <- c(1, 2, 3, 4, NA)

  expect_equal(range_value(y), 0)
  expect_length(range_value(y), 1)
  expect_type(range_value(y), 'double')
  
  z <- c(TRUE, FALSE, TRUE) 

  expect_equal(range_value(z), 0)
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'double')

  w <- letters[1:5]

  expect_equal(range_value(w), 0)
  expect_length(range_value(w), 1)
  expect_type(range_value(w), 'double')
 
})
