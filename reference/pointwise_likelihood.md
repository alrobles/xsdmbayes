# Title

Title

## Usage

``` r
# S3 method for class 'xsdmbayes'
predict(object, scale = FALSE, ...)
```

## Arguments

- object:

  An xsdmbayes object

- scale:

  Logical. Should be environmental scaled? This function takes the mean
  and standard deviation of provided ocurrence (presence/absence)
  points. This scale was used in the fit process. to weight the
  environmental data provided to predict

- ...:

  pass arguments

- index:

  An integer ginving the row index from the sample of the posterior.
  Default 1

## Value

A raster map

## Examples

``` r
bio1_ts <- terra::unwrap(cmcc_cm_bio1)
bio12_ts <- terra::unwrap(cmcc_cm_bio12)
envData <- list(bio1 = bio1_ts, bio12 = bio12_ts)
pts <- mus_virtualis
if (instantiate::stan_cmdstan_exists()) {
mod <- xsdmbayes(envData, occ = pts, fit = TRUE, iter_warmup = 1000, iter_sampling = 1000, parallel_chains = 4, threads_per_chain = 5, recompile = TRUE )
model_draws <- xsdmbayes:::pointwise_likelihood(mod)
loo::loo(model_draws)
}
```
