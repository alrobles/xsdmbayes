# lc_univariate Gets the Lewontin Cohen model univariate

lc_univariate Gets the Lewontin Cohen model univariate

## Usage

``` r
lc_univariate()
```

## Value

NULL Is required for it side effects

## See also

Other models:
[`lc_multivariate()`](https://alrobles.github.io/xsdmbayes/reference/lc_multivariate.md),
[`run_lc_model_univariate()`](https://alrobles.github.io/xsdmbayes/reference/run_lc_model_univariate.md)

## Examples

``` r
if (instantiate::stan_cmdstan_exists()) {
  lc_univariate()
}
```
