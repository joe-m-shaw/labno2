test_that("extract_worksheet works", {
  expect_equal(extract_worksheet("WS123456_12345678"),
               "WS123456")
})

test_that("extract_worksheet handles lowercase ws", {
  expect_equal(extract_worksheet("ws123456_12345678"),
               "ws123456")
})

