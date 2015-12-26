### Process Train Data


## identify NA columns
na.cols<- sapply(pml_train[,1:160], anyNA)
summary(na.cols)
#Filter NA columns
dim(pml_train[,!na.cols])
d_train<-pml_train[,!na.cols]

## Filter Out unwanted columns
# Exlude columns user_name raw_timestamp_part_1 raw_timestamp_part_2 cvtd_timestamp new_window num_window
d_train <- d_train[,-c(1:4)]

# Split pml_train into Train and Test Set 

d<- createDataPartition(d_train$classe,p=.60, list=FALSE )

t_train <- d_train[d,]
t_test <- d_train[-d,]



