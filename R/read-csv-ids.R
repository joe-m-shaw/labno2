#' Read a csv file and add identifiers
#'
#' @param filepath Filepath to a csv file with worksheet, labno and suffix
#' identifiers in the filename
#'
#' @returns The csv file as a dataframe with additional columns containing the
#' identifiers from the filename
#' @export
#'
read_csv_ids <- function(filepath){

  output <- readr::read_csv(file = filepath) |>
    dplyr::mutate(filepath = filepath,
                  filename = basename(filepath)) |>
    mutate_ids()

  return(output)

}
