# Jung Mee Park
# 2023-09-22

# load in libraries
library(readr)
library(tidyverse)
library(stringr)
library(stringi)

# read in data
GradFestFall2023 <- read_csv("~/Documents/Trellis/list loader/September22_2023_requests/GradFestFall2023.csv")
View(GradFestFall2023)

# Create netID
GradFestFall2023  <- GradFestFall2023  %>%
  mutate(CampaignID = "7013n000002MYqDAAW") %>% 
  mutate(`Send Status` = "sent") %>% 
  mutate(NetID = str_extract(`Email Address`, "[^@]+"))

write.csv(GradFestFall2023, "~/Documents/Trellis/list loader/September22_2023_requests/GradFestFall2023_list1.csv")
