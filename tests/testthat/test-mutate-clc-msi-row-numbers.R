test_that("mutate_clc_msi_row_numbers gives correct dimension output", {

  df_section <- read_clc_msi_locus_section("test_data/WS123456_12345678_clc_msi_report_test.xlsx")

  df_row_numbers <- mutate_clc_msi_row_numbers(df_section)

  expect_true(ncol(df_row_numbers) == 6)

  expect_false(all(is.na(df_row_numbers$row_table_start)))

})
