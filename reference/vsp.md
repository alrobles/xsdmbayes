# Virtual species

Virtual species

## Usage

``` r
vsp(envData, param.list = NULL)
```

## Arguments

- envData:

  A list with environmental time series raster object

- param.list:

  A list of parameters. Could be null for an unidimensional model (i. e.
  one environmental variable in the env list)

## Value

A raster with the probability of detection of the virtual species

## Examples

``` r
if (instantiate::stan_cmdstan_exists()) {
bio1_ts <- terra::unwrap(cmcc_cm_bio1)
envData <- list(bio1 = bio1_ts)
pars <- list(mu = 4.38, sigl = 1.24, sigr = 1.05, c = -8.39, pd = 0.61)
vsp( envData, param.list =  pars)
}
```
