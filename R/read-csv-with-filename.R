#' Read a csv file and add the filename as a column
#'
#' @param filepath Filepath to a csv file.
#'
#' @returns The csv file as a dataframe with the filename and filepath as
#' additional columns
#' @export
#'
read_csv_with_filename <- function(filepath){

  output <- readr::read_csv(file = filepath) |>
    mutate_filename(filepath = filepath)

  return(output)

}
