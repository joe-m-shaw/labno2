# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working
with code in this repository.

## Overview

`labno2` is an R package that extracts DNA sample identifiers (lab
numbers, worksheet numbers, suffixes) from filenames used at the North
West Genomic Laboratory Hub. Lab numbers are 8-digit strings where the
first 2 digits encode the year (e.g., `26000001` = first sample of
2026).

**Important:** No patient-identifiable information should ever be
committed. Test data uses fictional names from Tolstoy novels (Pierre
Bezukhov, Anna Karenina, Ivan Ilyich) and generic identifiers (WS123456,
12345678).

## Common Commands

Run all tests:

``` r

devtools::test()
```

Run a single test file:

``` r

testthat::test_file("tests/testthat/test-extract-labno.R")
```

Build documentation (roxygen2):

``` r

devtools::document()
```

Check the package:

``` r

devtools::check()
```

Install locally:

``` r

devtools::install()
```

## Architecture

The package has a thin layered structure:

1.  **`R/regex-ids.R`** — single source of truth for all regex patterns.
    [`regex_ids()`](reference/regex_ids.md) returns a named list with
    `worksheet` and `labno_suffix` patterns. All extraction functions
    call this; change patterns here only.

2.  **`R/extract-*.R`** — three single-purpose extractors
    (`extract_worksheet`, `extract_labno`, `extract_suffix`) that each
    call [`regex_ids()`](reference/regex_ids.md) and use
    [`stringr::str_extract`](https://stringr.tidyverse.org/reference/str_extract.html)
    with capture groups. The `labno_suffix` regex uses non-digit
    boundary guards (`\D+`) to avoid matching 8 digits inside a longer
    numeric string.

3.  **`R/mutate-ids.R`** — `mutate_ids(df, id_col = filename)` applies
    all three extractors row-wise via
    [`dplyr::rowwise()`](https://dplyr.tidyverse.org/reference/rowwise.html)
    and adds derived columns (`labno_suffix`, `labno_suffix_worksheet`).
    Uses tidy evaluation for `id_col`.

4.  **`R/read_csv_ids.R`** — convenience wrapper: reads a CSV with
    [`readr::read_csv`](https://readr.tidyverse.org/reference/read_delim.html),
    adds `filepath` and `filename` columns, then calls
    [`mutate_ids()`](reference/mutate_ids.md).

## Key Regex Behaviour

The `labno_suffix` pattern is `(^|\D+)(\d{8})(a|b|c|d|)(\D+|$)`. Group 2
is the labno, group 3 is the suffix. The non-digit guards on both sides
prevent extracting 8 digits from longer numbers (e.g., a 10-digit
string). Samples tested multiple times on a worksheet get a letter
suffix (a, b, c, d); suffix is empty string (not NA) when absent.

## Communication Style

- Do not use “I” in responses. Instead, refer to yourself as “Claude
  Code”.
  - Correct: “Claude Code has written the file.”
  - Incorrect: “I have written the file.”
- When responding to a prompt or performing work of any kind, say
  “Processing”. Do not use verbs which are non-formal or could
  anthropomorphise Claude Code.
- Correct: “Processing”
- Incorrect: “Thinking”, “Razmatazzing”, “Churning”, “Pondering”
