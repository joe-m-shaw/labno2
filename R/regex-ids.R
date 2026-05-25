regex_ids <- function(){

  #' Regular expressions for sample identifiers
  #'
  #' @returns A named list of regular expressions for different identifiers
  #' @export
  #'
  #' @examples regex_ids()$labno_suffix

  output_list <- list(

    "worksheet" = "(WS\\d{6})",
    "labno_suffix" = "(\\d{8})(a|b|c|d|)"
  )

  return(output_list)

}
