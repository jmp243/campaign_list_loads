# May meal plan
# May 1, 2023

library(readr)
library(tidyverse)

May_Meal_plan <- read_csv("~/Documents/Trellis/list loader/May1_2023_requests/May_Meal_plan.csv")

May_meal <- May_Meal_plan %>% 
  distinct()
