#"C:\Users\aruna\Desktop\Assignments\bank-full.csv"
#a. Create a visual for representing missing values in the dataset.
#b. Show a distribution of clients based on a job.
#c. Check whether is there any relation between Job and Marital
#Status?
  #d. Check whether is there any association between Job and Education?
library(readr)
samplebank<-read_delim("C:/Users/aruna/Desktop/Assignments/bank-full.csv",";", escape_double = FALSE, trim_ws = TRUE)
str(samplebank)
#a. Create a visual for representing missing values in the dataset.
if(length(which(is.na(samplebank$age)==TRUE)>0))
  { print("Missing Value found in the specified column")
  } 
else
  print("All okay: No Missing Value found in the specified column")
if(length(which(is.na(samplebank$campaign)==TRUE)>0))
  {
  print("Missing Value found in the specified column")
  }
else 
  print("All okay: No Missing Value found in the specified column")
head(samplebank)
str(samplebank)
summary(samplebank)
is.na(samplebank) 
#b. Show a distribution of clients based on a job.
barplot(table(samplebank$job),col="red",main="JOB")
barplot(table(samplebank$marital),col="green",main="Marital")
barplot(table(samplebank$education),col="red",main="Education")
par(oma=c(2,0,0,0))
barplot(table(samplebank$job),ylab = "Frequency", main = "samplebank$job", border="black", col="grey",las=2)
#Histogram for job,marital and education - three categorical variables
par(oma=c(2,0,0,0)) #so labels are not cut off
barplot(table(samplebank$job),ylab = "Frequency", main = "samplebank$job", border="yellow", col="violet",las=2)

par(oma=c(2,0,0,0)) #so labels are not cut off
barplot(table(samplebank$marital),ylab = "Frequency", main = "samplebank$marital", border="green", col="yellow",las=2)

par(oma=c(2,0,0,0)) #so labels are not cut off
barplot(table(samplebank$education),ylab = "Frequency", main = "samplebank$education", border="red", col="blue",las=2)
#c. Check whether is there any relation between Job and Marital Status?
#As both are a categorical variable this can be checked with chisq.test with(samplebank, chisq.test( job, marital))
with(samplebank,chisq.test(job,marital))
with(samplebank,table(job,marital))
with(samplebank, prop.table(table( job,education)))
##<2.2e-16 means 0.00000000000000022. It is (very much) less than 0.05
#d. Check whether is there any association between Job and Education? As both are a categorical variable this can be checked with chisq.test
with(samplebank, chisq.test( job,education))
with(samplebank, table( job,education))
#or
with(samplebank, prop.table(table( job,education)))
#<2.2e-16 means 0.00000000000000022. It is (very much) less than 0.05 R Markdown This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see http://rmarkdown.rstudio.com. When you click the Knit button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this: 
summary(cars)
