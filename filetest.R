#Regression
data(women)
names(women)
str(women)
cov(women$height,women$weight)
t=cor(women$height,women$weight)
t^2
plot(x=women$height, y = women$weight)
abline(lm(weight~height, data = women), col='red')
names(women)
fit1=lm(weight~height, data = women)
summary(fit1)
#p value is very small so model is significant, multiple r sqr- 99.1% changes in wt. are explained by change in ht. adjsted r sqr is used in case of multiple linear regrsn.
#if p value is less than .05, we retain those variables for calculation as they are significant
coef(fit1)
(Y= -87.51677 + 3.45*20)
#but weight cannot be negative
range(women$height)

#prediction for height 65,66


(new1 = data.frame(height=c(65,66)))
p1=predict(fit1, newdata = new1)
cbind(new1,p1)


(new2 = data.frame(height=c(68,71)))
p2=predict(fit1, newdata = new2)
cbind(new2,p2)

#assumptions are very important to linear regression
#example 8.1 from R in action book
#Assumptions 1: Normality - for fixed values of independent variables, the dependent variable is normally distributed
#assumptions 2: Independence
#assumptions 3: linearity
#assumption 4: homoscedastic
#this file is in wksp-1 on github
#Potential Problems
#Non-linearity of the outcome - predictor relationships
#Heteroscedasticity: Non-constant variance of error terms.
#Presence of influential values in the data that can be:
#Outliers: extreme values in the outcome (y) variable
#High-leverage points: extreme values in the predictors (x) variable

#All these assumptions and potential problems can be checked by producing some diagnostic plots visualizing the residual errors.
