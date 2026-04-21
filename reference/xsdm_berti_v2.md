# Constructor function for the class xsdmbayes

Constructor function for the class xsdmbayes

## Usage

``` r
xsdmbayes_berti_v2(env_data = list(), occ = data.frame(), fit = TRUE, ...)
```

## Arguments

- env_data:

  A (prefered named) list with environmental raster time series.

- occ:

  A data.frame with name of species, longitude, latitude and occurrence
  column.

- fit:

  Logical or string. Default TRUE. Define the fittig method for
  xsdmbayes. Default method is sampling from the porsterior using MCMC.
  Other possible methods are mle (Maximum likelihood estimation), map
  (Maximum a posteriori estimation), mle.laplace (Laplace method),
  map.laplace.

- ...:

  other arguments

## Value

an object of class xsdmbayes

## Examples

``` r
bio1_ts <- terra::unwrap(cmcc_cm_bio1)
envData <- list(bio1 = bio1_ts)
#Virtual species presence/absence points
pts <- mus_virtualis
xsdmbayes(envData, occ = pts, fit = FALSE)
#> $env_data
#> $env_data$bio1
#> class       : SpatRaster 
#> size        : 22, 44, 30  (nrow, ncol, nlyr)
#> resolution  : 0.04490319, 0.04490319  (x, y)
#> extent      : -105.994, -104.0182, 36.99024, 37.97811  (xmin, xmax, ymin, ymax)
#> coord. ref. : +proj=longlat +datum=WGS84 +no_defs 
#> source(s)   : memory
#> names       :     bio01,     bio01,     bio01,     bio01,     bio01,     bio01, ... 
#> min values  : -1.748324, -2.439485, -2.336099, -3.273228, -2.294429, -2.282119, ... 
#> max values  : 12.903168, 11.995780, 12.668166, 11.389518, 12.043122, 12.394748, ... 
#> time (years): 1970 to 1999 (30 steps) 
#> 
#> 
#> $occ
#>             name latitude longitude presence
#> 1  Mus virtualis 37.31750 -105.0460        1
#> 2  Mus virtualis 37.27582 -105.0199        1
#> 3  Mus virtualis 37.15976 -105.0970        1
#> 4  Mus virtualis 37.27285 -105.1149        1
#> 5  Mus virtualis 37.38733 -105.0106        1
#> 6  Mus virtualis 37.10383 -104.9552        1
#> 7  Mus virtualis 37.24345 -104.9411        1
#> 8  Mus virtualis 37.35083 -104.8350        1
#> 9  Mus virtualis 37.35744 -104.6646        1
#> 10 Mus virtualis 37.22331 -104.6135        1
#> 11 Mus virtualis 37.93347 -104.1675        0
#> 12 Mus virtualis 37.91442 -104.4131        0
#> 13 Mus virtualis 37.71030 -104.1119        0
#> 14 Mus virtualis 37.78857 -104.8942        0
#> 15 Mus virtualis 37.72496 -105.2806        0
#> 16 Mus virtualis 37.66786 -105.8077        0
#> 17 Mus virtualis 37.26155 -105.8329        0
#> 18 Mus virtualis 37.03349 -104.4268        0
#> 19 Mus virtualis 37.90458 -105.7181        0
#> 20 Mus virtualis 37.05603 -105.7191        0
#> 
#> $model_spec
#> NULL
#> 
#> $stan_model
#> NULL
#> 
#> $samplig_data
#> NULL
#> 
#> $sampling_result
#> NULL
#> 
#> $call
#> xsdmbayes(env_data = envData, occ = pts, fit = FALSE)
#> 
#> attr(,"class")
#> [1] "xsdmbayes"
if (instantiate::stan_cmdstan_exists()) {
  xsdmbayes(envData, occ = pts, fit = TRUE)
}
```
