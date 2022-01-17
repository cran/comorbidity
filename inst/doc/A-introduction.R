## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(comorbidity)

set.seed(1)
df <- data.frame(
  id = sample(seq(100), size = 10000, replace = TRUE),
  code = sample_diag(n = 100)
)
# Sort
df <- df[order(df$id, df$code), ]
str(df)

## -----------------------------------------------------------------------------
charlson_df <- comorbidity(
  x = df,
  id = "id",
  code = "code",
  map = "charlson_icd10_quan",
  assign0 = FALSE
)
str(charlson_df)

## -----------------------------------------------------------------------------
length(unique(df$id)) == nrow(charlson_df)

## -----------------------------------------------------------------------------
quan_cci <- score(x = charlson_df, weights = "quan", assign0 = FALSE)
table(quan_cci)

## -----------------------------------------------------------------------------
length(quan_cci) == nrow(charlson_df)

## -----------------------------------------------------------------------------
unw_cci <- score(x = charlson_df, weights = NULL, assign0 = FALSE)
table(unw_cci)

