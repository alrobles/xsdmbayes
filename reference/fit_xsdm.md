# Fit an xsdmbayes model

Fit an xsdmbayes model

## Usage

``` r
fit_xsdmbayes(
  xsdmbayes_object,
  fit = NULL,
  recompile = FALSE,
  normalize = FALSE,
  prior_parameters = list(mu_par_1 = NULL, mu_par_2 = NULL, sigl_par = NULL, sigr_par =
    NULL, c_par_1 = NULL, c_par_2 = NULL, L_par = NULL),
  nchains = NULL,
  compile_standalone = FALSE,
  ...
)
```

## Arguments

- xsdmbayes_object:

  an xsdmbayes object created with constuctor and validated

- fit:

  String. Default is TRUE. Calculate parameters either by sampling,
  optimization or Laplace methods. Calculate the mle estimation
  (default) or Maximum a posteriori estimation (need to pass jacobian =
  TRUE argument). Possible parameters are c("mle", "map", "mle.laplace",
  "map.laplace")

- recompile:

  Default FALSE. If TRUE, recompile the Lewontin-Cohen model to use
  features not availiable out of the box. It is needed to use laplace
  and optim methods.

- normalize:

  Logical, normalize the time series using the mean and the standard
  deviation of the presence-absence provided points

- prior_parameters:

  list with parameters passed to prior.

- nchains:

  Default NULL. The number of mcmc chains passed to cmdstanr sample
  function.

- compile_standalone:

  Default TRUE. It is useful to export loglik functions

- ...:

  argument passed to stan model sampling

## Value

a fitted xsdmbayes object
