# Library ----

library(tidyverse)
library(here)
library(tidyquant)

# Data collection per T ----

rdsa_all <- tq_get("RDS-A",                    
                 from = '2019-08-21',
                 to = "2020-06-25",
                 get = "stock.prices")

rdsa_t0 <- tq_get("RDS-A",                    
                  from = '2019-08-21',
                  to = "2020-04-25",
                  get = "stock.prices")

rdsa_t1 <- tq_get("RDS-A",                    
                  from = '2020-04-25',
                  to = "2020-05-25",
                  get = "stock.prices")

rdsa_t2 <- tq_get("RDS-A",                    
                  from = '2020-05-26',
                  to = "2020-06-25",
                  get = "stock.prices")

bp_all <- tq_get("BP",                    
               from = '2019-08-21',
               to = "2020-06-25",
               get = "stock.prices")

bp_t0 <- tq_get("BP",                    
                  from = '2019-08-21',
                  to = "2020-04-25",
                  get = "stock.prices")

bp_t1 <- tq_get("BP",                    
                  from = '2020-04-25',
                  to = "2020-05-25",
                  get = "stock.prices")

bp_t2 <- tq_get("BP",                    
                  from = '2020-05-26',
                  to = "2020-06-25",
                  get = "stock.prices")

totalenergies_all <- tq_get("TTE",                    
               from = '2019-08-21',
               to = "2020-06-25",
               get = "stock.prices")

totalenergies_t0 <- tq_get("TTE",                    
                from = '2019-08-21',
                to = "2020-04-25",
                get = "stock.prices")

totalenergies_t1 <- tq_get("TTE",                    
                from = '2020-04-25',
                to = "2020-05-25",
                get = "stock.prices")

totalenergies_t2 <- tq_get("TTE",                    
                from = '2020-05-26',
                to = "2020-06-25",
                get = "stock.prices")

exxonmobil_all <- tq_get("XOM",                    
               from = '2019-08-21',
               to = "2020-06-25",
               get = "stock.prices")

exxonmobil_t0 <- tq_get("XOM",                    
                from = '2019-08-21',
                to = "2020-04-25",
                get = "stock.prices")

exxonmobil_t1 <- tq_get("XOM",                    
                from = '2020-04-25',
                to = "2020-05-25",
                get = "stock.prices")

exxonmobil_t2 <- tq_get("XOM",                    
                from = '2020-05-26',
                to = "2020-06-25",
                get = "stock.prices")

conoco_all <- tq_get("COP",                    
               from = '2019-08-21',
               to = "2020-06-25",
               get = "stock.prices")

conoco_t0 <- tq_get("COP",                    
                from = '2019-08-21',
                to = "2020-04-25",
                get = "stock.prices")

conoco_t1 <- tq_get("COP",                    
                from = '2020-04-25',
                to = "2020-05-25",
                get = "stock.prices")

conoco_t2 <- tq_get("COP",                    
                from = '2020-05-26',
                to = "2020-06-25",
                get = "stock.prices")

chevron_all <- tq_get("CVX",                    
               from = '2019-08-21',
               to = "2020-06-25",
               get = "stock.prices")

chevron_t0 <- tq_get("CVX",                    
                from = '2019-08-21',
                to = "2020-04-25",
                get = "stock.prices")

chevron_t1 <- tq_get("CVX",                    
                from = '2020-04-25',
                to = "2020-05-25",
                get = "stock.prices")

chevron_t2 <- tq_get("CVX",                    
                from = '2020-05-26',
                to = "2020-06-25",
                get = "stock.prices")

industry_all <- tq_get("^XOI",                    
                  from = '2019-08-21',
                  to = "2020-06-25",
                  get = "stock.prices")

industry_t0 <- tq_get("^XOI",                    
                from = '2019-08-21',
                to = "2020-04-25",
                get = "stock.prices")

industry_t1 <- tq_get("^XOI",                    
                from = '2020-04-25',
                to = "2020-05-25",
                get = "stock.prices")

industry_t2 <- tq_get("^XOI",                    
                from = '2020-05-26',
                to = "2020-06-25",
                get = "stock.prices")

market_all <- tq_get("^NYA",                    
               from = '2019-08-21',
               to = "2020-06-25",
               get = "stock.prices")

market_t0 <- tq_get("^NYA",                    
                from = '2019-08-21',
                to = "2020-04-25",
                get = "stock.prices")

market_t1 <- tq_get("^NYA",                    
                from = '2020-04-25',
                to = "2020-05-25",
                get = "stock.prices")

market_t2 <- tq_get("^NYA",                    
                from = '2020-05-26',
                to = "2020-06-25",
                get = "stock.prices")

# 1. Calculate daily returns for all j & T ----

## RDSA ----

rdsa_all_DR <- rdsa_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "rdsa_all_DR") # renames the column

rdsa_all_DR <- rdsa_all_DR[-c(1),]

rdsa_t0_DR <- rdsa_t0 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "rdsa_t0_DR") # renames the column

rdsa_t0_DR <- rdsa_t0_DR[-c(1),]

rdsa_t1_DR <- rdsa_t1 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "rdsa_t1_DR") # renames the column

rdsa_t1_DR <- rdsa_t1_DR[-c(1),]

rdsa_t2_DR <- rdsa_t2 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "rdsa_t2_DR") # renames the column

rdsa_t2_DR <- rdsa_t2_DR[-c(1),]

## BP ----

bp_all_DR <- bp_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "bp_all_DR") # renames the column

bp_all_DR <- bp_all_DR[-c(1),]

bp_t0_DR <- bp_t0 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "bp_t0_DR") # renames the column

bp_t0_DR <- bp_t0_DR[-c(1),]

bp_t1_DR <- bp_t1 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "bp_t1_DR") # renames the column

bp_t1_DR <- bp_t1_DR[-c(1),]

bp_t2_DR <- bp_t2 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "bp_t2_DR") # renames the column

bp_t2_DR <- bp_t2_DR[-c(1),]

## Total Energies ----

totalenergies_all_DR <- totalenergies_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "totalenergies_all_DR") # renames the column

totalenergies_all_DR <- totalenergies_all_DR[-c(1),]

totalenergies_t0_DR <- totalenergies_t0 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "totalenergies_t0_DR") # renames the column

totalenergies_t0_DR <- totalenergies_t0_DR[-c(1),]

totalenergies_t1_DR <- totalenergies_t1 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "totalenergies_t1_DR") # renames the column

totalenergies_t1_DR <- totalenergies_t1_DR[-c(1),]

totalenergies_t2_DR <- totalenergies_t2 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "totalenergies_t2_DR") # renames the column

totalenergies_t2_DR <- totalenergies_t2_DR[-c(1),]

## ExxonMobil ----

exxonmobil_all_DR <- exxonmobil_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "exxonmobil_all_DR") # renames the column

exxonmobil_all_DR <- exxonmobil_all_DR[-c(1),]

exxonmobil_t0_DR <- exxonmobil_t0 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "exxonmobil_t0_DR") # renames the column

exxonmobil_t0_DR <- exxonmobil_t0_DR[-c(1),]

exxonmobil_t1_DR <- exxonmobil_t1 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "exxonmobil_t1_DR") # renames the column

exxonmobil_t1_DR <- exxonmobil_t1_DR[-c(1),]

exxonmobil_t2_DR <- exxonmobil_t2 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "exxonmobil_t2_DR") # renames the column

exxonmobil_t2_DR <- exxonmobil_t2_DR[-c(1),]

## Conoco Phillips ----

conoco_all_DR <- conoco_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "conoco_all_DR") # renames the column

conoco_all_DR <- conoco_all_DR[-c(1),]

conoco_t0_DR <- conoco_t0 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "conoco_t0_DR") # renames the column

conoco_t0_DR <- conoco_t0_DR[-c(1),]

conoco_t1_DR <- conoco_t1 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "conoco_t1_DR") # renames the column

conoco_t1_DR <- conoco_t1_DR[-c(1),]

conoco_t2_DR <- conoco_t2 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "conoco_t2_DR") # renames the column

conoco_t2_DR <- conoco_t2_DR[-c(1),]

## Chevron Corporation ----

chevron_all_DR <- chevron_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "chevron_all_DR") # renames the column

chevron_all_DR <- chevron_all_DR[-c(1),]

chevron_t0_DR <- chevron_t0 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "chevron_t0_DR") # renames the column

chevron_t0_DR <- chevron_t0_DR[-c(1),]

chevron_t1_DR <- chevron_t1 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "chevron_t1_DR") # renames the column

chevron_t1_DR <- chevron_t1_DR[-c(1),]

chevron_t2_DR <- chevron_t2 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "chevron_t2_DR") # renames the column

chevron_t2_DR <- chevron_t2_DR[-c(1),]

## Industry index ----

industry_all_DR <- industry_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "industry_all_DR") # renames the column

industry_all_DR <- industry_all_DR[-c(1),]

industry_t0_DR <- industry_t0 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "industry_t0_DR") # renames the column

industry_t0_DR <- industry_t0_DR[-c(1),]

industry_t1_DR <- industry_t1 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "industry_t1_DR") # renames the column

industry_t1_DR <- industry_t1_DR[-c(1),]

industry_t2_DR <- industry_t2 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "industry_t2_DR") # renames the column

industry_t2_DR <- industry_t2_DR[-c(1),]

## Market index ----

market_all_DR <- market_all %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "market_all_DRs") # renames the column

market_all_DR <- market_all_DR[-c(1),]

market_t0_DR <- market_t0 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "market_t0_DR") # renames the column

market_t0_DR <- market_t0_DR[-c(1),]

market_t1_DR <- market_t1 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "market_t1_DR") # renames the column

market_t1_DR <- market_t1_DR[-c(1),]

market_t2_DR <- market_t2 %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "market_t2_DR") # renames the column

market_t2_DR <- market_t2_DR[-c(1),]

# 2. Log Returns ----

## RDSA LR ----
rdsa_all_LR <- c(diff(log(rdsa_all$adjusted), lag = 1))

rdsa_t0_LR <- c(diff(log(rdsa_t0$adjusted), lag = 1))

rdsa_t1_LR <- c(diff(log(rdsa_t1$adjusted), lag = 1))

rdsa_t2_LR <- c(diff(log(rdsa_t2$adjusted), lag = 1))

## BP LR ----

bp_all_LR <- c(diff(log(bp_all$adjusted), lag = 1))

bp_t0_LR <- c(diff(log(bp_t0$adjusted), lag = 1))

bp_t1_LR <- c(diff(log(bp_t1$adjusted), lag = 1))

bp_t2_LR <- c(diff(log(bp_t2$adjusted), lag = 1))

## Total Energies LR ----

totalenergies_all_LR <- c(diff(log(totalenergies_all$adjusted), lag = 1))

totalenergies_t0_LR <- c(diff(log(totalenergies_t0$adjusted), lag = 1))

totalenergies_t1_LR <- c(diff(log(totalenergies_t1$adjusted), lag = 1))

totalenergies_t2_LR <- c(diff(log(totalenergies_t2$adjusted), lag = 1))

## ExxonMobil LR ----

exxonmobil_all_LR <- c(diff(log(exxonmobil_all$adjusted), lag = 1))

exxonmobil_t0_LR <- c(diff(log(exxonmobil_t0$adjusted), lag = 1))

exxonmobil_t1_LR <- c(diff(log(exxonmobil_t1$adjusted), lag = 1))

exxonmobil_t2_LR <- c(diff(log(exxonmobil_t2$adjusted), lag = 1))

## Conoco Phillips ----

conoco_all_LR <- c(diff(log(conoco_all$adjusted), lag = 1))

conoco_t0_LR <- c(diff(log(conoco_t0$adjusted), lag = 1))

conoco_t1_LR <- c(diff(log(conoco_t1$adjusted), lag = 1))

conoco_t2_LR <- c(diff(log(conoco_t2$adjusted), lag = 1))

## Chevron Corporation LR ----

chevron_all_LR <- c(diff(log(chevron_all$adjusted), lag = 1))

chevron_t0_LR <- c(diff(log(chevron_t0$adjusted), lag = 1))

chevron_t1_LR <- c(diff(log(chevron_t1$adjusted), lag = 1))

chevron_t2_LR <- c(diff(log(chevron_t2$adjusted), lag = 1))

## Industry index ----

industry_all_LR <- c(diff(log(industry_all$adjusted), lag = 1))

industry_t0_LR <- c(diff(log(industry_t0$adjusted), lag = 1))

industry_t1_LR <- c(diff(log(industry_t1$adjusted), lag = 1))

industry_t2_LR <- c(diff(log(industry_t2$adjusted), lag = 1))

## Market index ----

market_all_LR <- c(diff(log(market_all$adjusted), lag = 1))

market_t0_LR <- c(diff(log(market_t0$adjusted), lag = 1))

market_t1_LR <- c(diff(log(market_t1$adjusted), lag = 1))

market_t2_LR <- c(diff(log(market_t2$adjusted), lag = 1))

 
# 3. Regression for expected and abnormal returns (take the predicted values as ER - google it) ----


# 4. CAR (cumulative abnormal returns) ----
# 5. Test statistics ---- 
