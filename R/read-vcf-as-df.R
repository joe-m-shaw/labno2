read_vcf_as_df <- function(filepath, rename_last_col = TRUE) {

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

  vcf_object <- vcfR::read.vcfR(file = filepath,
                                verbose = FALSE)

  vcf_df <- tibble::as_tibble(cbind(vcf_object@fix, vcf_object@gt)) |>
    janitor::clean_names() |>
    dplyr::mutate(filepath = filepath,
                  filename = basename(filepath),
                  chrom = as.character(chrom))

  if(rename_last_col == TRUE){

    vcf_df <- vcf_df |>
      dplyr::rename(last_col = last_col())

  }

  return(vcf_df)

}



