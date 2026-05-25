test_that("extract_suffix works", {
  expect_equal(extract_suffix("WS123456_12345678a"),
               "a")
})

test_that("extract_suffix works without suffix", {

  expect_equal(extract_suffix("WS123456_12345678_PierreBEZUKHOV"),
               "")

})
