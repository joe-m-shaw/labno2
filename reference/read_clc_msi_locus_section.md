# Read the section of a CLC MSI Report Excel which contains locus lengths

Read the section of a CLC MSI Report Excel which contains locus lengths

## Usage

``` r
read_clc_msi_locus_section(
  filepath,
  locus_section_title = "Loci Length Distributions",
  ...
)
```

## Arguments

- filepath:

  The filepath to the CLC MSI Report

- locus_section_title:

  The string which marks the the change from the summary section of the
  report to the individual locus length tables.

- ...:

  Additional arguments to pass to read_excel if needed

## Value

The section of the Excel sheet containing the locus length tables with
every column formatted as text.
