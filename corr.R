corr <- function(directory, threshold = 0) {
        result_vect <- c()
        for(i in 1:332) {         #iterates through each file
                if(i < 10) {
                        x <- paste("00", i, sep = "")
                } else if(i < 100) {
                        x <- paste("0", i, sep = "")
                } else
                        x <- paste(i)
                }
                workingfile <- read.csv(paste(directory, "/", x,".csv", sep = ""))
                nitrate <- workingfile["nitrate"]
                sulfate <- workingfile["sulfate"]
                completerows <- complete.cases(nitrate, sulfate)
                if(sum(completerows) > threshold) {#checks complete cases to determine if above threshold
                        filecorr <- cor(nitrate[completerows], sulfate[completerows])
                        result_vect <- c(result_vect, filecorr)
                }
        
        result_vect
}       