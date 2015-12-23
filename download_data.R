
# train Data : https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv

# test Data : https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv

url_train <- "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"

url_test <- "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv"

download.file(url = url_train, destfile = "pml-training.csv")


download.file(url = url_test, destfile = "pml-testing.csv")


