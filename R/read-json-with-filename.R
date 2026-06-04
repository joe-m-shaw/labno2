#' Read a table from a JSON file as a dataframe
#'
#' @param filepath The filepath for the JSON file
#' @param json_list A function which includes the list structure to the table of
#' interest within the JSON file. The default argument is for the table
#' containing quality control information in a PanSolid JSON file.
#'
#' @returns The table as a dataframe, including filename and filepath columns
#' @export
#'
read_json_with_filename <- function(filepath, json_list = function(x) x$data$summary$quality_control$table_1) {

  json_object <- jsonlite::fromJSON(txt = filepath, flatten = TRUE)

  json_df <- json_list(json_object) |>
    mutate_filename(filepath = filepath)

  return(json_df)

}
