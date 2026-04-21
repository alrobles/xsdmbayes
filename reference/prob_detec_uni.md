# Probability of detection

Probability of detection

## Usage

``` r
prob_detec_uni(env, mu, sigl, sigr, c, pd)
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

## Value

A numeric value between 0 and 1 with the probability of detection given
the environmental time series matrix and the parameters
