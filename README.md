
<!-- README.md is generated from README.Rmd. Please edit that file -->

# labtools

<!-- badges: start -->

<!-- badges: end -->

`labtools` is a package for exploratory data analysis at the North West
Genomic Laboratory Hub. `labtools` aims to be a centralised, public
repository of functions to help explore genetic data in reproducibly and
at scale in lab development projects.

## Installation

You can install the development version of labtools from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("joe-m-shaw/labtools")
```

## Information Governance

**No patient identifiable information should be included in this
repository.**

If you spot some, please let me know.

For the purpose of testing functions, I have used generic examples for
worksheet (WS123456) and lab number (12345678) values.

Where examples of patient names are required, I have used character
names from novels by Leo Tolstoy (Anna Karenina, Pierre Bezukhov etc).

## Example

You can use `labtools` to extract sample identifiers stored in
filenames, which is useful when doing data projects involving multiple
sample files.

``` r

library(labtools)

filename <- "WS123456_12345678a"

extract_worksheet(filename)
#> [1] "WS123456"

extract_labno(filename)
#> [1] "12345678"

extract_suffix(filename)
#> [1] "a"
```

A more detailed example is given in the “Reading files with labtools”
vignette.
