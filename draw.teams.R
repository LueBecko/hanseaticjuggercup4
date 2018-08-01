library(readr)

registration <- read_csv("registration.csv", 
                         col_types = cols(FIX = col_logical()))


library(tidyverse)

set.seed(2018)

teams.in <- sample(x = (registration %>% filter(!FIX))$Position, size = 8, replace = FALSE)

registration$IN <- registration$FIX
registration$IN[teams.in] <- TRUE
