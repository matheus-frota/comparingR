library(tidyverse)

df <- read_csv("/home/matheus/github/benchmarkRPython/data/Amazon_Unlocked_Mobile.csv")

df <- df[,c("Brand Name","Price","Rating")]

df <- na.omit(df)

plot.histogram <- function(df, var, xlab, ylab) {
  out <- ggplot(df, aes_string(x = var)) +
    geom_histogram(bins = 15, fill = "#42c2f5", color = "white", alpha = 0.7) +
    labs(x = xlab, y = ylab)
  return(out)
}
