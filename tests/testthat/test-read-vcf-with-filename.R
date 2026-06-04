test_that("reading a VCF works", {

  df_vcf <- read_vcf_with_filename("test_data/WS123456_12345678_test.vcf")

  expect_true(is.data.frame(df_vcf))

  expect_true(all(dim(df_vcf) == c(9,12)))

})

