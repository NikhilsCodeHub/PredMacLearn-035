####  PRediction Over Test Data

pred_pml_test <- predict(d_fit2, pml_test, type="class")

## Output
## 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 
## B  A  B  A  A  E  D  B  A  A  B  C  B  A  E  E  A  B  B  B 

pml_write_files = function(x){
  n = length(x)
  for(i in 1:n){
    filename = paste0("problem_id_",i,".txt")
    write.table(x[i],file=filename,quote=FALSE,row.names=FALSE,col.names=FALSE)
  }
}
