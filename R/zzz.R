# .onLoad <- function(libname, pkgname)
# {
#   library.dynam("xsdmbayes", pkgname, libname)
# }

xsdmbayesStartupMessage <- function()
{
  msg <- c(paste0(
    "              _
__  _____  __| |_ __ ___
\\ \\/ / __|/ _` | '_ ` _ \\
 >  <\\__ \\ (_| | | | | | |
/_/\\_\\___/\\__,_|_| |_| |_|    version ",
    utils::packageVersion("xsdmbayes")),
    "\nType 'citation(\"xsdmbayes\")' for citing this R package in publications.\n",
    "\nThis package depends on cmdstanr that is not in CRAN\n"
    )

  return(msg)
}

.onAttach <- function(lib, pkg)
{
  # unlock .xsdmbayes variable allowing its modification
  unlockBinding("xsdmbayes", asNamespace("xsdmbayes"))
  # startup message
  msg <- xsdmbayesStartupMessage()
  if(!interactive())
    msg[1] <- paste("Package 'xsdmbayes' version", utils::packageVersion("xsdmbayes"))
  packageStartupMessage(msg)
  invisible()

}
.onUnload <- function(libpath) {
  library.dynam.unload("xsdmbayes", libpath)
}
