# Probability mass fucntion

Probability mass fucntion

## Usage

``` r
bernoulli_lpmf(prob, occ, lp_sum = FALSE)
```

## Arguments

- prob:

  A value between 0 to 1 of probability of detection

- occ:

  A logical value (either 0 or 1) of observed detection

- lp_sum:

  Logical. If true, returns the total sum of the log likelihood

## Value

Numeric. Bernoulli log probability mass function

## Examples

``` r
prob <- prob_detec(env = matrix(c(-1, 0, -0.1, 0.9), ncol = 1),
 mu =  0, sigl =  1, sigr =  0.9, c =  -0.8, pd = 0.9)
bernoulli_lpmf(prob, occ = c(0, 1, 1, 0))
#> [1] -0.7277350 -0.4764612 -0.4780140 -0.7277350
```
