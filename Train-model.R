
### Classification Model

library(caret)



pre.train <- preProcess(t_train[,-57],method="pca", thresh = .90)

pc.train <- predict(pre.train, t_train[,-57])

d_fit <- train(t_train$classe~.,method="rf", data = pc.train)

pc.t_test <- predict(pre.train,newdata = t_test)

pred_t_test <- predict(d_fit, pc.t_test, type="raw")

p<- data.frame(pred_t_test, stringsAsFactors = FALSE)
confusionMatrix(t_test$classe, p$pred_t_test)

table(t_train$classe)
table(t_test$classe)
table(p$pred_t_test)


### Using Direct Random Forest function

set.seed(1975)
d_fit <- randomForest(as.factor(classe)~., data = t_train, importance = TRUE, ntree=500)



varImpPlot(d_fit2, sort = TRUE, n.var = 15 , main = "Variable Importance Plot", pch=16, type = 1)

## d_fit <- train(as.factor(t_train$classe)~.,method="rf", preProcess="pca", data = t_train)

pred_t_test <- predict(d_fit2, t_test, type="class")
p<- data.frame(pred_t_test, stringsAsFactors = FALSE)
confusionMatrix(t_test$classe, p$pred_t_test)



pred_t_train <- predict(d_fit2, t_train, type="class")
p_train<- data.frame(pred_t_train, stringsAsFactors = FALSE)

confusionMatrix(t_train$classe, p_train$pred_t_train)
