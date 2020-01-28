
#' Round Numbers Like Excel
#'
#' Mimics the default rounding in Excel.
#'
#' @param x numeric vector.
#' @param digits integer indicating the number of decimal places.
#'
#' @export
#'
#' @examples
#' xl_round(.5 + -2:4)
xl_round <- function(x, digits = 0) {

  if (!is.numeric(x)) stop("x must be a numeric argument")

  x = x + abs(x) * sign(x) * .Machine$double.eps
  round(x, digits = digits)
}
