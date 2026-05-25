extract_worksheet <- function(input){

  #' Extract worksheet from a character string
  #'
  #' The worksheet identifier is "WS" followed by 6 digits. Worksheet numbers
  #' increase over time, and do not reset to 0 at the beginning of
  #' each year.
  #'
  #' @param input A character string containing a worksheet identifier
  #'
  #' @returns The worksheet identifier as a string
  #' @export
  #'
  #' @examples extract_worksheet("WS123456_12345678")

  output <- stringr::str_extract(string = input,
                                 pattern = regex_ids()$worksheet)

  return(output)

}
