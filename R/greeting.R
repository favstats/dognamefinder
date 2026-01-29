#' @export
greet <- function(name, excited = FALSE) {
  msg <- paste0("Hello, ", name)

  if (excited) {

    msg <- paste0(msg, "!!!")

  }
  msg
}
