#' Import data from Eurostat into a sensible format
#'
#' Eurostatr provides a single function to read data from a file downloaded
#' from Eurostat into a data frame. It reformats the data in three main ways:
#' \enumerate{
#' \item Eurostat data is in "messy" format: all column headers but one are actually
#' the values of a single variable. Eurostatr "melts" these into a single
#' variable.
#' \item The first column in a Eurostat table contains the remaining variables
#' in the data, as comma-separate values. These are broken out into separate
#' columns.
#' \item ":" is recoded to NA, and any flags are separated out.
#' }
#'
#' @note The file must already been downloaded and gunzipped.
#'
#' @note See also the package BetterPoland, which does the same thing, possibly
#' with more features. (That package also takes care of downloading an
#' gunzipping the files and downloads dictionary files also.)
#' 
#' @import dplyr tidyr
#' @name eurostatr
#' @aliases package-eurostatr
#' @docType package
NULL
