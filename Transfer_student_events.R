# Movie Night 
library(tidyverse)

# read in data
Fall23_MCTS <- read_csv("~/Documents/Trellis/list loader/September15_2023_requests/Fall23_MCTS.csv")

Fall23_MCTS %>% 
  distinct(CampaignID) %>% 
  nrow()

MCTS <- read_csv("~/Documents/Trellis/list loader/September15_2023_requests/MCTS_list.csv")
MCTS %>% 
  distinct(NetID) %>% 
  nrow()

MCTS <- MCTS %>%
  mutate(CampaignID = "7013n000002MYXBAA4")

write.csv(MCTS, "~/Documents/Trellis/list loader/September15_2023_requests/MCTS_list1.csv")
        
Contact_full <- read_csv("~/Documents/Trellis/list loader/September15_2023_requests/Contact_full.csv")

### game night
MCTS_game <- read_csv("~/Documents/Trellis/list loader/September15_2023_requests/Fall23_MCTS.csv")

MCTS_game <- MCTS_game %>% 
  mutate(CampaignID = "7013n000002MYXGAA4")

write.csv(MCTS_game, "~/Documents/Trellis/list loader/September15_2023_requests/MCTS_game.csv")
