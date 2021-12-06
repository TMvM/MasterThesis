library(tidyverse)
library(here)
library(tidyquant)

rdsa <- tq_get("RDS-A",                    
               from = '2019-08-22',
               to = "2020-06-25",
               get = "stock.prices")

bp <- tq_get("BP",                    
               from = '2019-08-22',
               to = "2020-06-25",
               get = "stock.prices")

totalenergies <- tq_get("TTE",                    
               from = '2019-08-22',
               to = "2020-06-25",
               get = "stock.prices")

exonnmobil <- tq_get("XOM",                    
               from = '2019-08-22',
               to = "2020-06-25",
               get = "stock.prices")

conoco <- tq_get("COP",                    
               from = '2019-08-22',
               to = "2020-06-25",
               get = "stock.prices")

chevron <- tq_get("CVX",                    
               from = '2019-08-22',
               to = "2020-06-25",
               get = "stock.prices")

indu <- tq_get("XOI",                    
                  from = '2019-08-22',
                  to = "2020-06-25",
                  get = "stock.prices")

mrkt <- tq_get("NYA",                    
               from = '2019-08-22',
               to = "2020-06-25",
               get = "stock.prices")

# Calculate daily returns rdsa

rdsa_daily_returns <- rdsa %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "rdsa_returns") # renames the column

# Calculate daily returns bp

bp_daily_returns <- bp %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "bp_returns") # renames the column

# Calculate daily returns totalenergies

totalenergies_daily_returns <- totalenergies %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "totalenergies_returns") # renames the column

# Calculate daily returns exxonmobil

exxonmobil_daily_returns <- exonnmobil %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "exxonmobil_returns") # renames the column

# Calculate daily returns conoco

conoco_daily_returns <- conoco %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "conoco_returns") # renames the column

# Calculate daily returns chevron

chevron_daily_returns <- chevron %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "chevron_returns") # renames the column

# Calculate daily returns industry

industry_daily_returns <- indu %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "industry_returns") # renames the column

# Calculate daily returns market

market_daily_returns <- mrkt %>%
  tq_transmute(select = adjusted,           # this specifies which column to select   
               mutate_fun = periodReturn,   # This specifies what to do with that column
               period = "daily",      # This argument calculates Daily returns
               col_rename = "market_returns") # renames the column