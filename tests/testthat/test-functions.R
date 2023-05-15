test_that("preproc() returns expected number of cols", {
  # setup
  db_raw <- readr::read_csv(here::here("data-raw/penguins.csv"))

  # eval
  db <- preproc(db_raw)

  # test
  ncol(db) |> expect_equal(4)
})
