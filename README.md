
<!-- README.md is generated from README.Rmd. Please edit that file -->

# labno2

<!-- badges: start -->
<!-- badges: end -->

`labno2` is a package that makes it easier to work with sample
identifiers used at the North West Genomic Laboratory Hub.

# What does it mean?

Each sample is given a DNA “lab number” which is stored as “labno” in
sample databases.

## Installation

You can install the development version of labno2 from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("joe-m-shaw/labno2")
```

## Information Governance

**No patient identifiable information should be included in this
repository.**

If you spot some, please let me know.

For the purpose of testing functions, I have used generic examples for
worksheet (WS123456) and lab number (12345678) values.

Where examples of patient names are required, I have used character
names from novels by Leo Tolstoy (Anna Karenina, Pierre Bezukhov etc).

## Use of Claude Code

I have used Claude Code to;

- Suggest code improvements

- Generate initial function structure

- Generate fake data for testing functions

## Example

You can use `labno2` to extract sample identifiers stored in filenames,
which is useful when doing data projects involving multiple sample
files.

``` r

library(labno2)

filename <- "WS123456_12345678a"
```

Using `labno2`, you can quickly extract the worksheet number that the
sample was tested on

``` r

extract_worksheet(filename)
#> [1] "WS123456"
```

You can extract the lab number, and its suffix (if present). Samples
which are tested multiple times per worksheet will have suffixes of a,
b, c etc.

``` r

extract_labno(filename)
#> [1] "12345678"

extract_suffix(filename)
#> [1] "a"
```

`labno` also includes the `mutate_ids` function to extract all this
information in one go from a dataframe column.

``` r

data <- data.frame(
  "filename" = c(filename),
  "gene_result" = c(1)
)

mutate_ids(data)
#> # A tibble: 1 × 7
#>   filename           gene_result labno    suffix worksheet labno_suffix
#>   <chr>                    <dbl> <chr>    <chr>  <chr>     <chr>       
#> 1 WS123456_12345678a           1 12345678 a      WS123456  12345678a   
#> # ℹ 1 more variable: labno_suffix_worksheet <chr>
```
