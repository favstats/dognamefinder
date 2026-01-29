#' Find a dog name based on selected attributes
#'
#' Randomly samples a dog name from the \code{dogs} dataset, optionally
#' conditioning on gender, breed, size, and character. If no exact match
#' exists, constraints are relaxed stepwise to ensure a valid result.
#'
#' @importFrom dplyr filter
#' @param gender Character string specifying the dog's gender. NULL by default, picks a random gender name.
#' @param breed Character string specifying the dog's breed.  NULL by default, picks a random breed. name.
#' @param size Character string specifying the dog's size category.
#' @param character Character string specifying the dog's character trait.
#'
#' @return A single character string containing a dog name.
#' @export
#' @examples
#' # find a female and Pug name
#' find_dogname(gender = "female", breed = "Pug")
#' find_dogname(size = "chonker", character = "aggressive")
#' find_dogname()
find_dogname <- function(gender = NULL,
                         breed = NULL,
                         size = NULL,
                         character = NULL) {


  # dplyr::filter()
  candidates <- dogs

  if (!is.null(gender)) {
    candidates <- candidates[candidates$gender == gender, ]
  }

  if (!is.null(breed)) {
    candidates <- candidates[candidates$breed == breed, ]
  }

  if (!is.null(size)) {
    candidates <- candidates[candidates$size == size, ]
  }

  if (!is.null(character)) {
    candidates <- candidates[candidates$character == character, ]
  }

  # If no candidates remain, relax constraints stepwise
  if (nrow(candidates) == 0) {
    candidates <- dogs

    if (!is.null(gender)) {
      candidates <- candidates[candidates$gender == gender, ]
    }

    if (!is.null(breed)) {
      candidates <- candidates[candidates$breed == breed, ]
    }

    if (nrow(candidates) == 0) {
      candidates <- dogs
    }
  }

  sample(candidates$name, 3)
}


