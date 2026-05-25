test_that("extract_suffix works", {
  expect_equal(extract_suffix("WS123456_12345678a"),
               "a")
})
