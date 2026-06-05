#' Title
#'
#' @param filepath
#'
#' @returns
#' @export
#'
#' @examples
tidy_clc_msi_locus_tables <- function(filepath) {

  df_locus_tables <- read_clc_msi_locus_section(filepath) |>
    mutate_clc_msi_row_numbers()

  df_list <- join_clc_msi_locus_tables(df_locus_tables)

  df_tidy <- df_list[[1]] |>
    mutate_filename(filepath)

  return(df_tidy)

}
