library("tidyverse")
library("ggplot2")

tonnage <- read.csv("TBQ05.20211116133909.csv")


tonnage$VALUE <- as.numeric(tonnage$VALUE)
tonnage$VALUE <- replace(tonnage$VALUE, is.na(tonnage$VALUE),0)

tonnage$Region.of.Trade <- as.factor(tonnage$Region.of.Trade)
by(tonnage$VALUE, tonnage$Region.of.Trade, sum)


ggplot(data = tonnage) +
  geom_point(aes(x=Quarter, y=VALUE, color=Port)) +
  ggtitle("Quarterly Tonnage Arriving from Great Britain and Northern Ireland") +
  xlab("Quarter") +
  ylab("Tonnage") +
  ylim(0, 4000) +
  theme_minimal()