#' Read an Excel file with additional columns for filename
#'
#' This is a helper function which can be combined with mutate_ids() when
#' reading in files.
#'
#' @param filepath The filepath to the Excel file
#' @param ... Extra arguments to pass to read_excel (range, skip etc)
#'
#' @returns The file as a dataframe, with additional filepath and filename
#' columns
#' @export
#'
read_excel_with_filename <- function(filepath, ...){

  df <- readxl::read_excel(path = filepath, ...) |>
    mutate_filename(filepath = filepath)

  return(df)

}
