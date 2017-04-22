library(ggplot2)
library(dplyr)

df <- diamonds %>%
    group_by(cut) %>%
    summarize(avg = mean(carat))

write.csv(df, file = 'output/grouped_diamonds.csv')
