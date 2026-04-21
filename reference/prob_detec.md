# Probability of detection

Probability of detection

Probability of detection

## Usage

``` r
prob_detec(env, mu, sigl, sigr, c, pd, L = NULL)

prob_detec(env, mu, sigl, sigr, c, pd, L = NULL)
```

## Arguments

- env:

  Environmental time serires matrix. Rows are sites and columns are
  yearly time steps.

- mu:

  Numeric parameter. It controls the center of the function

- sigl:

  Numeric parameter. It controls the left shape of the bell curve

- sigr:

  Numeric parameter. It controls the right shape of the bell curve

- c:

  Numeric parameter. It controls the growth limit.

- pd:

  Numeric parameter. It controls the maximum probability

- L:

  matrix parameter. Default is NULL (i. e. univariate Lewontin Cohen
  model)

## Value

A numeric value between 0 and 1 with the probability of detection given
the environmental time series matrix and the parameters

A numeric value between 0 and 1 with the probability of detection given
the environmental time series matrix and the parameters

## Examples

``` r
prob_detec(env = -1, mu =  0, sigl =  1, sigr =  0.9, c =  1.1, pd = 0.8)
#>           [,1]
#> [1,] 0.1343853
prob_detec(env = -1, mu =  0, sigl =  1, sigr =  0.9, c =  1.1, pd = 0.8)
#>           [,1]
#> [1,] 0.1343853
```
