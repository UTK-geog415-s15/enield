#Set up your workspace:
precip <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/precip.csv")
precipEN <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/precipEN.csv")
rwi <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/rwi.csv")
rvalues <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/rvalues.csv")
library(ggplot2)
library(dplyr) 
library(tidyr)
library(magrittr)
temp.data <- gather(data=precip, key=month, value=precip, -year)
head(temp.data)
tidy.precip <- arrange(temp.data, year, month)
head(tidy.precip)
temp.data <- mutate(tidy.precip, date.str = paste(year, month, '01'))
head(temp.data)
temp.data <- mutate(temp.data, date=as.Date(date.str, '%Y %B %d'))
head(temp.data)

#Plot of the monthly average rainfall: 
temp.data <- group_by(tidy.precip, month)
temp.data <- summarize(temp.data, precip=mean(precip, na.rm=TRUE))
ggplot(temp.data, aes(month, precip)) + geom_bar(stat='identity') + labs(y='Precipitation (in)')

#Group two spreadsheets:
rwi.precip <- left_join(precip, rwi, by='year') 
cor(rwi.precip$rwi, rwi.precip$Jan)
cor(rwi.precip$rwi, rwi.precip$Jan, use='complete.obs')
cor(rwi.precip$rwi, rwi.precip$Jul, use='complete.obs')
cor(rwi.precip$rwi, lag(rwi.precip$Dec), use = 'complete.obs')
rwi.precip %$% cor(rwi, lag(Dec), use='complete.obs')
rwi.precip <- left_join(rwi, tidy.precip, by='year') %>% filter(year>=1895)
rwi.precip %>% filter(month=='Jan') %$% cor(rwi, precip, use='complete.obs')
rwi.precip %>% filter(month=='Dec') %$% cor(rwi, lag(precip),use='complete.obs')
rwi.precip %>% group_by(month) %>% summarise(r=cor(rwi, precip))

#Scatterplot of Jan. Precip vs Tree Ring Width 
ggplot(data=precipEN) + geom_point(aes(x=Jan, y=rwi)) +  ylab('Tree Ring Width ')+xlab('Precip in Jan. (inches)')
#Scatterplot of August. Precip vs Tree Ring Width 
ggplot(data=precipEN) + geom_point(aes(x=Aug, y=rwi)) +  ylab('Tree Ring Width ')+xlab('Precip in Aug. (inches)')
#Set up your workspace:
precip <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/precip.csv")
precipEN <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/precipEN.csv")
rwi <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/rwi.csv")
rvalues <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/rvalues.csv")
library(ggplot2)
library(dplyr) 
library(tidyr)
library(magrittr)
temp.data <- gather(data=precip, key=month, value=precip, -year)
head(temp.data)
tidy.precip <- arrange(temp.data, year, month)
head(tidy.precip)
temp.data <- mutate(tidy.precip, date.str = paste(year, month, '01'))
head(temp.data)
temp.data <- mutate(temp.data, date=as.Date(date.str, '%Y %B %d'))
head(temp.data)

#Plot of the monthly average rainfall: 
temp.data <- group_by(tidy.precip, month)
temp.data <- summarize(temp.data, precip=mean(precip, na.rm=TRUE))
ggplot(temp.data, aes(month, precip)) + geom_bar(stat='identity') + labs(y='Precipitation (in)')

#Group two spreadsheets:
rwi.precip <- left_join(precip, rwi, by='year') 
cor(rwi.precip$rwi, rwi.precip$Jan)
cor(rwi.precip$rwi, rwi.precip$Jan, use='complete.obs')
cor(rwi.precip$rwi, rwi.precip$Jul, use='complete.obs')
cor(rwi.precip$rwi, lag(rwi.precip$Dec), use = 'complete.obs')
rwi.precip %$% cor(rwi, lag(Dec), use='complete.obs')
rwi.precip <- left_join(rwi, tidy.precip, by='year') %>% filter(year>=1895)
rwi.precip %>% filter(month=='Jan') %$% cor(rwi, precip, use='complete.obs')
rwi.precip %>% filter(month=='Dec') %$% cor(rwi, lag(precip),use='complete.obs')
rwi.precip %>% group_by(month) %>% summarise(r=cor(rwi, precip))

#Scatterplot of Jan. Precip vs Tree Ring Width 
ggplot(data=precipEN) + geom_point(aes(x=Jan, y=rwi)) +  ylab('Tree Ring Width ')+xlab('Precip in Jan. (inches)')
#Scatterplot of August. Precip vs Tree Ring Width 
ggplot(data=precipEN) + geom_point(aes(x=Aug, y=rwi)) +  ylab('Tree Ring Width ')+xlab('Precip in Aug. (inches)')
