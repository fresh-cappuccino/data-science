#If you don't have this package yet, you can quickly 
#and easily do so by typing the following line of code:

#install.packages("<package name>")

#Remember the nerd tip: if you're not sure if you have this package, 
#you can run the following command to find out!

#any(grepl("<name of your package>", installed.packages()))


# install packages `ggvis`
install.packages("ggvis")

# Read in `iris` data
iris <- read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"), 
                 header = FALSE) 

# Print first lines
head(iris)

# Add column names
names(iris) <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species")

# Check the result, Return first 5 lines of `iris`
head(iris)

# Return structure of `iris`
str(iris)

# Load in `ggvis`
library(ggvis)

# Iris scatter plot
iris %>% ggvis(~Sepal.Length, ~Sepal.Width, fill = ~Species) %>% layer_points()

iris %>% ggvis(~Petal.Length, ~Petal.Width, fill = ~Species) %>% layer_points()

# Overall correlation `Petal.Length` and `Petal.Width`
cor(iris$Petal.Length, iris$Petal.Width)

# Return values of `iris` levels 
x=levels(iris$Species)
x
# Print Setosa correlation matrix
print(x[1])
cor(iris[iris$Species==x[1],1:4])

# Print Versicolor correlation matrix
print(x[2])
cor(iris[iris$Species==x[2],1:4])

# Print Virginica correlation matrix
print(x[3])
cor(iris[iris$Species==x[3],1:4])

# Return first 5 lines of `iris`
head(iris)

# Return structure of `iris`
str(iris)

# Division of `Species`
table(iris$Species) 

# Percentual division of `Species` em porcentagem
round(prop.table(table(iris$Species)) * 100, digits = 1)

# Summary overview of `iris`
summary(iris) 

# Refined summary overview
summary(iris[c("Petal.Width", "Sepal.Width")])

#incluir library class
library(class)

#-------------------------------------------------------

# Build your own `normalize()` function
normalize <- function(x) {
  num <- x - min(x)
  denom <- max(x) - min(x)
  return (num/denom)
}

# Normalize the `iris` data
iris_norm <- as.data.frame(lapply(iris[1:4], normalize))

head(iris_norm)
# Summarize `iris_norm`
summary(iris_norm)

#You use the sample() function to take a sample with a size 
#that is set as the number of rows of the Iris data set, or 150. 
#You sample with replacement: you choose from a vector of 2 elements 
#and assign either 1 or 2 to the 150 rows of the Iris data set. 
#The assignment of the elements is subject to probability 
#weights of 0.67 and 0.33.
ind <- sample(2, nrow(iris), replace=TRUE, prob=c(0.67, 0.33))

# Compose training set
iris.training <- iris[ind==1, 1:4]

# Inspect training set
head(iris.training)

# Compose test set
iris.test <- iris[ind==2, 1:4]

# Inspect test set
head(iris.test)

# Compose `iris` training labels
iris.trainLabels <- iris[ind==1,5]

# Inspect result
print(iris.trainLabels)

# Compose `iris` test labels
iris.testLabels <- iris[ind==2, 5]

# Inspect result
print(iris.testLabels)

# Build the model
iris_pred <- knn(train = iris.training, test = iris.test, cl = iris.trainLabels, k=3)

# Inspect `iris_pred`
iris_pred

#----------------------------result----------------------------------------------


# Put `iris.testLabels` in a data frame
irisTestLabels <- data.frame(iris.testLabels)

# Merge `iris_pred` and `iris.testLabels` 
merge <- data.frame(iris_pred, iris.testLabels)

# Specify column names for `merge`
names(merge) <- c("Predicted Species", "Observed Species")

# Inspect `merge` 
merge


#This is already some indication of your model's performance, 
#but you might want to go even deeper into your analysis
install.packages("gmodels")
library(gmodels)

#This type of table is often used to understand the relationship 
#between two variables. In this case, you want to understand how 
#the classes of your test data, stored in iris.testLabels relate
#to your model that is stored in iris_pred

CrossTable(x = iris.testLabels, y = iris_pred, prop.chisq=FALSE)

#--------------------------------------------------------------------
#Pacote que precisara instalar. Um pacote R eh uma colecao de funcoes.
#usaremos o pacote tidyverse. Instalando: na linha de comando digitar:

install.packages("tidyverse")

#Uma vez instalado voc?? poder?? carreg??-lo com a func??o:

library(tidyverse)
install.packages("caret")
library(caret)

# Create index to split based on labels  
index <- createDataPartition(iris$Species, p=0.75, list=FALSE)

# Subset training set with index
iris.training <- iris[index,]

# Subset test set with index
iris.test <- iris[-index,]

# Overview of algos supported by caret
names(getModelInfo())

#____________________________________________________________________________
install.packages("e1071")
library("e1071")

#__________________________model_knn__________________________________________
# Train a model
model_knn <- train(iris.training[, 1:4], iris.training[, 5], method='knn')
model_knn

#model_cart <- train(iris.training[, 1:4], iris.training[, 5], method='rpart2')
# Predict the labels of the test set
predictions<-predict.train(object=model_knn,iris.test[,1:4], type="raw")
predictions

# Evaluate the predictions
table(predictions)

# Confusion matrix 
confusionMatrix(predictions,iris.test[,5])

#__________________________model_knn with preprocess center scale__________________________________________
# Train the model with preprocessing
model_knn <- train(iris.training[, 1:4], iris.training[, 5], method='knn', preProcess=c("center", "scale"))
model_knn

# Predict values
predictions<-predict.train(object=model_knn,iris.test[,1:4], type="raw")
predictions

# Confusion matrix
confusionMatrix(predictions,iris.test[,5])

#_________________________model_cart______________________________________________
model_cart <- train(iris.training[, 1:4], iris.training[, 5], method='rpart2')
model_cart
predictions<-predict.train(object=model_cart,iris.test[,1:4], type="raw")
predictions
table(predictions)
confusionMatrix(predictions,iris.test[,5])

