test_that("ranks are calculated right", {
  
  testdat <- data.frame(one = rep(LETTERS[1:2], each = 3),
                        taxa_name = letters[3:4][c(1,2,2,2,2,1)])
  
  ans <- calc_ranks(testdat)
  
  right_ans <- data.frame(taxa_name = c("c", "d"),
                          n = c(2,4),
                          rank = c(2,1))
  
  expect_equal(ans, right_ans)
  
  expect_error(calc_ranks(data.frame(one = 1, two = 2)))
})
