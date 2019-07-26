library(dplyr)
library(tidyr)
interviews <- read.csv("data/SAFI_clean.csv", na="NULL")

select(interviews, village, no_membrs, years_liv)

filter(interviews, village == "God")
filter(interviews, village == "God", no_membrs > 6)

select-cols <- select(interviews, village, no_membrs, years_liv)
filter(interviews, village == "God", no_membrs > 6)
god_data <- filter(select_cols, village == "God", no_membrs > 6)
interviews %>%
  select(village, no_membrs, years_liv) %>%
  filter(village == "God", no_membrs > 6)

# exersice:
interviews %>%
  filter(memb_assoc == "yes") %>%
  select(affect_conflicts, liv_count,no_meals)
