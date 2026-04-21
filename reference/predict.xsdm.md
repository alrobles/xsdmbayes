# Title

Title

## Usage

``` r
# S3 method for class 'xsdmbayes'
predict(object, index = 1, scale = FALSE, ...)
```

## Arguments

- object:

  An xsdmbayes object

- index:

  An integer ginving the row index from the sample of the posterior.
  Default 1

- scale:

  Logical. Should be environmental scaled? This function takes the mean
  and standard deviation of provided ocurrence (presence/absence)
  points. This scale was used in the fit process. to weight the
  environmental data provided to predict

- ...:

  pass arguments

## Value

A raster map

## Examples

``` r
bio1_ts <- terra::unwrap(cmcc_cm_bio1)
envData <- list(bio1 = bio1_ts)
pts <- mus_virtualis
if (instantiate::stan_cmdstan_exists()) {
mod <- xsdmbayes(envData, occ = pts, fit = "map" )
predict(mod)
}
```
