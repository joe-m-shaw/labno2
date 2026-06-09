# Wrangle locus length tables from CLC MSI Excels into a tidy dataframe

The "Detect Microsatellite Instability" (MSI) tool in CLC produces an
Excel output with multiple tables of allele lengths for different MSI
loci. These tables are positioned vertically in a non-tidy format which
is hard to work with. This function performs the following steps:

## Usage

``` r
tidy_clc_msi_locus_tables(filepath)
```

## Arguments

- filepath:

  The full filepath to the CLC MSI Excel

## Value

A single tidy dataframe of all lengths for all loci in the report.

## Details

- First it finds the relevant section of the Excel
  (`read_clc_msi_locus_section`)

- Then it identifiers different parts of the report based on row numbers
  (`mutate_clc_msi_row_numbers`)

- The different sections of data are joined to each other
  (`join_clc_msi_locus_tables`) in a tidy format
