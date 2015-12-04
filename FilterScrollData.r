for(i in 1:50){
  directory <-paste("C:/R/own/test-",i,".csv", sep="")
  data <-read.csv(directory,header=F,sep=",")
  #print(data)

  filtered_data <- data[!is.na(data$V9),]
  filtered_rownum <- row.names(filtered_data)

  pivot = as.numeric(filtered_rownum[40])
  data_40scroll <- data[1:pivot,]
  write.table(data_40scroll, paste("./data/test_filtered-",i, ".csv", sep=""), quote=F, col.names=F, append=T)
}

###################################################
#このコードを実行すると

#Error in 1:pivot : NA/NaN argument
#In addition: Warning message:
#In is.na(data$V9) : is.na() applied to non-(list or vector) of type 'NULL'

#とエラーが出ます。

#例外処理try　catchをしたほうがいいのでしょうか？
