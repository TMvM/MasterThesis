library(tidyverse)
library(here)
library(tidyquant)
options("getSymbols.warning4.0"=FALSE)
options("getSymbols.yahoo.warning"=FALSE)
tickers = c("RDS-A", "BP", "TTE", "XOM", "COP", "CVX", "XOI", "NYA")

prices <-tq_get(tickers,
                from = "2019-08-22",
                to = "2020-06-25",
                get = "stock.prices")
