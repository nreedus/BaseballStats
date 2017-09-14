# Load libraries

library("dplyr")
library("magrittr")
library("ggplot2")

# Read dataset baseball.csv

baseball <- read.csv("baseball.csv")

# View structure of baseball dataset

str(baseball)

# Create a baseball dataset Subset for the years prior to 2002

moneyball <- subset(baseball, Year < 2002)

# View structure of moneball

str(moneyball)

# Create a new variable RD (run difference) = RS (runs scored) - RA (runs allowed) 

moneyball$RD <- moneyball$RS - moneyball$RA

str(moneyball)

# Predict if RD (runs difference) can determine if a team can score 135 runs in a season

WinsReg <- lm(W ~ RD, data = moneyball)

str(WinsReg)

summary(WinsReg)

str(moneyball)

# Predict runs scored using variables RS, OBP, SLG, and BA

RunsReg <- lm(RS ~ OBP + SLG, data = moneyball)

summary(moneyball)

str(moneyball)

summary(RunsReg)

RunsA <- lm(RA ~ OOBP + OSLG, data = moneyball)

str(RunsA)

summary(RunsA)

