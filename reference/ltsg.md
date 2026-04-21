# Univariate long term stochastic growth function for a Lewontin Cohen demographic environmental model

Univariate long term stochastic growth function for a Lewontin Cohen
demographic environmental model

## Usage

``` r
ltsg(env, mu, sigl, sigr, L = NULL)
```

## Arguments

- env:

  Matrix Environmental time series (columns) per sites (rows)

- mu:

  numeric parameter.

- sigl:

  numeric parameter.

- sigr:

  numeric parameter

- L:

  matrix parameter

## Value

A vector with long term stochastic growht values calculated in each site

## Examples

``` r
ltsg(env = -1, mu = 0, sigl = 1, sigr = 0.9)
#>      [,1]
#> [1,] -0.5
```
