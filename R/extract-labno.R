extract_labno <- function(input){

  #' Extract lab number from a string
  #'
  #' The DNA "lab number" (labno) is an eight digit numeric string which
  #' is used to identify DNA samples at the Manchester Genomic Laboratory
  #' Hub.
  #'
  #' The labno has the year as the first 2 digits (2026 = 26) and the remaining
  #' 6 digits increase from 1.
  #' Example: the first sample of 2026 would have labno 26000001.
  #'
  #' @param input A character string containing a lab number
  #'
  #' @returns The lab number as a string
  #' @export
  #'
  #' @examples extract_labno("WS123456_12345678")

  if(!is.character(input)){
    stop("input must be a string")
  }

  if(input == ""){
    stop("input must not be empty")
  }

  output <- stringr::str_extract(string = input,
                                 pattern = regex_ids()$labno_suffix,
                                 group = 1)

  if(is.na(output)) {
     warning("NA value returned")
  }

  return(output)

}
