context("data")

test_that("loading data works", {
  data("icd10_2009", package = "comorbidity")
  expect_s3_class(object = icd10_2009, class = "data.frame")

  data("icd10_2011", package = "comorbidity")
  expect_s3_class(object = icd10_2011, class = "data.frame")

  data("icd9_2015", package = "comorbidity")
  expect_s3_class(object = icd9_2015, class = "data.frame")

  data("icd10cm_2022", package = "comorbidity")
  expect_s3_class(object = icd10cm_2022, class = "data.frame")

  data("icd10cm_2018", package = "comorbidity")
  expect_s3_class(object = icd10cm_2018, class = "data.frame")

  data("icd10cm_2017", package = "comorbidity")
  expect_s3_class(object = icd10cm_2017, class = "data.frame")

  data("nhds2010", package = "comorbidity")
  expect_s3_class(object = nhds2010, class = "data.frame")

  data("australia10", package = "comorbidity")
  expect_s3_class(object = australia10, class = "data.frame")
})

test_that("right size", {
  data("icd10cm_2022", package = "comorbidity")
  expect_equal(object = nrow(icd10cm_2022), expected = 72750)
  expect_equal(object = ncol(icd10cm_2022), expected = 2)
})
