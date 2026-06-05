# Join information in CLC MSI Report locus section

Join information in CLC MSI Report locus section

## Usage

``` r
join_clc_msi_locus_tables(
  df,
  row_distance_locus_to_table = 2,
  row_distance_stability_to_table = 1
)
```

## Arguments

- df:

  The output from mutate_clc_msi_row_numbers

- row_distance_locus_to_table:

  The number of rows between the locus name and the table of length
  information for that locus

- row_distance_stability_to_table:

  The number of rows between the stability prediction for a locus and
  the table of length information for that locus.

## Value

A list of tables with the first item being the final joined table
