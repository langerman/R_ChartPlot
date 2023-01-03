# Install the package (readr is in tidyverse)
install.packages("tidyverse")
install.packages("ggrepel")

# Loading package
library(readr)
library(ggplot2)
library(ggrepel)

# Import attendance.csv: attend
#attend <- read_csv("P:/RSD/AA Danny/attendance.csv")
attend <- read_csv("/Users/dl/Desktop/attendance.csv")

# View the head of attend
head(attend)

# Summary of dataset
summary(attend)


ggplot(attend,  aes(x = Sessions, y = Average, colour = Borough)) +
     labs(title = "FY 22 Summer Attendance",
       subtitle = "Average Attendance by Days Open",
       caption = "Data source: D2D",
       x = "Total Sessions Offered", y = "Average Attendance per Session",
       tag = "A") +
     geom_point() +
     expand_limits(x = 0, y = 0) +
     ggtitle("FY22 Su' Attendance") +
     geom_text_repel(attend, mapping = aes(label=Site))

     




# B&W
ggplot(attend, aes(x = Sessions, y = Average)) +
  labs(title = "FY 22 Summer Attendance",
       subtitle = "Average Attendance by Days Open",
       caption = "Data source: D2D",
       x = "Total Sessions Offered", y = "Average Attendance per Session",
       tag = "A") +
     geom_point() + expand_limits(x = 0, y = 0) + ggtitle("FY22 Su' Attendance") + geom_text_repel(attend, mapping = aes(label=Site)) + theme_classic()
