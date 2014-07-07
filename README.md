eurostatr
=========

The aim of this package is to simplify the process of getting data from
Eurostat's online database
(http://epp.eurostat.ec.europa.eu/portal/page/portal/statistics/search_database). Datasets
are available from Eurostat as tab-separated values file, but the format is
awkward to work with: the data are typically in "wide" format (see
http://vita.had.co.nz/papers/tidy-data.pdf) and all but two of the variables are
held in the first column as comma-separated values.

The functions in this package unpack Eurostat's format into a more usable `R`
data frame.

Installation
------------


Downloading data from Eurostat
------------------------------


Converting the downloaded data to R
-----------------------------------


See also
--------
