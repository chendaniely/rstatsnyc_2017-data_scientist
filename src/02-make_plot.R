library(readr)
library(ggplot2)

df <- read_csv('output/grouped_diamonds.csv')

ggplot(data = df, aes(x = cut, y = avg)) + geom_bar(stat = 'identity')
ggsave('output/avg_carat_by_cut.png')
