# Author: Nathan Lim
# Assignment 3

# Load libraries
library(tidyverse)
library(ggplot2)

# Load CSV data in
data <- read_csv("TitanicDataset.csv")

# Filter for missing data
data <- data %>% filter(!is.na(Pclass))

# Start plotting
bar_plot <- ggplot(data = data, mapping = aes(x = Pclass, fill = as.factor(Pclass))) +
    geom_bar() +
    labs(x = "Ticket Class", y = "Count", fill = "Ticket Class", title = "Titanic Passenger Ticket Class Count") +
    theme_minimal() +
    theme(text = element_text(size = 13))
plot(bar_plot)

box_plot <- ggplot(data = data, aes(x=as.factor(Pclass), y=Age, fill = as.factor(Pclass))) +
    geom_boxplot(alpha=0.5) +
    labs(x = "Ticket Class", y = "Age", fill = "Ticket Class", title = "Titanic Passenger Ticket Class vs. Age") +
    theme_minimal() +
    theme(text = element_text(size = 13))
plot(box_plot)