# lc_univariate Gets the multivariate Lewontin Cohen model

lc_univariate Gets the multivariate Lewontin Cohen model

## Usage

``` r
lc_multivariate()
```

## Value

NULL Is required for it side effects

## See also

Other models:
[`lc_univariate()`](https://alrobles.github.io/xsdmbayes/reference/lc_univariate.md),
[`run_lc_model_univariate()`](https://alrobles.github.io/xsdmbayes/reference/run_lc_model_univariate.md)

## Examples

``` r
if (instantiate::stan_cmdstan_exists()) {
  lc_multivariate()
}
```
