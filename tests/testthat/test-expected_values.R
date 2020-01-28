linspace <- function(x1, x2, n=100) {
  stopifnot(is.numeric(x1), is.numeric(x2), length(x1)==1, length(x2)==1)
  n <- floor(n)
  if (n <= 1) x2
  else seq(x1, x2, length.out=n)
}


logseq <- function(x1, x2, n=100) {
  x <- linspace(log(abs(x1)), log(abs(x2)), n)
  exp(x)
}

context("xl_rounds up from 5")

testthat::test_that("Return expect values", {
  x <- logseq(1e-20, 1e20, 41)
  expected <- x + 1

  object <- xl_round(x+0.5, 0)

  testthat::expect_equal(object, expected)
})


context("xl_rounds down from 4")

testthat::test_that("Return expect values", {
  x <- logseq(1e-20, 1e20, 41)
  expected <- x

  object <- xl_round(x+0.49, 0)

  testthat::expect_equal(object, expected)
})
