library(readr)
library(psych)
mtcars <- read_csv("E:/munmun_acadgild/acadgild data analytics/supporting files/mtcars.csv")
View(mtcars)
mtcars
str(mtcars)
#summary(mtcars$am)
describe(mtcars$am)
table(mtcars$am)

# Calculate the P Value for the test in Problem 2.

t.test(mtcars$am,mu=10,conf.level = 0.95)
t.test(mpg~am,data = mtcars)

# OR

phat <- 13/(13 + 19)
(phat - 0.4)/sqrt(0.4 * 0.6/(13 + 19))


prop.test(13, 13 + 19, p = 0.4, alternative = "less",
          conf.level = 0.95, correct = FALSE)


# How do you test the proportions and compare against hypothetical props? 
# Test Hypothesis: proportion of automatic cars is 40%.

prop.test(13, 32, p = 0.4, alternative = "less",
          conf.level = 0.95, correct = FALSE)
#OR

prop.test(table(mtcars$am)[2],nrow(mtcars),p=0.4,alternative = "less",conf.level = 0.95,correct=FALSE)
