library(dplyr)
library(readr)
library(ggplot2)
Senate_Fundraising_20 <-
    read.csv("Fund20.csv")
Senate_Fundraising_18 <-
  read.csv("Fund18.csv")
Senate_Fundraising_16 <-
  read.csv("Fund16.csv")
Senate_Fundraising_14 <-
  read.csv("Fund14.csv")
Senate_Fundraising_12 <-
  read.csv("Fund12.csv")
Senate_Fundraising_10 <-
  read.csv("Fund10.csv")
Senate_Fundraising_08 <-
  read.csv("Fund08.csv")
Senate_Fundraising <- 
  rbind(Senate_Fundraising_08, Senate_Fundraising_10, 
      Senate_Fundraising_12, Senate_Fundraising_12, Senate_Fundraising_14,
      Senate_Fundraising_16, Senate_Fundraising_18, Senate_Fundraising_20)
Senate_Fundraising <-
  Senate_Fundraising %>%
    mutate(Total.Raised=gsub('\\$','',Total.Raised))
Senate_Fundraising <-  
  Senate_Fundraising %>%
    rename(Total.Raised.In.Dollars=Total.Raised)
Senate_Fundraising <-
    Senate_Fundraising %>%
      mutate(Total.Raised.In.Dollars=as.numeric(Total.Raised.In.Dollars))
  head(Senate_Fundraising)
  summary(Senate_Fundraising)
  