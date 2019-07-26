library(tidyverse)

interviews <- read_csv("data/SAFI_clean.csv", na="NULL")

View(interviews)

dim(interviews)

nrow(interviews)

ncol(interviews)

dim(interviews)[1] == nrow(interviews)

interviews
head(as.data.frame(interviews))        # head phase of data
head(as.data.frame(interviews))          # data frame
tail(as.data.frame(interviews))  # last phase of data
names(interviews)                # name of the head of calums/varibles
str(interviews)           # structure of the data
summary(interviews)   # describtive statistical summary of the data

interviews[1,1]       # knowing what in row no.1 and calum no 1  
interviews[1,6]       # knowing what in row no.1 and calum no 6
interviews[ ,1]       # knowing what in calum no 1  in all rows
interviews[1]         # knowing what in calum no 1  
interviews[1:3, 7]    # knowing the first 3 entires in calum no 7 
1:3                   # creating sequance the first three in calum no 1
interviews [3, ]      # knowing what in calum no.3 ] in all raws
interviews [1:6, ]    # knowing the first 6 entires in all calums
interviews [ , -1]    # knowing all rows withouth calum no 1

#Exersise 
#1
interviews [100, ]    # knowing what in row no.100  in all calum
interviews_100 <- interviews [100, ] # creating data frame (interviews_100) containing only the data in row 100 of the interviews dataset.

#2
n_rows <- nrow(interviews)
interviews_last <- n_rows <- nrow(interviews)
tail(interviews, n=1)

#3
middle_idx <- ceiling(n_rows/2)
interviews[middle_idx,]

#4
interviews_head <- interviews[-(7:n_rows), ]


floor_type <- factor(c("earth", "cement", "cement", "earth"))
levels(floor_type)  # what are the levels, sorted/ordered alphabtically
nlevels(floor_type) #number of levels

## reordering
floor_type <- factor(c("earth", "cement", "cement", "earth"), 
                     levels=c("earth", "cement"))

levels(floor_type) [2] <- "brick" #changing the name of "cement" to "brick"
levels(floor_type)
floor_type
as.character(floor_type)

year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
as.numeric(year_fct)          #showing factors as numbers
as.character(year_fct)         #showing factors as characters
as.numeric(as.character(year_fct)) #showing factors that were characters as numbers

year_nmb <- as.numeric(levels(year_fct))(year_fct)
Summary(year_fct)
table(year_fct)
table(year_nmb)


affect_conflicts <- interviews$affect_conflicts
affect_conflicts <- as.factor(affect_conflicts)
plot(affect_conflicts)
affect_conflicts[is.na(affect_conflicts)] <- "undetermined"

## Let's recreate the vector from the data frame column "affect_conflicts"
affect_conflicts <- interviews$affect_conflicts
## replace the missing data with "undetermined"
affect_conflicts[is.na(affect_conflicts)] <- "undetermined"
## convert it into a factor
affect_conflicts <- as.factor(affect_conflicts)
## let's see what it looks like
affect_conflicts

levels(affect_conflicts) # showing the levels of the varible # now we can see the "more_once" is  at the level no. 2
levels(affect_conflicts) [2] <- "more than once"
plot(affect_conflicts)
