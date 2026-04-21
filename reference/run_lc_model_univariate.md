# Fit the Lewontin Cohen model.

Fit the Bernoulli Stan model and return posterior summaries.

## Usage

``` r
run_lc_model_univariate(occ, ts, grainsize = 10, ...)
```

## Arguments

- occ:

  Numeric vector of presence absence observations (zeroes and ones).

- ts:

  Numeric array of environmental variables. It has dimensions M (sites),
  N (time steps) and P (environmental variables)

- grainsize:

  The grainsize for the reduce sum parallelization inerly handle by stan
  code. Ideally is the

- ...:

  Named arguments to the \`sample()\` method of CmdStan model quotient
  between the number of observations and the number of cores. objects:
  \<https://mc-stan.org/cmdstanr/reference/model-method-sample.html\>

## Value

A data frame of posterior summaries.

## See also

Other models:
[`lc_multivariate()`](https://alrobles.github.io/xsdmbayes/reference/lc_multivariate.md),
[`lc_univariate()`](https://alrobles.github.io/xsdmbayes/reference/lc_univariate.md)

## Examples

``` r
if (instantiate::stan_cmdstan_exists()) {
 occ <- mus_virtualis
 bio1_ts <- terra::unwrap(xsdmbayes::cmcc_cm_bio1)
 bio12_ts <- terra::unwrap(xsdmbayes::cmcc_cm_bio12)
 envData <- list(bio1 = bio1_ts)
 ts <- envDataArray(occ, envData)
 run_lc_model_univariate(
  occ = occ$presence,
  ts = ts
  )
}
```
