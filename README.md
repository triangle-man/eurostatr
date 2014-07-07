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

```{r}
## Install the devtools package
library(devtools)

install_github("triangle-man/eurostatr")
```

Downloading data from Eurostat
------------------------------

You will need to have downloaded the required dataset (as a .gz file) from
Eurostat's "bulk download facility"
(http://epp.eurostat.ec.europa.eu/NavTree_prod/everybody/BulkDownloadListing)
and gunzipped it. One way to do this is via curl. For example, to get the
dataset `nrg_100a`:

```{bash}
curl 'http://epp.eurostat.ec.europa.eu/NavTree_prod/everybody/BulkDownloadListing?file=data/nrg_100a.tsv.gz' | gunzip > nrg_100a.tsv
```

Converting the downloaded data to R
-----------------------------------

Run `read.eurostat()` on the `.tsv` file resulting from gunzipping the
downloaded file:
```{r}
nrg <- read.eurostat("nrg_100a.tsv, value.name = "energy")
```

See also
--------

The CRAN package "SmarterPoland"
(http://cran.r-project.org/web/packages/SmarterPoland/index.html) does the same
thing (in fact, slightly more -- it also performs the download from Eurostat and
will get the dictionary files as well).

