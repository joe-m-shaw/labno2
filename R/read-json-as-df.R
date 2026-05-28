read_json_as_df <- function(filepath, json_list = function(x) x$data$summary$quality_control$table_1) {

  json_object <- jsonlite::fromJSON(txt = filepath, flatten = TRUE)

  json_df <- json_list(json_object) |>
    dplyr::mutate(
      filepath = filepath,
      filename = basename(filepath)
    )

  return(json_df)

}
