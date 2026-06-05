test_that("read_clc_msi_locus_section finds table", {

  df <- read_clc_msi_locus_section("test_data/WS123456_12345678_clc_msi_report_test.xlsx")

  expect_true(all(dim(df) == c(452, 3)))

})
