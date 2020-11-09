##Accessing data from USDA NASS using API

library(tidyverse)
library(plyr)
library(dplyr)
library(httr)
library(lubridate)
library(jsonlite)


#Example 1: access ag land values data from nass using api ####
data_url <- paste(
  "http://quickstats.nass.usda.gov/api/api_GET/?key=PLACE YOUR API KEY HERE",
  "&short_desc=AG LAND, INCL BUILDINGS - ASSET VALUE, MEASURED IN $ / ACRE",
  "&agg_level_desc=STATE",
  "&year=2017",
  "&format=CSV",
  sep=""
)
download.file(data_url, destfile="aglandvalue.csv")

#Example 2: access prices paid data from nass using api ####
PricePaidData_url <- paste(
  "http://quickstats.nass.usda.gov/api/api_GET/?key=PLACE YOUR API KEY HERE",
  "&group_desc=PRICES PAID",
  "&statisticcat_desc=INDEX FOR PRICE PAID, 2011",
  "&year_GE=2000",
  "&freq_desc=ANNUAL",
  "&format=CSV",
  sep=""
)
download.file(PricePaidData_url, destfile="PricesPaid.csv")



