# Regular expressions for sample identifiers

Labno is specified as having non-digits on either side, to prevent
extracting 8 digits from a longer string of digits.

## Usage

``` r
regex_ids()
```

## Value

A named list of regular expressions for different identifiers

## Examples

``` r
regex_ids()$labno_suffix
#> $regex
#> [1] "(^|\\D+)(\\d{8})(a|b|c|d|)(\\D+|$)"
#> 
#> $labno_group
#> [1] 2
#> 
#> $suffix_group
#> [1] 3
#> 
```
