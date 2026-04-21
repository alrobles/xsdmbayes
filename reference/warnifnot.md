# Test the Truth of R Expressions and Warn

Test the Truth of R Expressions and Warn

## Usage

``` r
warnifnot(..., exprs, exprObject, local = TRUE)
```

## Arguments

- ..., exprs:

  any number of R expressions, which should each evaluate to (a logical
  vector of all) TRUE.

- exprObject:

  alternative to exprs or ...: an ‘expression-like’ object, typically an
  expression, but also a call, a name, or atomic constant such as TRUE.

- local:

  (only when exprs is used:) indicates the environment in which the
  expressions should be evaluated; by default the one from where
  stopifnot() has been called.
