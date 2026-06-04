# Read a VCF file into R as a data frame

Read a VCF file into R as a data frame

## Usage

``` r
read_vcf_with_filename(filepath, rename_last_col = TRUE)
```

## Arguments

- filepath:

  The full filepath to a VCF

- rename_last_col:

  TRUE or FALSE, whether to rename the final column of the gt table,
  which often includes a file specific heading. Renaming the final
  column is helpful for reading a collating multiple VCFs from different
  samples.

## Value

A dataframe of the fix and gt tables from the VCF
