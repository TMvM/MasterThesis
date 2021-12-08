library(tidyverse)
library(here)
library(tidyquant)

rdsa_all <- tq_get("RDS-A",                    
                 from = '2019-08-22',
                 to = "2020-06-25",
                 get = "stock.prices")

rdsa_t0 <- tq_get("RDS-A",                    
                  from = '2019-08-22',
                  to = "2020-04-25",
                  get = "stock.prices")

rdsa_t1 <- tq_get("RDS-A",                    
                  from = '2020-04-26',
                  to = "2020-05-25",
                  get = "stock.prices")

rdsa_t2 <- tq_get("RDS-A",                    
                  from = '2020-05-27',
                  to = "2020-06-25",
                  get = "stock.prices")

bp_all <- tq_get("BP",                    
               from = '2019-08-22',
               to = "2020-06-25",
               get = "stock.prices")

bp_t0 <- tq_get("BP",                    
                  from = '2019-08-22',
                  to = "2020-04-25",
                  get = "stock.prices")

bp_t1 <- tq_get("BP",                    
                  from = '2020-04-26',
                  to = "2020-05-25",
                  get = "stock.prices")

bp_t2 <- tq_get("BP",                    
                  from = '2020-05-27',
                  to = "2020-06-25",
                  get = "stock.prices")

totalenergies_all <- tq_get("TTE",                    
               from = '2019-08-22',
               to = "2020-06-25",
               get = "stock.prices")

totalenergies_t0 <- tq_get("TTE",                    
                from = '2019-08-22',
                to = "2020-04-25",
                get = "stock.prices")

totalenergies_t1 <- tq_get("TTE",                    
                from = '2020-04-26',
                to = "2020-05-25",
                get = "stock.prices")

totalenergies_t2 <- tq_get("TTE",                    
                from = '2020-05-27',
                to = "2020-06-25",
                get = "stock.prices")

exxonmobil_all <- tq_get("XOM",                    
               from = '2019-08-22',
               to = "2020-06-25",
               get = "stock.prices")

exxonmobil_t0 <- tq_get("XOM",                    
                from = '2019-08-22',
                to = "2020-04-25",
                get = "stock.prices")

exxonmobil_t1 <- tq_get("XOM",                    
                from = '2020-04-26',
                to = "2020-05-25",
                get = "stock.prices")

exxonmobil_t2 <- tq_get("XOM",                    
                from = '2020-05-27',
                to = "2020-06-25",
                get = "stock.prices")

conoco_all <- tq_get("COP",                    
               from = '2019-08-22',
               to = "2020-06-25",
               get = "stock.prices")

conoco_t0 <- tq_get("COP",                    
                from = '2019-08-22',
                to = "2020-04-25",
                get = "stock.prices")

conoco_t1 <- tq_get("COP",                    
                from = '2020-04-26',
                to = "2020-05-25",
                get = "stock.prices")

conoco_t2 <- tq_get("COP",                    
                from = '2020-05-27',
                to = "2020-06-25",
                get = "stock.prices")

chevron_all <- tq_get("CVX",                    
               from = '2019-08-22',
               to = "2020-06-25",
               get = "stock.prices")

chevron_t0 <- tq_get("CVX",                    
                from = '2019-08-22',
                to = "2020-04-25",
                get = "stock.prices")

chevron_t1 <- tq_get("CVX",                    
                from = '2020-04-26',
                to = "2020-05-25",
                get = "stock.prices")

chevron_t2 <- tq_get("CVX",                    
                from = '2020-05-27',
                to = "2020-06-25",
                get = "stock.prices")

indu_all <- tq_get("XOI",                    
                  from = '2019-08-22',
                  to = "2020-06-25",
                  get = "stock.prices")

indu_t0 <- tq_get("XOI",                    
                from = '2019-08-22',
                to = "2020-04-25",
                get = "stock.prices")

indu_t1 <- tq_get("XOI",                    
                from = '2020-04-26',
                to = "2020-05-25",
                get = "stock.prices")

indu_t2 <- tq_get("XOI",                    
                from = '2020-05-27',
                to = "2020-06-25",
                get = "stock.prices")

mrkt_all <- tq_get("NYA",                    
               from = '2019-08-22',
               to = "2020-06-25",
               get = "stock.prices")

mrkt_t0 <- tq_get("NYA",                    
                from = '2019-08-22',
                to = "2020-04-25",
                get = "stock.prices")

mrkt_t1 <- tq_get("NYA",                    
                from = '2020-04-26',
                to = "2020-05-25",
                get = "stock.prices")

mrkt_t2 <- tq_get("NYA",                    
                from = '2020-05-27',
                to = "2020-06-25",
                get = "stock.prices")

# Calculate daily returns rdsa

rdsa_daily_returns <- rdsa_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "rdsa_returns") # renames the column

# Calculate daily returns bp

bp_daily_returns <- bp_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "bp_returns") # renames the column

# Calculate daily returns totalenergies

totalenergies_daily_returns <- totalenergies_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "totalenergies_returns") # renames the column

# Calculate daily returns exxonmobil

exxonmobil_daily_returns <- exxonmobil_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "exxonmobil_returns") # renames the column

# Calculate daily returns conoco

conoco_daily_returns <- conoco_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "conoco_returns") # renames the column

# Calculate daily returns chevron

chevron_daily_returns <- chevron_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "chevron_returns") # renames the column

# Calculate daily returns industry

industry_daily_returns <- indu_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "industry_returns") # renames the column

# Calculate daily returns market

market_daily_returns <- mrkt_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "market_returns") # renames the column
