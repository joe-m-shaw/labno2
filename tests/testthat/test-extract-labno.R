test_that("extract_labno works", {
  expect_equal(extract_labno("WS123456_12345678"),
               "12345678")
})
