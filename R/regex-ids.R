regex_ids <- function(){

  #' Regular expressions for sample identifiers
  #'
  #' Labno is specified as having non-digits on either side, to prevent
  #' extracting 8 digits from a longer string of digits.
  #'
  #' @returns A named list of regular expressions for different identifiers
  #' @export
  #'
  #' @examples regex_ids()$labno_suffix

  output_list <- list(

    "worksheet" = "(WS\\d{6}|ws\\d{6})\\D+",
    "labno_suffix" = "(^|\\D+)(\\d{8})(a|b|c|d||)(\\D+|$)"
  )

  return(output_list)

}
