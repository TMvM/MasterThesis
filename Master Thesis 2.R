# Library ----

library(tidyverse)
library(here)
library(tidyquant)
library(dplyr)

Company <- c('BP', 'Total Energies', 'ExxonMobil', 'Conoco Philips', 'Chevron Corporation', 'Industry', 'Market')



# Data collection per T ----

rdsa_all <- tq_get("RDS-A",                    
                 from = '2020-08-21',
                 to = "2021-06-25",
                 get = "stock.prices")

rdsa_t0 <- tq_get("RDS-A",                    
                  from = '2020-08-21',
                  to = "2021-04-25",
                  get = "stock.prices")

rdsa_t1 <- tq_get("RDS-A",                    
                  from = '2021-04-25',
                  to = "2021-05-25",
                  get = "stock.prices")

rdsa_t2 <- tq_get("RDS-A",                    
                  from = '2021-05-27',
                  to = "2021-06-25",
                  get = "stock.prices")

bp_all <- tq_get("BP",                    
               from = '2020-08-21',
               to = "2021-06-25",
               get = "stock.prices")

bp_t0 <- tq_get("BP",                    
                  from = '2020-08-21',
                  to = "2021-04-25",
                  get = "stock.prices")

bp_t1 <- tq_get("BP",                    
                  from = '2021-04-25',
                  to = "2021-05-25",
                  get = "stock.prices")

bp_t2 <- tq_get("BP",                    
                  from = '2021-05-27',
                  to = "2021-06-25",
                  get = "stock.prices")

totalenergies_all <- tq_get("TTE",                    
               from = '2020-08-21',
               to = "2021-06-25",
               get = "stock.prices")

totalenergies_t0 <- tq_get("TTE",                    
                from = '2020-08-21',
                to = "2021-04-25",
                get = "stock.prices")

totalenergies_t1 <- tq_get("TTE",                    
                from = '2021-04-25',
                to = "2021-05-25",
                get = "stock.prices")

totalenergies_t2 <- tq_get("TTE",                    
                from = '2021-05-27',
                to = "2021-06-25",
                get = "stock.prices")

exxonmobil_all <- tq_get("XOM",                    
               from = '2020-08-21',
               to = "2021-06-25",
               get = "stock.prices")

exxonmobil_t0 <- tq_get("XOM",                    
                from = '2020-08-21',
                to = "2021-04-25",
                get = "stock.prices")

exxonmobil_t1 <- tq_get("XOM",                    
                from = '2021-04-25',
                to = "2021-05-25",
                get = "stock.prices")

exxonmobil_t2 <- tq_get("XOM",                    
                from = '2021-05-27',
                to = "2021-06-25",
                get = "stock.prices")

conoco_all <- tq_get("COP",                    
               from = '2020-08-21',
               to = "2021-06-25",
               get = "stock.prices")

conoco_t0 <- tq_get("COP",                    
                from = '2020-08-21',
                to = "2021-04-25",
                get = "stock.prices")

conoco_t1 <- tq_get("COP",                    
                from = '2021-04-25',
                to = "2021-05-25",
                get = "stock.prices")

conoco_t2 <- tq_get("COP",                    
                from = '2021-05-27',
                to = "2021-06-25",
                get = "stock.prices")

chevron_all <- tq_get("CVX",                    
               from = '2020-08-21',
               to = "2021-06-25",
               get = "stock.prices")

chevron_t0 <- tq_get("CVX",                    
                from = '2020-08-21',
                to = "2021-04-25",
                get = "stock.prices")

chevron_t1 <- tq_get("CVX",                    
                from = '2021-04-25',
                to = "2021-05-25",
                get = "stock.prices")

chevron_t2 <- tq_get("CVX",                    
                from = '2021-05-27',
                to = "2021-06-25",
                get = "stock.prices")

industry_all <- tq_get("^XOI",                    
                  from = '2020-08-21',
                  to = "2021-06-25",
                  get = "stock.prices")

industry_t0 <- tq_get("^XOI",                    
                from = '2020-08-21',
                to = "2021-04-25",
                get = "stock.prices")

industry_t1 <- tq_get("^XOI",                    
                from = '2021-04-25',
                to = "2021-05-25",
                get = "stock.prices")

industry_t2 <- tq_get("^XOI",                    
                from = '2021-05-27',
                to = "2021-06-25",
                get = "stock.prices")

market_all <- tq_get("^NYA",                    
               from = '2020-08-21',
               to = "2021-06-25",
               get = "stock.prices")

market_t0 <- tq_get("^NYA",                    
                from = '2020-08-21',
                to = "2021-04-25",
                get = "stock.prices")

market_t1 <- tq_get("^NYA",                    
                from = '2021-04-25',
                to = "2021-05-25",
                get = "stock.prices")

market_t2 <- tq_get("^NYA",                    
                from = '2021-05-27',
                to = "2021-06-25",
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
               col_rename = "market_all_DR") # renames the column

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
rdsa_all_LR <- rdsa_all %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

rdsa_t0_LR <- rdsa_t0 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

rdsa_t1_LR <- rdsa_t1 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

rdsa_t2_LR <- rdsa_t2 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

## BP LR ----

bp_all_LR <- bp_all %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

bp_t0_LR <- bp_t0 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

bp_t1_LR <- bp_t1 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

bp_t2_LR <- bp_t2 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

## Total Energies LR ----

totalenergies_all_LR <- totalenergies_all %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

totalenergies_t0_LR <- totalenergies_t0 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

totalenergies_t1_LR <- totalenergies_t1 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

totalenergies_t2_LR <- totalenergies_t2 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

## ExxonMobil LR ----

exxonmobil_all_LR <- exxonmobil_all %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

exxonmobil_t0_LR <- exxonmobil_t0 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

exxonmobil_t1_LR <- exxonmobil_t1 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

exxonmobil_t2_LR <- exxonmobil_t2 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

## Conoco Phillips ----

conoco_all_LR <- conoco_all %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

conoco_t0_LR <- conoco_t0 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

conoco_t1_LR <- conoco_t1 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

conoco_t2_LR <- conoco_t2 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

## Chevron Corporation LR ----

chevron_all_LR <- chevron_all %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column  

chevron_t0_LR <-   chevron_t0 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

chevron_t1_LR <-   chevron_t1 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column    

chevron_t2_LR <-  chevron_t2 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column
 
## Industry index ----

industry_all_LR <- industry_all %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

industry_t0_LR <-  industry_t0 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

industry_t1_LR <-  industry_t1 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

industry_t2_LR <-  industry_t2 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

## Market index ----

market_all_LR <- market_all %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

market_t0_LR <- market_t0 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

market_t1_LR <- market_t1 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
             mutate_fun = periodReturn,   # This specifies what to do with that column
             period = "daily",      # This argument calculates Daily returns
             type = "log") # renames the column

market_t2_LR <- market_t2 %>%
  tq_mutate( select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               type = "log") # renames the column

 
# 3. Regression for expected and abnormal returns (take the predicted values as ER - google it) ----

## RDSA - BP ER ----
bp <- as.data.frame(cbind(rdsa_t0_LR$daily.returns, bp_t0_LR$daily.returns))

colnames(bp)<-c("rdsa1","bp1")

lm_rdsa_bp_all<- lm(formula = rdsa_all_LR$daily.returns ~ bp_all_LR$daily.returns)
lm_rdsa_bp_t0 <- lm(formula = rdsa1 ~ bp1, data = bp)
lm_rdsa_bp_t1 <- lm(formula = rdsa_t1_LR$daily.returns ~ bp_t1_LR$daily.returns)
lm_rdsa_bp_t2 <- lm(formula = rdsa_t2_LR$daily.returns ~ bp_t2_LR$daily.returns)

### Predictions

predict_data_bp_t1 <- as.data.frame(bp_t1_LR$daily.returns)
colnames(predict_data_bp_t1) <-"bp1"

predict_data_bp_t2 <- as.data.frame(bp_t2_LR$daily.returns)
colnames(predict_data_bp_t2) <-"bp1"

## RDSA - Total Energies ER ----
totalenergies <- as.data.frame(cbind(rdsa_t0_LR$daily.returns, totalenergies_t0_LR$daily.returns))

colnames(totalenergies)<-c("rdsa2","totalenergies1")

lm_rdsa_totalenergies_all<- lm(formula = rdsa_all_LR$daily.returns ~ totalenergies_all_LR$daily.returns)
lm_rdsa_totalenergies_t0 <- lm(formula = rdsa2 ~ totalenergies1, data = totalenergies)
lm_rdsa_totalenergies_t1 <- lm(formula = rdsa_t1_LR$daily.returns ~ totalenergies_t1_LR$daily.returns)
lm_rdsa_totalenergies_t2 <- lm(formula = rdsa_t2_LR$daily.returns ~ totalenergies_t2_LR$daily.returns)

### Predictions

predict_data_totalenergies_t1 <- as.data.frame(totalenergies_t1_LR$daily.returns)
colnames(predict_data_totalenergies_t1) <-"totalenergies1"

predict_data_totalenergies_t2 <- as.data.frame(totalenergies_t2_LR$daily.returns)
colnames(predict_data_totalenergies_t2) <-"totalenergies1"


## RDSA - ExxonMobil ER ----
exxonmobil <- as.data.frame(cbind(rdsa_t0_LR$daily.returns, exxonmobil_t0_LR$daily.returns))

colnames(exxonmobil)<-c("rdsa3","exxonmobil1")

lm_rdsa_exxonmobil_all<- lm(formula = rdsa_all_LR$daily.returns ~ exxonmobil_all_LR$daily.returns)
lm_rdsa_exxonmobil_t0 <- lm(formula = rdsa3 ~ exxonmobil1, data = exxonmobil)
lm_rdsa_exxonmobil_t1 <- lm(formula = rdsa_t1_LR$daily.returns ~ exxonmobil_t1_LR$daily.returns)
lm_rdsa_exxonmobil_t2 <- lm(formula = rdsa_t2_LR$daily.returns ~ exxonmobil_t2_LR$daily.returns)

### Predictions

predict_data_exxonmobil_t1 <- as.data.frame(exxonmobil_t1_LR$daily.returns)
colnames(predict_data_exxonmobil_t1) <- "exxonmobil1"

predict_data_exxonmobil_t2 <- as.data.frame(exxonmobil_t2_LR$daily.returns)
colnames(predict_data_exxonmobil_t2) <-"exxonmobil1"


## RDSA - Conoco ER ----
conoco <- as.data.frame(cbind(rdsa_t0_LR$daily.returns, conoco_t0_LR$daily.returns))

colnames(conoco)<-c("rdsa4","conoco1")

lm_rdsa_conoco_all<- lm(formula = rdsa_all_LR$daily.returns ~ conoco_all_LR$daily.returns)
lm_rdsa_conoco_t0 <- lm(formula = rdsa4 ~ conoco1, data = conoco)
lm_rdsa_conoco_t1 <- lm(formula = rdsa_t1_LR$daily.returns ~ conoco_t1_LR$daily.returns)
lm_rdsa_conoco_t2 <- lm(formula = rdsa_t2_LR$daily.returns ~ conoco_t2_LR$daily.returns)

### Predictions

predict_data_conoco_t1 <- as.data.frame(conoco_t1_LR$daily.returns)
colnames(predict_data_conoco_t1) <-"conoco1"

predict_data_conoco_t2 <- as.data.frame(conoco_t2_LR$daily.returns)
colnames(predict_data_conoco_t2) <-"conoco1"


## RDSA - Chevron Corporation ER ----
chevron <- as.data.frame(cbind(rdsa_t0_LR$daily.returns,  chevron_t0_LR$daily.returns))

colnames(chevron)<-c("rdsa5","chevron1")

lm_rdsa_chevron_all<- lm(formula = rdsa_all_LR$daily.returns ~ chevron_all_LR$daily.returns)
lm_rdsa_chevron_t0 <- lm(formula = rdsa5 ~ chevron1, data = chevron)
lm_rdsa_chevron_t1 <- lm(formula = rdsa_t1_LR$daily.returns ~ chevron_t1_LR$daily.returns)
lm_rdsa_chevron_t2 <- lm(formula = rdsa_t2_LR$daily.returns ~ chevron_t2_LR$daily.returns)

### Predictions

predict_data_chevron_t1 <- as.data.frame(chevron_t1_LR$daily.returns)
colnames(predict_data_chevron_t1) <-"chevron1"
predict_data_chevron_t2 <- as.data.frame(chevron_t2_LR$daily.returns)
colnames(predict_data_chevron_t2) <-"chevron1"


## RDSA - Industry ER ----
industry <- as.data.frame(cbind(rdsa_t0_LR$daily.returns, industry_t0_LR$daily.returns))

colnames(industry)<-c("rdsa6","industry1")

lm_rdsa_industry_t0 <- lm(formula = rdsa6 ~ industry1, data= industry)

### Predictions

predict_data_industry_t1 <- as.data.frame(industry_t1_LR$daily.returns)
colnames(predict_data_industry_t1)<- "industry1"

predict_data_industry_t2 <- as.data.frame(industry_t2_LR$daily.returns)
colnames(predict_data_industry_t2) <- "industry1"


## RDSA - Market ER ----
market <- as.data.frame(cbind(rdsa_t0_LR$daily.returns, market_t0_LR$daily.returns))

colnames(market)<-c("rdsa7","market1")

lm_rdsa_market_t0 <- lm(formula = rdsa7  ~ market1, data=market)


### Predictions

predict_data_market_t1 <- as.data.frame(market_t1_LR$daily.returns)
colnames(predict_data_market_t1)<-"market1"

predict_data_market_t2 <- as.data.frame(market_t2_LR$daily.returns)
colnames(predict_data_market_t2)<-"market1"

# 4. CAR (cumulative abnormal returns) ----

## CAR BP ----

CAR_bp_t1 <- sum(predict(lm_rdsa_bp_t0, newdata = predict_data_bp_t1))
CAR_bp_t2 <- sum(predict(lm_rdsa_bp_t0, newdata = predict_data_bp_t2))

## CAR Totalenergies ----


CAR_totalenergies_t1 <- sum(predict(lm_rdsa_totalenergies_t0, newdata = predict_data_totalenergies_t1))
CAR_totalenergies_t2 <- sum(predict(lm_rdsa_totalenergies_t0, newdata = predict_data_totalenergies_t2))

## CAR Exxonmobil ----


CAR_exxonmobil_t1 <- sum(predict(lm_rdsa_exxonmobil_t0, newdata = predict_data_exxonmobil_t1))
CAR_exxonmobil_t2 <- sum(predict(lm_rdsa_exxonmobil_t0, newdata = predict_data_exxonmobil_t2))

## CAR Conoco ----


CAR_conoco_t1 <- sum(predict(lm_rdsa_conoco_t0, newdata = predict_data_conoco_t1))
CAR_conoco_t2 <- sum(predict(lm_rdsa_conoco_t0, newdata = predict_data_conoco_t2))

## CAR Chevron ----


CAR_chevron_t1 <- sum(predict(lm_rdsa_chevron_t0, newdata = predict_data_chevron_t1))
CAR_chevron_t2 <- sum(predict(lm_rdsa_chevron_t0, newdata = predict_data_chevron_t2))

## CAR Industry ----

CAR_industry_t1 <- sum(predict(lm_rdsa_industry_t0, newdata = predict_data_industry_t1))
CAR_industry_t2 <- sum(predict(lm_rdsa_industry_t0, newdata = predict_data_industry_t2))

## CAR Market ----


CAR_market_t1 <- sum(predict(lm_rdsa_market_t0, newdata = predict_data_market_t1))
CAR_market_t2 <- sum(predict(lm_rdsa_market_t0, newdata = predict_data_market_t2))

# 5. TEST STATISTICS ---- 

## VARIANCE ----

### BP  ----

var_bp_t1 <- var(predict(lm_rdsa_bp_t0, newdata = predict_data_bp_t1))

var_bp_t2 <- var(predict(lm_rdsa_bp_t0, newdata = predict_data_bp_t2))

### Total Energies ----

var_totalenergies_t1 <- var(predict(lm_rdsa_totalenergies_t0, newdata = predict_data_totalenergies_t1))

var_totalenergies_t2 <- var(predict(lm_rdsa_totalenergies_t0, newdata = predict_data_totalenergies_t2))

### ExxonMobil ----

var_exxonmobil_t1 <- var(predict(lm_rdsa_exxonmobil_t0, newdata = predict_data_exxonmobil_t1))

var_exxonmobil_t2 <- var(predict(lm_rdsa_exxonmobil_t0, newdata = predict_data_exxonmobil_t2))

### Conoco ----

var_conoco_t1 <- var(predict(lm_rdsa_conoco_t0, newdata = predict_data_conoco_t1))

var_conoco_t2 <- var(predict(lm_rdsa_conoco_t0, newdata = predict_data_conoco_t2))

### Chevron  ----

var_chevron_t1 <- var(predict(lm_rdsa_chevron_t0, newdata = predict_data_chevron_t1))

var_chevron_t2 <- var(predict(lm_rdsa_chevron_t0, newdata = predict_data_chevron_t2))

### Industry ----

var_industry_t1 <- var(predict(lm_rdsa_industry_t0, newdata = predict_data_industry_t1))

var_industry_t2 <- var(predict(lm_rdsa_industry_t0, newdata = predict_data_industry_t2))

### Market ----

var_market_t1 <- var(predict(lm_rdsa_market_t0, newdata = predict_data_market_t1))

var_market_t2 <- var(predict(lm_rdsa_market_t0, newdata = predict_data_market_t2))

## 6. SQUARE ROOT (LENGTH*VAR) ----


### BP ----

sqrt_bp_t1 <- sqrt((length(predict_data_bp_t1)*var_bp_t1))

sqrt_bp_t2 <- sqrt((length(predict_data_bp_t2)*var_bp_t2))


### Totalenergies ----

sqrt_totalenergies_t1 <- sqrt((length(predict_data_totalenergies_t1)*var_totalenergies_t1))

sqrt_totalenergies_t2 <- sqrt((length(predict_data_totalenergies_t2)*var_totalenergies_t2))


### Exxonmobil ----

sqrt_exxonmobil_t1 <- sqrt((length(predict_data_exxonmobil_t1)*var_exxonmobil_t1))

sqrt_exxonmobil_t2 <- sqrt((length(predict_data_exxonmobil_t2)*var_exxonmobil_t2))

### Conoco ----

sqrt_conoco_t1 <- sqrt((length(predict_data_conoco_t1)*var_conoco_t1))

sqrt_conoco_t2 <- sqrt((length(predict_data_conoco_t2)*var_conoco_t2))

### Chevron ----

sqrt_chevron_t1 <- sqrt((length(predict_data_chevron_t1)*var_chevron_t1))

sqrt_chevron_t2 <- sqrt((length(predict_data_chevron_t2)*var_chevron_t2))


### Industry ----

sqrt_industry_t1 <- sqrt((length(predict_data_industry_t1)*var_industry_t1))

sqrt_industry_t2 <- sqrt((length(predict_data_industry_t2)*var_industry_t2))


### Market ----

sqrt_market_t1 <- sqrt((length(predict_data_market_t1)*var_market_t1))

sqrt_market_t2 <- sqrt((length(predict_data_market_t2)*var_market_t2))

## 7. T & P VALUES ----

### BP ----
#### T ----

test_bp_t1 <- CAR_bp_t1/sqrt_bp_t1

test_bp_t2 <- CAR_bp_t2/sqrt_bp_t2

#### P ----

pv_bp_t1  <- 2*pt(q = abs(test_bp_t1 ), df = 20 , lower.tail = FALSE)
pv_bp_t2  <- 2*pt(q = abs(test_bp_t2 ), df = 20 , lower.tail = FALSE)

### Totalenergies ----
#### T ----

test_totalenergies_t1 <- CAR_totalenergies_t1/sqrt_totalenergies_t1

test_totalenergies_t2 <- CAR_totalenergies_t2/sqrt_totalenergies_t2

#### P ----

pv_totalenergies_t1  <- 2*pt(q = abs(test_totalenergies_t1 ), df = 20 , lower.tail = FALSE)
pv_totalenergies_t2  <- 2*pt(q = abs(test_totalenergies_t2 ), df = 20 , lower.tail = FALSE)

### Exxonmobil ----
#### T ----

test_exxonmobil_t1 <- CAR_exxonmobil_t1/sqrt_exxonmobil_t1

test_exxonmobil_t2 <- CAR_exxonmobil_t2/sqrt_exxonmobil_t2

#### P ----

pv_exxonmobil_t1  <- 2*pt(q = abs(test_exxonmobil_t1 ), df = 20 , lower.tail = FALSE)
pv_exxonmobil_t2  <- 2*pt(q = abs(test_exxonmobil_t2 ), df = 20 , lower.tail = FALSE)

### Conoco ----
#### T ----

test_conoco_t1 <- CAR_conoco_t1/sqrt_conoco_t1

test_conoco_t2 <- CAR_conoco_t2/sqrt_conoco_t2

#### P ----

pv_conoco_t1  <- 2*pt(q = abs(test_conoco_t1 ), df = 20 , lower.tail = FALSE)
pv_conoco_t2  <- 2*pt(q = abs(test_conoco_t2 ), df = 20 , lower.tail = FALSE)

### Chevron ----
#### T ----

test_chevron_t1 <- CAR_chevron_t1/sqrt_chevron_t1

test_chevron_t2 <- CAR_chevron_t2/sqrt_chevron_t2

#### P ----

pv_chevron_t1  <- 2*pt(q = abs(test_chevron_t1 ), df = 20 , lower.tail = FALSE)
pv_chevron_t2  <- 2*pt(q = abs(test_chevron_t2 ), df = 20 , lower.tail = FALSE)

### Industry ----
#### T ----

test_industry_t1 <- CAR_industry_t1/sqrt_industry_t1

test_industry_t2 <- CAR_industry_t2/sqrt_industry_t2

#### P ----

pv_industry_t1  <- 2*pt(q = abs(test_industry_t1 ), df = 20 , lower.tail = FALSE)
pv_industry_t2  <- 2*pt(q = abs(test_industry_t2 ), df = 20 , lower.tail = FALSE)

### Market ----
#### T ----

test_market_t1 <- CAR_market_t1/sqrt_market_t1

test_market_t2 <- CAR_market_t2/sqrt_market_t2

#### P ----

pv_market_t1 <-  2*pt(q = abs(test_market_t1 ), df = 20,  lower.tail = FALSE)
pv_market_t2 <-  2*pt(q = abs(test_market_t2 ), df = 20,  lower.tail = FALSE)

##### Combining ----
CAR_T1     <- c(CAR_bp_t1, CAR_totalenergies_t1, CAR_exxonmobil_t1, CAR_conoco_t1, CAR_chevron_t1, CAR_industry_t1, CAR_market_t1)
CAR_T2     <- c(CAR_bp_t2, CAR_totalenergies_t2, CAR_exxonmobil_t2, CAR_conoco_t2, CAR_chevron_t2, CAR_industry_t2, CAR_market_t2)
t_value_T1 <- c(test_bp_t1, test_totalenergies_t1, test_exxonmobil_t1, test_conoco_t1, test_chevron_t1, test_industry_t1, test_market_t1)
t_value_T2 <- c(test_bp_t2, test_totalenergies_t2, test_exxonmobil_t2, test_conoco_t2, test_chevron_t2, test_industry_t2, test_market_t2)
p_value_T1 <- c(pv_bp_t1, pv_totalenergies_t1, pv_exxonmobil_t1, pv_conoco_t1, pv_chevron_t1, pv_industry_t1, pv_market_t1)
p_value_T2 <- c(pv_bp_t2, pv_totalenergies_t2, pv_exxonmobil_t2, pv_conoco_t2, pv_chevron_t2, pv_industry_t2, pv_market_t2)

Statistics <- data.frame(Company, CAR_T1, t_value_T1, p_value_T1, CAR_T2, t_value_T2, p_value_T2)
Resultstable <- data.frame(Company, CAR_T1, CAR_T2)
