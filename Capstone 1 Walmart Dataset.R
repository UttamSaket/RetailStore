
# Capstone project no. 1 - Walmart Dataset
# Using R programming language

read.csv("D:\\Capstone project_IIT Madras_For certificate\\Walmart_capstone.csv")->walmart
View(walmart)

# checking if any null value present in data or not:

any(is.na(walmart))
# False

# Doing some data pre processing:

str(walmart)
as.Date(walmart$Date)->walmart$Date
as.factor(walmart$Store)->walmart$Store
as.factor(walmart$Holiday_Flag)->walmart$Holiday_Flag
table(walmart$Holiday_Flag)

# Answer to 1a.(If the weekly sales are affected by the unemployment rate, if yes -
# which stores are suffering the most?)

# it is not possible to visualise data for all 45 stores at one go, so I have made 5 groups
# of stores for this.

summary(walmart$Unemployment)
library(ggplot2)
store_1_9<-walmart[1:1287 ,]
View(store_1_9)
ggplot(store_1_9, aes(x=Unemployment, y=Weekly_Sales, col=Store))+geom_boxplot()

store_10_18<-walmart[1288:2574 ,]
View(store_10_18)
ggplot(store_10_18, aes(x=Unemployment, y=Weekly_Sales, col=Store))+geom_boxplot()

store_19_27<-walmart[2575:3861 ,]
View(store_19_27)
ggplot(store_19_27, aes(x=Unemployment, y=Weekly_Sales, col=Store))+geom_boxplot()

store_28_36<-walmart[3862:5148 ,]
View(store_28_36)
ggplot(store_28_36, aes(x=Unemployment, y=Weekly_Sales, col=Store))+geom_boxplot()

store_37_45<-walmart[5149:6435 ,]
View(store_37_45)
ggplot(store_37_45, aes(x=Unemployment, y=Weekly_Sales, col=Store))+geom_boxplot()

# Outcome -- It is observed that if the unemployment rate is between 7 and 8, it is more likely 
# that the sales for those stores will be affected.
# The most affected stores, when the unemployment rate is between 7 & 8 are -
# Store no. - 7, 15, 16, 17, 21, 25, 26

# Answer to 1b.(If the weekly sales show a seasonal trend, when & what could be the reason?)

ggplot(store_1_9, aes(x=Date, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_10_18, aes(x=Date, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_19_27, aes(x=Date, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_28_36, aes(x=Date, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_37_45, aes(x=Date, y=Weekly_Sales, col=Store))+geom_line()

# Outcome -- Almost for all stores, there is a surge in sales twice a yesr
# Relatively smaller surge is seen in the month of October, most probably due to festive season across the country
# Bigger surge is sales is seen during the last few weeks of year i.e. at the end of the year. This may be
# because of huge discount offered by the company in all of its stores to clear its old inventory /
# to push the sale & achieve year end budgeted sale etc.


# Answer to 1c. (Does temperature affect the weekly sales in any manner?)

summary(walmart$Temperature)
store_1_5<-walmart[1:715 ,]
store_6_10<-walmart[715:1430 ,]
store_11_15<-walmart[1431:2145 ,]
store_16_20<-walmart[2146:2860 ,]
store_21_25<-walmart[2861:3575 ,]
store_26_30<-walmart[3576:4290 ,]
store_31_35<-walmart[4291:5005 ,]
store_36_40<-walmart[5006:5720 ,]
store_41_45<-walmart[5721:6435 ,]



ggplot(store_1_5, aes(x=Temperature, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_6_10, aes(x=Temperature, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_11_15, aes(x=Temperature, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_16_20, aes(x=Temperature, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_21_25, aes(x=Temperature, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_26_30, aes(x=Temperature, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_31_35, aes(x=Temperature, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_36_40, aes(x=Temperature, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_41_45, aes(x=Temperature, y=Weekly_Sales, col=Store))+geom_line()

# Outcome -- Most of the sales happen when temperature is ranging from 25 to 50 and 
# sales begin to slow down as soon as temperature exceeds 50.
# However, exception can be seen in case of store no. 6, 10, 31, 39 where sales is equally 
# good even when temperature is between 50 and 65.

# Answer to 1d. ( How is the CPI affecting the weekly sales of variuos stores?)

summary(walmart$CPI)

ggplot(store_1_9, aes(x=CPI, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_10_18, aes(x=CPI, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_19_27, aes(x=CPI, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_28_36, aes(x=CPI, y=Weekly_Sales, col=Store))+geom_line()
ggplot(store_37_45, aes(x=CPI, y=Weekly_Sales, col=Store))+geom_line()

# Outcome -- There is no correlation between CPI and weekly sales of variuos stores
# because it is observed that at lower CPI i.e. at 126 to 140, there are stores with
# very high sales and with very low sales,
# and when CPI is highest at 200 - 225 level, then also there are stores with
# very high sales and with very low sales,
# hence, CPI has no effect on weekly sales of any of the stores.

# Answer to 1e. # (Top Performing Store according to the historical data)

ggplot(store_1_9, aes(x=Date, y=Weekly_Sales, col=Store))+geom_boxplot()
ggplot(store_10_18, aes(x=Date, y=Weekly_Sales, col=Store))+geom_boxplot()
ggplot(store_19_27, aes(x=Date, y=Weekly_Sales, col=Store))+geom_boxplot()
ggplot(store_28_36, aes(x=Date, y=Weekly_Sales, col=Store))+geom_boxplot()
ggplot(store_37_45, aes(x=Date, y=Weekly_Sales, col=Store))+geom_boxplot()

# After plotting box plot for all stores, it seems apparently that one among the 
# store no. 4 , 14, 20, 28, 31, 39 is the Top performing store
# So, for comparing the mean of weekly sales of all these stores, I have created a data farme
# with the weekly sales of these stores only

which(walmart$Store==4)  # to find the row no. of all records of store no.4
which(walmart$Store==14) # and so on
which(walmart$Store==20)
which(walmart$Store==28)
which(walmart$Store==31)
which(walmart$Store==39)

store4<-walmart[430:572, 3]
store14<-walmart[1860:2002, 3]
store20<-walmart[2718:2860, 3]
store28<-walmart[3862:4004, 3]
store31<-walmart[4291:4433, 3]
store39<-walmart[5435:5577, 3]
top_performing_stores<-cbind(s4=store4,s14=store14,s20=store20, s28=store28, s31=store31, s39=store39)
View(top_performing_stores)
as.data.frame(top_performing_stores)->top_performing_stores
str(top_performing_stores)
library(dplyr)

top_performing_stores %>%
  summarise (avg_s4=mean(s4),
   avg_s14=mean(s14),
   avg_s20=mean(s20),
   avg_s28=mean(s28),
   avg_s31=mean(s31),
   avg_s39=mean(s39),
   )

# Outcome -- Top performing store is - store no. 20

# Answer to 1f. # the Worst Performing Store

# After plotting box plot for all stores, it seems apparently that one among the 
# store no. 5 , 16, 25, 33, 44 is the worst performing store
# So, for comparing the mean of weekly sales of all these stores, I have created a data farme
# with the weekly sales of these stores only


which(walmart$Store==5)      # to find the row no. of all records of store no.4
which(walmart$Store==16)     # and so on
which(walmart$Store==25)
which(walmart$Store==33)
which(walmart$Store==44)


store5<-walmart[573:715, 3]
store16<-walmart[2146:2288, 3]
store25<-walmart[3433:3575, 3]
store33<-walmart[4577:4719, 3]
store44<-walmart[6150:6292, 3]
worst_performing_stores<-cbind(s5=store5,s16=store16,s25=store25, s33=store33, s44=store44)
View(worst_performing_stores)
as.data.frame(worst_performing_stores)->worst_performing_stores
str(top_performing_stores)

worst_performing_stores %>%
  summarise (avg_s5=mean(s5),
             avg_s16=mean(s16),
             avg_s25=mean(s25),
             avg_s33=mean(s33),
             avg_s44=mean(s44)
             )

# Outcome -- The worst performing store is - store no. 33.


# How significant is the difference between top (store no. 20) & worst (store no.33) performing stores:
# For Finding the above, I have used 2 Sample T-test to compare the mean of both the stores:
# Null hypothesis        - There is no significant difference between both the means 
# Alternate hypothesis   - There is significant difference between both the means 

# Two Sample t-test

t.test(store20, store33, var.equal = TRUE )

# data:  store20 and store33
# t = 79.785, df = 284, p-value < 2.2e-16
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  1802228 1893402
# sample estimates:
#  mean of x mean of y 
# 2107676.9  259861.7

# In the above outcome, we can see that at 95% confidence level the t-value=79.785 falls outside the range 
# critical level at 0.05. In this scenario, we can reject the null hypothesis which says that there
# is no difference between the two means and we will accept the alternate hypothesis.
# Hence, we can say that there is significant or statistical difference between the top & worst performing stores.



#####################################################################################

# Answer to 2. ( Use predictive modelling techniques to forecast the sales for each store 
#                for the next 12 weeks)


### Forecasting for store no. 1 for next 12 weeks

read.csv("D:\\Capstone project_IIT Madras_For certificate\\Walmart_capstone.csv")->walmart_store
View(walmart_store)
str(walmart_store)

# Creating new data frame for store no.1 - all records of column 2 and 3, i.e. Date & Weekly Sales:
store1=walmart_store[1:143, 2:3]
View(store1)
str(store1)

# Converting the above data frame to time series data: 
store1_ts=ts(store1$Weekly_Sales, start = c(2010,5), frequency = 52)
plot(store1_ts)

# Since there is seasonality (variance in time series data), we will eliminate variance:
plot(log(store1_ts))
abline(lm(log(store1_ts)~time(log(store1_ts))))

# We also have to eliminate Trend in the time series because Mean is the function of time:  

plot(diff(log(store1_ts)))
abline(lm(diff(log(store1_ts))~time(diff(log(store1_ts)))))

# Now, we have made the VARIANCE & MEAN constant, we will build ARIMA model:
# AR   I     MA
# p    d     q
# 2    1     0

acf(store1_ts)
acf(diff(log(store1_ts)))         # to find value of q
pacf(diff(log(store1_ts)))        # to find value of p

arima(log(store1_ts), c(2,1,0), seasonal = list(order=c(0,1,0), period=52))->model_time

# Forecasting for next 12 weeks:
predict(model_time, 0.24*52)->pred_time
pred_time


# Since the value is predicted on logarithmic data, we have to convert them into normal value:
2.718^pred_time$pred->pred_time
pred_time
ts.plot(store1_ts, pred_time, log="y", lty=c(1,3), col="purple", main="Forecasted foe next 12 weeks (Store 1)")





### Forecasting for store no. 2 for next 12 weeks

read.csv("D:\\Capstone project_IIT Madras_For certificate\\Walmart_capstone.csv")->walmart_store
View(walmart_store)
str(walmart_store)
which(walmart_store$Store==2)

# Creating new data frame for store no.2 - all records of column 2 and 3, i.e. Date & Weekly Sales:
store2=walmart_store[144:286, 2:3]
View(store2)

# Converting the above data frame to time series data: 
store2_ts=ts(store2$Weekly_Sales, start = c(2010,5), frequency = 52)
plot(store2_ts)

# Since there is seasonality (variance in time series data), we will eliminate variance:
plot(log(store2_ts))
abline(lm(log(store2_ts)~time(log(store2_ts))))

# We also have to eliminate Trend in the time series because Mean is the function of time:  
plot(diff(log(store2_ts)))
abline(lm(diff(log(store2_ts))~time(diff(log(store2_ts)))))

# Now, we have made the VARIANCE & MEAN constant, we will build ARIMA model:
# AR   I     MA
# p    d     q
# 2    1     0

acf(diff(log(store2_ts)))       # to find value of q
pacf(diff(log(store2_ts)))      # to find value of p

arima(log(store2_ts), c(2,1,0), seasonal = list(order=c(0,1,0), period=52))->model_time2

# Forecasting for next 12 weeks:
predict(model_time2, 0.24*52)->pred_time2
pred_time2

# Since the value is predicted on logarithmic data, we have to convert them into normal value:

2.718^pred_time2$pred->pred_time2
pred_time2
ts.plot(store2_ts, pred_time2, log="y", lty=c(1,3), col="purple", main="Forecasted for next 12 weeks (Store 2)")




### Forecasting for store no. 3 for next 12 weeks

read.csv("D:\\Capstone project_IIT Madras_For certificate\\Walmart_capstone.csv")->walmart_store
View(walmart_store)
str(walmart_store)
which(walmart_store$Store==3)

# Creating new data frame for store no.3 - all records of column 2 and 3, i.e. Date & Weekly Sales:
store3=walmart_store[287:429, 2:3]
View(store3)

# Converting the above data frame to time series data: 
store3_ts=ts(store3$Weekly_Sales, start = c(2010,5), frequency = 52)
plot(store3_ts)

# Since there is seasonality (variance in time series data), we will eliminate variance:
plot(log(store3_ts))
abline(lm(log(store3_ts)~time(log(store3_ts))))

# We also have to eliminate Trend in the time series because Mean is the function of time:  
plot(diff(log(store3_ts)))
abline(lm(diff(log(store3_ts))~time(diff(log(store3_ts)))))

# Now, we have made the VARIANCE & MEAN constant, we will build ARIMA model:
# AR   I     MA
# p    d     q
# 2    1     0

acf(diff(log(store3_ts)))       # to find value of q
pacf(diff(log(store3_ts)))      # to find value of p

arima(log(store3_ts), c(2,1,0), seasonal = list(order=c(0,1,0), period=52))->model_time3

# Forecasting for next 12 weeks:
predict(model_time3, 0.24*52)->pred_time3
pred_time3

# Since the value is predicted on logarithmic data, we have to convert them into normal value:

2.718^pred_time3$pred->pred_time3
pred_time3
ts.plot(store3_ts, pred_time3, log="y", lty=c(1,3), col="purple", main="Forecasted for next 12 weeks (Store 3)")
summary(store3)




###  Forecasting for store no. 4 for next 12 weeks

read.csv("D:\\Capstone project_IIT Madras_For certificate\\Walmart_capstone.csv")->walmart_store
View(walmart_store)
str(walmart_store)
which(walmart_store$Store==4)

# Creating new data frame for store no.4 - all records of column 2 and 3, i.e. Date & Weekly Sales:
store4=walmart_store[430:572, 2:3]
View(store4)

# Converting the above data frame to time series data: 
store4_ts=ts(store4$Weekly_Sales, start = c(2010,5), frequency = 52)
plot(store4_ts)

# Since there is seasonality (variance in time series data), we will eliminate variance:
plot(log(store4_ts))
abline(lm(log(store4_ts)~time(log(store4_ts))))

# We also have to eliminate Trend in the time series because Mean is the function of time:  
plot(diff(log(store4_ts)))
abline(lm(diff(log(store4_ts))~time(diff(log(store4_ts)))))

# Now, we have made the VARIANCE & MEAN constant, we will build ARIMA model:
# AR   I     MA
# p    d     q
# 2    1     0

acf(diff(log(store4_ts)))       # to find value of q
pacf(diff(log(store4_ts)))      # to find value of p

arima(log(store4_ts), c(2,1,0), seasonal = list(order=c(0,1,0), period=52))->model_time4

# Forecasting for next 12 weeks:
predict(model_time4, 0.24*52)->pred_time4
pred_time4

# Since the value is predicted on logarithmic data, we have to convert them into normal value:

2.718^pred_time4$pred->pred_time4
pred_time4
ts.plot(store4_ts, pred_time4, log="y", lty=c(1,3), col="purple", main="Forecasted for next 12 weeks (Store 4)")




### Forecasting for store no. 5 for next 12 weeks

read.csv("D:\\Capstone project_IIT Madras_For certificate\\Walmart_capstone.csv")->walmart_store
View(walmart_store)
str(walmart_store)
which(walmart_store$Store==5)

# Creating new data frame for store no.5 - all records of column 2 and 3, i.e. Date & Weekly Sales:
store5=walmart_store[573:715, 2:3]
View(store5)

# Converting the above data frame to time series data: 
store5_ts=ts(store5$Weekly_Sales, start = c(2010,5), frequency = 52)
plot(store5_ts)

# Since there is seasonality (variance in time series data), we will eliminate variance:
plot(log(store5_ts))
abline(lm(log(store5_ts)~time(log(store5_ts))))

# We also have to eliminate Trend in the time series because Mean is the function of time:  
plot(diff(log(store5_ts)))
abline(lm(diff(log(store5_ts))~time(diff(log(store5_ts)))))

# Now, we have made the VARIANCE & MEAN constant, we will build ARIMA model:
# AR   I     MA
# p    d     q
# 2    1     0

acf(diff(log(store5_ts)))       # to find value of q
pacf(diff(log(store5_ts)))      # to find value of p

arima(log(store5_ts), c(2,1,0), seasonal = list(order=c(0,1,0), period=52))->model_time5

# Forecasting for next 12 weeks:
predict(model_time5, 0.24*52)->pred_time5
pred_time5

# Since the value is predicted on logarithmic data, we have to convert them into normal value:

2.718^pred_time5$pred->pred_time5
pred_time5
ts.plot(store5_ts, pred_time5, log="y", lty=c(1,3), col="purple", main="Forecasted for next 12 weeks (Store 5)")




### Forecasting for store no.6 for next 12 weeks

read.csv("D:\\Capstone project_IIT Madras_For certificate\\Walmart_capstone.csv")->walmart_store
View(walmart_store)
str(walmart_store)
which(walmart_store$Store==6)

# Creating new data frame for store no.6 - all records of column 2 and 3, i.e. Date & Weekly Sales:
store6=walmart_store[716:858, 2:3]
View(store6)

# Converting the above data frame to time series data: 
store6_ts=ts(store6$Weekly_Sales, start = c(2010,5), frequency = 52)
plot(store6_ts)

# Since there is seasonality (variance in time series data), we will eliminate variance:
plot(log(store6_ts))
abline(lm(log(store6_ts)~time(log(store6_ts))))

# We also have to eliminate Trend in the time series because Mean is the function of time:  
plot(diff(log(store6_ts)))
abline(lm(diff(log(store6_ts))~time(diff(log(store6_ts)))))

# Now, we have made the VARIANCE & MEAN constant, we will build ARIMA model:
# AR   I     MA
# p    d     q
# 2    1     0

acf(diff(log(store6_ts)))       # to find value of q
pacf(diff(log(store6_ts)))      # to find value of p

arima(log(store6_ts), c(2,1,0), seasonal = list(order=c(0,1,0), period=52))->model_time6

# Forecasting for next 12 weeks:
predict(model_time6, 0.24*52)->pred_time6
pred_time6

# Since the value is predicted on logarithmic data, we have to convert them into normal value:

2.718^pred_time6$pred->pred_time6
pred_time6
ts.plot(store6_ts, pred_time6, log="y", lty=c(1,3), col="purple", main="Forecasted for next 12 weeks (Store 6)")




### Forecasting for store no.7 for next 12 weeks

read.csv("D:\\Capstone project_IIT Madras_For certificate\\Walmart_capstone.csv")->walmart_store
View(walmart_store)
str(walmart_store)
which(walmart_store$Store==7)

# Creating new data frame for store no.7 - all records of column 2 and 3, i.e. Date & Weekly Sales:
store7=walmart_store[859:1001, 2:3]
View(store7)

# Converting the above data frame to time series data: 
store7_ts=ts(store7$Weekly_Sales, start = c(2010,5), frequency = 52)
plot(store7_ts)

# Since there is seasonality (variance in time series data), we will eliminate variance:
plot(log(store7_ts))
abline(lm(log(store7_ts)~time(log(store7_ts))))

# We also have to eliminate Trend in the time series because Mean is the function of time:  
plot(diff(log(store7_ts)))
abline(lm(diff(log(store7_ts))~time(diff(log(store7_ts)))))

# Now, we have made the VARIANCE & MEAN constant, we will build ARIMA model:
# AR   I     MA
# p    d     q
# 1    1     0

acf(diff(log(store7_ts)))       # to find value of q
pacf(diff(log(store7_ts)))      # to find value of p

arima(log(store7_ts), c(1,1,0), seasonal = list(order=c(0,1,0), period=52))->model_time7

# Forecasting for next 12 weeks:
predict(model_time7, 0.24*52)->pred_time7
pred_time7

# Since the value is predicted on logarithmic data, we have to convert them into normal value:

2.718^pred_time7$pred->pred_time7
pred_time7
ts.plot(store7_ts, pred_time7, log="y", lty=c(1,3), col="purple", main="Forecasted for next 12 weeks (Store 7)")

summary(store7)



### Forecasting for store no.8 for next 12 weeks

read.csv("D:\\Capstone project_IIT Madras_For certificate\\Walmart_capstone.csv")->walmart_store
View(walmart_store)
str(walmart_store)
which(walmart_store$Store==8)

# Creating new data frame for store no.8 - all records of column 2 and 3, i.e. Date & Weekly Sales:
store8=walmart_store[1002:1144, 2:3]
View(store8)

# Converting the above data frame to time series data: 
store8_ts=ts(store8$Weekly_Sales, start = c(2010,5), frequency = 52)
plot(store8_ts)

# Since there is seasonality (variance in time series data), we will eliminate variance:
plot(log(store8_ts))
abline(lm(log(store8_ts)~time(log(store8_ts))))

# We also have to eliminate Trend in the time series because Mean is the function of time:  
plot(diff(log(store8_ts)))
abline(lm(diff(log(store8_ts))~time(diff(log(store8_ts)))))

# Now, we have made the VARIANCE & MEAN constant, we will build ARIMA model:
# AR   I     MA
# p    d     q
# 2    1     0

acf(diff(log(store8_ts)))       # to find value of q
pacf(diff(log(store8_ts)))      # to find value of p

arima(log(store8_ts), c(2,1,0), seasonal = list(order=c(0,1,0), period=52))->model_time8

# Forecasting for next 12 weeks:
predict(model_time8, 0.24*52)->pred_time8
pred_time8

# Since the value is predicted on logarithmic data, we have to convert them into normal value:

2.718^pred_time8$pred->pred_time8
pred_time8
ts.plot(store8_ts, pred_time8, log="y", lty=c(1,3), col="purple", main="Forecasted for next 12 weeks (Store 8)")

summary(store8)


### Forecasting for store no.9 for next 12 weeks

read.csv("D:\\Capstone project_IIT Madras_For certificate\\Walmart_capstone.csv")->walmart_store
View(walmart_store)
str(walmart_store)
which(walmart_store$Store==9)

# Creating new data frame for store no.9 - all records of column 2 and 3, i.e. Date & Weekly Sales:
store9=walmart_store[1145:1287, 2:3]
View(store9)

# Converting the above data frame to time series data: 
store9_ts=ts(store9$Weekly_Sales, start = c(2010,5), frequency = 52)
plot(store9_ts)

# Since there is seasonality (variance in time series data), we will eliminate variance:
plot(log(store9_ts))
abline(lm(log(store9_ts)~time(log(store9_ts))))

# We also have to eliminate Trend in the time series because Mean is the function of time:  
plot(diff(log(store9_ts)))
abline(lm(diff(log(store9_ts))~time(diff(log(store9_ts)))))

# Now, we have made the VARIANCE & MEAN constant, we will build ARIMA model:
# AR   I     MA
# p    d     q
# 2    1     0

acf(diff(log(store9_ts)))       # to find value of q
pacf(diff(log(store9_ts)))      # to find value of p

arima(log(store9_ts), c(2,1,0), seasonal = list(order=c(0,1,0), period=52))->model_time9

# Forecasting for next 12 weeks:
predict(model_time9, 0.24*52)->pred_time9
pred_time9

# Since the value is predicted on logarithmic data, we have to convert them into normal value:

2.718^pred_time9$pred->pred_time9
pred_time9
ts.plot(store9_ts, pred_time9, log="y", lty=c(1,3), col="purple", main="Forecasted for next 12 weeks (Store 9)")

summary(store9)


### Forecasting for store no.10 for next 12 weeks

read.csv("D:\\Capstone project_IIT Madras_For certificate\\Walmart_capstone.csv")->walmart_store
View(walmart_store)
str(walmart_store)
which(walmart_store$Store==10)

# Creating new data frame for store no.10 - all records of column 2 and 3, i.e. Date & Weekly Sales:
store10=walmart_store[1288:1430, 2:3]
View(store10)

# Converting the above data frame to time series data: 
store10_ts=ts(store10$Weekly_Sales, start = c(2010,5), frequency = 52)
plot(store10_ts)

# Since there is seasonality (variance in time series data), we will eliminate variance:
plot(log(store10_ts))
abline(lm(log(store10_ts)~time(log(store10_ts))))

# We also have to eliminate Trend in the time series because Mean is the function of time:  
plot(diff(log(store10_ts)))
abline(lm(diff(log(store10_ts))~time(diff(log(store10_ts)))))

# Now, we have made the VARIANCE & MEAN constant, we will build ARIMA model:
# AR   I     MA
# p    d     q
# 2    1     0

acf(diff(log(store10_ts)))       # to find value of q
pacf(diff(log(store10_ts)))      # to find value of p

arima(log(store10_ts), c(2,1,0), seasonal = list(order=c(0,1,0), period=52))->model_time10

# Forecasting for next 12 weeks:
predict(model_time10, 0.24*52)->pred_time10
pred_time10

# Since the value is predicted on logarithmic data, we have to convert them into normal value:

2.718^pred_time10$pred->pred_time10
pred_time10
ts.plot(store10_ts, pred_time10, log="y", lty=c(1,3), col="purple", main="Forecasted for next 12 weeks (Store 10)")
summary(store10)


################### In the same way, we can predict for all stores one by one. The only care to be
                  # taken is while finding the value for p & q for ARIMA model for each store's time series..



################################# Thank You #################################


