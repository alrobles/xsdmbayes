# Sample points function from an environmental time series raster list. Simple function that return random points from the extension of a set of enrionmental time series raster.

Sample points function from an environmental time series raster list.
Simple function that return random points from the extension of a set of
enrionmental time series raster.

## Usage

``` r
sample_points(envData, n = 1e+05, return.data.frame = TRUE)
```

## Arguments

- envData:

  list. A list of environmental time series raster

- n:

  numeric. The number of points of the required points

- return.data.frame:

  Logical if is TRUE (default) return a data.frame with longitude and
  latitude of the points, if FALSE return an object of class SpatVect
  and points geometries instead.

## Value

Either a data.frame or a SpatVect of points objects

## Examples

``` r
bio1_ts <- terra::unwrap(cmcc_cm_bio1)
bio12_ts <- terra::unwrap(cmcc_cm_bio12)
envData <- list(bio1 = bio1_ts, bio12 = bio1_ts)
```
