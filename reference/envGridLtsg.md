# Environmental Grid Array. Returns an array of environmental combinations from a grid with a length out split. It can be used to get the probability of detection along a list of environmental time series

Environmental Grid Array. Returns an array of environmental combinations
from a grid with a length out split. It can be used to get the
probability of detection along a list of environmental time series

## Usage

``` r
envGridLtsg(envData, param.list, lenght = 100)
```

## Arguments

- envData:

  A list with environmental raster time series

- param.list:

  A list of parameters. Could be null for an unidimensional model (i. e.
  one environmental variable in the env list)

- lenght:

  Number of grid splits

## Value

A data.table with probability of detection given a grid of environmental
range

## Examples

``` r
bio1 <- terra::unwrap(cmcc_cm_bio1)
bio12 <- terra::unwrap(cmcc_cm_bio12)
envData <- list(bio01 = bio1, bio12 = bio12)
pars <- list(
mu = c(3, 400),
sigl = c(0.5, 90),
sigr = c(0.5, 90),
L = matrix(c(1, 0, 0, 1), ncol = 2)
)
envGridLtsg(envData, pars)
#> Key: <bio01, bio12>
#>            bio01    bio12       ltsg
#>            <num>    <num>      <num>
#>     1: -3.273521 111.0230  -83.86893
#>     2: -3.273521 119.3604  -83.57577
#>     3: -3.273521 127.6978  -83.29120
#>     4: -3.273521 136.0352  -83.01521
#>     5: -3.273521 144.3726  -82.74780
#>    ---                              
#>  9996: 13.636966 903.0753 -241.91261
#>  9997: 13.636966 911.4127 -242.43472
#>  9998: 13.636966 919.7501 -242.96541
#>  9999: 13.636966 928.0875 -243.50468
#> 10000: 13.636966 936.4249 -244.05254
```
