#' Regular expressions for sample identifiers
#'
#' Labno is specified as having non-digits on either side, to prevent
#' extracting 8 digits from a longer string of digits.
#'
#' @returns A named list of regular expressions for different identifiers
#' @export
#'
#' @examples regex_ids()$labno_suffix
regex_ids <- function(){

  output_list <- list(

    "worksheet" = list(
      "regex" = "(WS\\d{6}|ws\\d{6})\\D+",
      "worksheet_group" = 1),
    "labno_suffix" = list(
      "regex" = "(^|\\D+)(\\d{8})(a|b|c|d|)(\\D+|$)",
      "labno_group" = 2,
      "suffix_group" = 3),
    "igene_rno" = list(
      "regex" = "(R\\d{2}-.{4})",
      "igene_rno_group" = 1
    )
  )

  return(output_list)

}

