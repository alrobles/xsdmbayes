# Environmental Grid Array. Returns an array of environmental combinations from a grid with a length out split. It can be used to get the probability of detection along a list of environmental time series

Environmental Grid Array. Returns an array of environmental combinations
from a grid with a length out split. It can be used to get the
probability of detection along a list of environmental time series

## Usage

``` r
envGridProb(envData, param.list, lenght = 100)
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
c = c(-8),
pd = c(0.91),
L = matrix(c(1, 0, 0, 1), ncol = 2)
)
envGridProb(envData, pars)
#> Key: <bio01, bio12>
#>            bio01    bio12          prob
#>            <num>    <num>         <num>
#>     1: -3.273521 111.0230  1.022315e-33
#>     2: -3.273521 119.3604  1.370567e-33
#>     3: -3.273521 127.6978  1.821752e-33
#>     4: -3.273521 136.0352  2.400772e-33
#>     5: -3.273521 144.3726  3.136791e-33
#>    ---                                 
#>  9996: 13.636966 903.0753 2.355517e-102
#>  9997: 13.636966 911.4127 1.397451e-102
#>  9998: 13.636966 919.7501 8.219777e-103
#>  9999: 13.636966 928.0875 4.793541e-103
#> 10000: 13.636966 936.4249 2.771570e-103
```
