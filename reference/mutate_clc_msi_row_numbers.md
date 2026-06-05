# Add row numbers to the locus table section of a CLC MSI Report

Add row numbers to the locus table section of a CLC MSI Report

## Usage

``` r
mutate_clc_msi_row_numbers(
  df,
  regex_table = "Percentage: Baseline",
  regex_locus = ".*\\(\\w{1,2}\\)\\d{1,3}",
  regex_stability = "Stability"
)
```

## Arguments

- df:

  The dataframe output from read_clc_msi_locus_section

- regex_table:

  The column name of the final column of each locus length table

- regex_locus:

  Regular expression for identifying the locus name, which is 2 rows
  above the corresponding length table

- regex_stability:

  Regular expression for identifying the cell containing the stability
  prediction for a locus

## Value

The input dataframe with added columns showing the rownumber of each
cell
