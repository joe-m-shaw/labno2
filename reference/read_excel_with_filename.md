# Read an Excel file with additional columns for filename

This is a helper function which can be combined with mutate_ids() when
reading in files.

## Usage

``` r
read_excel_with_filename(filepath, ...)
```

## Arguments

- filepath:

  The filepath to the Excel file

- ...:

  Extra arguments to pass to read_excel (range, skip etc)

## Value

The file as a dataframe, with additional filepath and filename columns
