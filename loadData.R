

pml_train <- read.csv("pml-training.csv", stringsAsFactors = FALSE, na.strings = c("", " "))




pml_test <- read.csv("pml-testing.csv", stringsAsFactors = FALSE)


pml_train[,c(1:159)]<- sapply(pml_train[,c(1:159)],as.numeric)

pml_test[,c(1:159)]<- sapply(pml_test[,c(1:159)],as.numeric)



