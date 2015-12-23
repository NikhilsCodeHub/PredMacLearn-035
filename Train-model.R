
### Classification Model

library(caret)

fit<- train(classe~., method="rpart", data = pml_train)
