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

## RDSA - BP ER ----

lm_rdsa_bp_all <- lm(formula = rdsa_all$adjusted ~ bp_all$adjusted)

lm_rdsa_bp_t0 <- lm(formula = rdsa_t0$adjusted ~ bp_t0$adjusted)

lm_rdsa_bp_t1 <- lm(formula = rdsa_t1$adjusted ~ bp_t1$adjusted)

lm_rdsa_bp_t2 <- lm(formula = rdsa_t2$adjusted ~ bp_t2$adjusted)

### Predictions

prdt_bp_all <- predict(lm_rdsa_bp_all)

prdt_bp_t0 <- predict(lm_rdsa_bp_t0)

prdt_bp_t1 <- predict(lm_rdsa_bp_t1)

prdt_bp_t2 <- predict(lm_rdsa_bp_t2)

### Residuals

rsd_bp_all <- resid(lm_rdsa_bp_all)

rsd_bp_t0 <- resid(lm_rdsa_bp_t0)

rsd_bp_t1 <- resid(lm_rdsa_bp_t1)

rsd_bp_t2 <- resid(lm_rdsa_bp_t2)

## RDSA - Total Energies ER ----

lm_rdsa_totalenergies_all <- lm(formula = rdsa_all$adjusted ~ totalenergies_all$adjusted)

lm_rdsa_totalenergies_t0 <- lm(formula = rdsa_t0$adjusted ~ totalenergies_t0$adjusted)

lm_rdsa_totalenergies_t1 <- lm(formula = rdsa_t1$adjusted ~ totalenergies_t1$adjusted)

lm_rdsa_totalenergies_t2 <- lm(formula = rdsa_t2$adjusted ~ totalenergies_t2$adjusted)

### Predictions

prdt_totalenergies_all <- predict(lm_rdsa_totalenergies_all)

prdt_totalenergies_t0 <- predict(lm_rdsa_totalenergies_t0)

prdt_totalenergies_t1 <- predict(lm_rdsa_totalenergies_t1)

prdt_totalenergies_t2 <- predict(lm_rdsa_totalenergies_t2)

### Residuals

rsd_totalenergies_all <- resid(lm_rdsa_totalenergies_all)

rsd_totalenergies_t0 <- resid(lm_rdsa_totalenergies_t0)

rsd_totalenergies_t1 <- resid(lm_rdsa_totalenergies_t1)

rsd_totalenergies_t2 <- resid(lm_rdsa_totalenergies_t2)

## RDSA - ExxonMobil ER ----

lm_rdsa_exxonmobil_all <- lm(formula = rdsa_all$adjusted ~ exxonmobil_all$adjusted)

lm_rdsa_exxonmobil_t0 <- lm(formula = rdsa_t0$adjusted ~ exxonmobil_t0$adjusted)

lm_rdsa_exxonmobil_t1 <- lm(formula = rdsa_t1$adjusted ~ exxonmobil_t1$adjusted)

lm_rdsa_exxonmobil_t2 <- lm(formula = rdsa_t2$adjusted ~ exxonmobil_t2$adjusted)

### Predictions

prdt_exxonmobil_all <- predict(lm_rdsa_exxonmobil_all)

prdt_exxonmobil_t0 <- predict(lm_rdsa_exxonmobil_t0)

prdt_exxonmobil_t1 <- predict(lm_rdsa_exxonmobil_t1)

prdt_exxonmobil_t2 <- predict(lm_rdsa_exxonmobil_t2)

### Residuals

rsd_exxonmobil_all <- resid(lm_rdsa_exxonmobil_all)

rsd_exxonmobil_t0 <- resid(lm_rdsa_exxonmobil_t0)

rsd_exxonmobil_t1 <- resid(lm_rdsa_exxonmobil_t1)

rsd_exxonmobil_t2 <- resid(lm_rdsa_exxonmobil_t2)

## RDSA - Conoco ER ----

lm_rdsa_conoco_all <- lm(formula = rdsa_all$adjusted ~ conoco_all$adjusted)

lm_rdsa_conoco_t0 <- lm(formula = rdsa_t0$adjusted ~ conoco_t0$adjusted)

lm_rdsa_conoco_t1 <- lm(formula = rdsa_t1$adjusted ~ conoco_t1$adjusted)

lm_rdsa_conoco_t2 <- lm(formula = rdsa_t2$adjusted ~ conoco_t2$adjusted)

### Predictions

prdt_conoco_all <- predict(lm_rdsa_conoco_all)

prdt_conoco_t0 <- predict(lm_rdsa_conoco_t0)

prdt_conoco_t1 <- predict(lm_rdsa_conoco_t1)

prdt_conoco_t2 <- predict(lm_rdsa_conoco_t2)

### Residuals

rsd_conoco_all <- resid(lm_rdsa_conoco_all)

rsd_conoco_t0 <- resid(lm_rdsa_conoco_t0)

rsd_conoco_t1 <- resid(lm_rdsa_conoco_t1)

rsd_conoco_t2 <- resid(lm_rdsa_conoco_t2)

## RDSA - Chevron Corporation ER ----

lm_rdsa_chevron_all <- lm(formula = rdsa_all$adjusted ~ chevron_all$adjusted)

lm_rdsa_chevron_t0 <- lm(formula = rdsa_t0$adjusted ~ chevron_t0$adjusted)

lm_rdsa_chevron_t1 <- lm(formula = rdsa_t1$adjusted ~ chevron_t1$adjusted)

lm_rdsa_chevron_t2 <- lm(formula = rdsa_t2$adjusted ~ chevron_t2$adjusted)

### Predictions

prdt_chevron_all <- predict(lm_rdsa_chevron_all)

prdt_chevron_t0 <- predict(lm_rdsa_chevron_t0)

prdt_chevron_t1 <- predict(lm_rdsa_chevron_t1)

prdt_chevron_t2 <- predict(lm_rdsa_chevron_t2)

### Residuals

rsd_chevron_all <- resid(lm_rdsa_chevron_all)

rsd_chevron_t0 <- resid(lm_rdsa_chevron_t0)

rsd_chevron_t1 <- resid(lm_rdsa_chevron_t1)

rsd_chevron_t2 <- resid(lm_rdsa_chevron_t2)

## RDSA - Industry ER ----

lm_rdsa_industry_all <- lm(formula = rdsa_all$adjusted ~ industry_all$adjusted)

lm_rdsa_industry_t0 <- lm(formula = rdsa_t0$adjusted ~ industry_t0$adjusted)

lm_rdsa_industry_t1 <- lm(formula = rdsa_t1$adjusted ~ industry_t1$adjusted)

lm_rdsa_industry_t2 <- lm(formula = rdsa_t2$adjusted ~ industry_t2$adjusted)

### Predictions

prdt_industry_all <- predict(lm_rdsa_industry_all)

prdt_industry_t0 <- predict(lm_rdsa_industry_t0)

prdt_industry_t1 <- predict(lm_rdsa_industry_t1)

prdt_industry_t2 <- predict(lm_rdsa_industry_t2)

### Residuals

rsd_industry_all <- resid(lm_rdsa_industry_all)

rsd_industry_t0 <- resid(lm_rdsa_industry_t0)

rsd_industry_t1 <- resid(lm_rdsa_industry_t1)

rsd_industry_t2 <- resid(lm_rdsa_industry_t2)

## RDSA - Market ER ----

lm_rdsa_market_all <- lm(formula = rdsa_all$adjusted ~ market_all$adjusted)

lm_rdsa_market_t0 <- lm(formula = rdsa_t0$adjusted ~ market_t0$adjusted)

lm_rdsa_market_t1 <- lm(formula = rdsa_t1$adjusted ~ market_t1$adjusted)

lm_rdsa_market_t2 <- lm(formula = rdsa_t2$adjusted ~ market_t2$adjusted)

### Predictions

prdt_market_all <- predict(lm_rdsa_market_all)

prdt_market_t0 <- predict(lm_rdsa_market_t0)

prdt_market_t1 <- predict(lm_rdsa_market_t1)

prdt_market_t2 <- predict(lm_rdsa_market_t2)

### Residuals

rsd_market_all <- resid(lm_rdsa_market_all)

rsd_market_t0 <- resid(lm_rdsa_market_t0)

rsd_market_t1 <- resid(lm_rdsa_market_t1)

rsd_market_t2 <- resid(lm_rdsa_market_t2)

# 5. CAR (cumulative abnormal returns) ----

## CAR BP ----

CAR_bp_all <- sum(rsd_bp_all)

CAR_bp_t0 <- sum(rsd_bp_t0)

CAR_bp_t1 <- sum(rsd_bp_t1)

CAR_bp_t2 <- sum(rsd_bp_t2)

## CAR Totalenergies ----

CAR_totalenergies_all <- sum(rsd_totalenergies_all)

CAR_totalenergies_t0 <- sum(rsd_totalenergies_t0)

CAR_totalenergies_t1 <- sum(rrsd_totalenergies_t1)

CAR_totalenergies_t2 <- sum(rsd_totalenergies_t2)

## CAR Exxonmobil ----

CAR_exxonmobil_all <- sum(rsd_exxonmobil_all)

CAR_exxonmobil_t0 <- sum(rsd_exxonmobil_t0)

CAR_exxonmobil_t1 <- sum(rsd_exxonmobil_t1)

CAR_exxonmobil_t2 <- sum(rsd_exxonmobil_t2)

## CAR Conoco ----

CAR_conoco_all <- sum(rsd_conoco_all)

CAR_conoco_t0 <- sum(rsd_conoco_t0)

CAR_conoco_t1 <- sum(rsd_conoco_t1)

CAR_conoco_t2 <- sum(rsd_conoco_t2)

## CAR Chevron ----

CAR_chevron_all <- sum(rsd_chevron_all)

CAR_chevron_t0 <- sum(rsd_chevron_t0)

CAR_chevron_t1 <- sum(rsd_chevron_t1)

CAR_chevron_t2 <- sum(rsd_chevron_t2)

## CAR Industry ----

CAR_industry_all <- sum(rsd_industry_all)

CAR_industry_t0 <- sum(rsd_industry_t0)

CAR_industry_t1 <- sum(rsd_industry_t1)

CAR_industry_t2 <- sum(rsd_industry_t2)

## CAR Market ----

CAR_market_all <- sum(rsd_market_all)

CAR_market_t0 <- sum(rsd_market_t0)

CAR_market_t1 <- sum(rsd_market_t1)

CAR_market_t2 <- sum(rsd_market_t2)

# 6. TEST STATISTICS ---- 

## VARIANCE ----

### BP  ----

var_bp_all <- var(rsd_bp_all)
 
var_bp_t0 <- var(rsd_bp_t0)

var_bp_t1 <- var(rsd_bp_t1)

var_bp_t2 <- var(rsd_bp_t2)

### Total Energies ----

var_totalenergies_all <- var(rsd_totalenergies_all)

var_totalenergies_t0 <- var(rsd_totalenergies_t0)

var_totalenergies_t1 <- var(rsd_totalenergies_t1)

var_totalenergies_t2 <- var(rsd_totalenergies_t2)

### ExxonMobil ----

var_exxonmobil_all <- var(rsd_exxonmobil_all)

var_exxonmobil_t0 <- var(rsd_exxonmobil_t0)

var_exxonmobil_t1 <- var(rsd_exxonmobil_t1)

var_exxonmobil_t2 <- var(rsd_exxonmobil_t2)

### Conoco ----

var_conoco_all <- var(rsd_conoco_all)

var_conoco_t0 <- var(rsd_conoco_t0)

var_conoco_t1 <- var(rsd_conoco_t1)

var_conoco_t2 <- var(rsd_conoco_t2)

### Chevron  ----

var_chevron_all <- var(rsd_chevron_all)

var_chevron_t0 <- var(rsd_chevron_t0)

var_chevron_t1 <- var(rsd_chevron_t1)

var_chevron_t2 <- var(rsd_chevron_t2)

### Industry ----

var_industry_all <- var(rsd_industry_all)

var_industry_t0 <- var(rsd_industry_t0)

var_industry_t1 <- var(rsd_industry_t1)

var_industry_t2 <- var(rsd_industry_t2)

### Market ----

var_market_all <- var(rsd_market_all)

var_market_t0 <- var(rsd_market_t0)

var_market_t1 <- var(rsd_market_t1)

var_market_t2 <- var(rsd_market_t2)

## SQUARE ROOT (LENGTH*VAR) ----


### BP ----
sqrt_bp_all <- sqrt((length(rsd_bp_all)*var_bp_all))

sqrt1_bp_t0 <- sqrt((length(rsd_bp_t0)*var_bp_t0))

sqrt1_bp_t1 <- sqrt((length(rsd_bp_t1)*var_bp_t1))

sqrt1_bp_t2 <- sqrt((length(rsd_bp_t2)*var_bp_t2))


### Totalenergies ----

sqrt_totalenergies_all <- sqrt((length(var_totalenergies_all)*var_totalenergies_all))

sqrt_totalenergies_t0 <- sqrt((length(var_totalenergies_t0)*var_totalenergies_t0))

sqrt_totalenergies_t1 <- sqrt((length(var_totalenergies_t1)*var_totalenergies_t1))

sqrt_totalenergies_t2 <- sqrt((length(var_totalenergies_t2)*var_totalenergies_t2))


### Exxonmobil ----

sqrt_exxonmobil_all <- sqrt((length(var_exxonmobil_all)*var_exxonmobil_all))

sqrt_exxonmobil_t0 <- sqrt((length(var_exxonmobil_t0)*var_exxonmobil_t0))

sqrt_exxonmobil_t1 <- sqrt((length(var_exxonmobil_t1)*var_exxonmobil_t1))

sqrt_exxonmobil_t2 <- sqrt((length(var_exxonmobil_t2)*var_exxonmobil_t2))

### Conoco ----

sqrt_conoco_all <- sqrt((length(var_conoco_all)*var_conoco_all))

sqrt_conoco_t0 <- sqrt((length(var_conoco_t0)*var_conoco_t0))

sqrt_conoco_t1 <- sqrt((length(var_conoco_t1)*var_conoco_t1))

sqrt_conoco_t2 <- sqrt((length(var_conoco_t2)*var_conoco_t2))

### Chevron ----

sqrt_chevron_all <- sqrt((length(var_chevron_all)*var_chevron_all))

sqrt_chevron_t0 <- sqrt((length(var_chevron_t0)*var_chevron_t0))

sqrt_chevron_t1 <- sqrt((length(var_chevron_t1)*var_chevron_t1))

sqrt_chevron_t2 <- sqrt((length(var_chevron_t2)*var_chevron_t2))


### Industry ----


sqrt_industry_all <- sqrt((length(var_industry_all)*var_industry_all))

sqrt_industry_t0 <- sqrt((length(var_industry_t0)*var_industry_t0))

sqrt_industry_t1 <- sqrt((length(var_industry_t1)*var_industry_t1))

sqrt_industry_t2 <- sqrt((length(var_industry_t2)*var_industry_t2))


### Market ----

sqrt_market_all <- sqrt((length(var_market_all)*var_market_all))

sqrt_market_t0 <- sqrt((length(var_market_t0)*var_market_t0))

sqrt_market_t1 <- sqrt((length(var_market_t1)*var_market_t1))

sqrt_market_t2 <- sqrt((length(var_market_t2)*var_market_t2))

## T & P VALUES ----

### BP ----

t_bp_all <- CAR_bp_all/sqrt_bp_all

OR

xbar_bp_all <- mean(rsd_bp_all)
mu0 <- 0
s_bp_all <- sd(rsd_bp_all)
n_bp_all <- length(rsd_bp_all)
test1_bp_all <- (xbar_bp_all - mu0)/(s_bp_all/sqrt(n_bp_all))


test_bp_t0 <- CAR_bp_t0/sqrt1_bp_t0


test_bp_t1 <- CAR_bp_t1/sqrt1_bp_t1

test_bp_t2 <- CAR_bp_t2/sqrt1_bp_t2

### Totalenergies ----

CAR_totalenergies_all

CAR_totalenergies_t0

CAR_totalenergies_t1

CAR_totalenergies_t2

### Exxonmobil ----

CAR_exxonmobil_all

CAR_exxonmobil_t0

CAR_exxonmobil_t1

CAR_exxonmobil_t2

### Conoco ----

CAR_conoco_all

CAR_conoco_t0

CAR_conoco_t1

CAR_conoco_t2

### Chevron ----

CAR_chevron_all

CAR_chevron_t0

CAR_chevron_t1

CAR_chevron_t2

### Industry ----

CAR_industry_all

CAR_industry_t0

CAR_industry_t1

CAR_industry_t2

### Market ----

CAR_market_all

CAR_market_t0

CAR_market_t1

CAR_market_t2





