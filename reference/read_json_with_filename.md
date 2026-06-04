# Read a table from a JSON file as a dataframe

Read a table from a JSON file as a dataframe

## Usage

``` r
read_json_with_filename(
  filepath,
  json_list = function(x) x$data$summary$quality_control$table_1
)
```

## Arguments

- filepath:

  The filepath for the JSON file

- json_list:

  A function which includes the list structure to the table of interest
  within the JSON file. The default argument is for the table containing
  quality control information in a PanSolid JSON file.

## Value

The table as a dataframe, including filename and filepath columns
