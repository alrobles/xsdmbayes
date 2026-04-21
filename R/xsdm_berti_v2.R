#' Constructor function for the class xsdmbayes
#'
#' @param env_data A (prefered named) list with environmental
#' raster time series.
#' @param occ A data.frame with name of species, longitude, latitude and occurrence column.
#' @param fit Logical or string. Default TRUE. Define the fittig
#' method for xsdmbayes. Default method is sampling from the porsterior
#' using MCMC. Other possible methods are mle (Maximum likelihood estimation),
#' map (Maximum a posteriori estimation), mle.laplace (Laplace method),
#' map.laplace.
#' @param ... other arguments
#' @return an object of class xsdmbayes
#' @export
#'
#' @examples
#'
#' bio1_ts <- terra::unwrap(cmcc_cm_bio1)
#' envData <- list(bio1 = bio1_ts)
#' #Virtual species presence/absence points
#' pts <- mus_virtualis
#' xsdmbayes(envData, occ = pts, fit = FALSE)
#' if (instantiate::stan_cmdstan_exists()) {
#'   xsdmbayes(envData, occ = pts, fit = TRUE)
#' }
xsdmbayes_berti_v2 <- function(env_data = list(),
                       occ = data.frame(),
                       fit = TRUE,
                       ...){


  #save the call for print method
  this.call <- match.call()

  xsdmbayes_model <-  new_xsdmbayes(env_data, occ, call = this.call)
  xsdmbayes_model <-  validate_xsdmbayes(xsdmbayes_model)
  if(!fit == FALSE){
    xsdmbayes_model <-  fit_xsdmbayes_berti_v2(xsdmbayes_model, fit = fit,...)
  }

  return(xsdmbayes_model)
}
