test_that("read_json_as_df works", {

  df_json <- read_json_as_df("test_data/WS123456_12345678_test.json")

  expect_true(is.data.frame(df_json))

  expect_true(anyNA.data.frame(df_json |>
                                 dplyr::select(-threshold)) == FALSE)

  expect_true(all(dim(df_json) == c(10, 5)))

})
