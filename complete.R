complete <- function(directory, id = 1:332) {
        names <- c("ID", "nobs")
        my_frame <- data.frame(0, 0)
        colnames(my_frame) <-(names)
        for(i in id) {
                #count complete cases
                if(i < 10) {
                        x <- paste("00", i, sep = "")
                } else if(i < 100) {
                        x <- paste("0", i, sep = "")
                } else
                        x <- paste(i)
                my_frame <- rbind(c(i, getfileAll(directory, x)), my_frame)
        }
        my_frame
}

getfileAll <- function(directory, number) {
        workingfile <- read.csv(paste(directory, "/", number,".csv", sep = ""))
        nitrate <- workingfile["nitrate"]
        sulfate <- workingfile["sulfate"]
        completerows <- complete.cases(nitrate, sulfate)
        sum(completerows)
}

# what's my name???