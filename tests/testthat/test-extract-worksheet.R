test_that("extract_worksheet works", {
  expect_equal(extract_worksheet("WS123456_12345678"),
               "WS123456")
})
