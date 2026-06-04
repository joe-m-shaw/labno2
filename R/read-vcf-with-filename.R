#' Read a VCF file into R as a data frame
#'
#' @param filepath The full filepath to a VCF
#' @param rename_last_col TRUE or FALSE, whether to rename the final column
#' of the gt table, which often includes a file specific heading. Renaming
#' the final column is helpful for reading a collating multiple VCFs from
#' different samples.
#'
#' @returns A dataframe of the fix and gt tables from the VCF
#' @export
read_vcf_with_filename <- function(filepath, rename_last_col = TRUE) {

  vcf_object <- vcfR::read.vcfR(file = filepath,
                                verbose = FALSE)

  vcf_df <- tibble::as_tibble(cbind(vcf_object@fix, vcf_object@gt)) |>
    mutate_filename(filepath = filepath) |>
    dplyr::mutate(chrom = as.character(chrom))

  if(rename_last_col == TRUE){

    vcf_df <- vcf_df |>
      dplyr::rename(last_col = last_col())

  }

  return(vcf_df)

}
