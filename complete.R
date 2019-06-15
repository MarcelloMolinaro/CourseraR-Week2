complete <- function(directory, id = 1:332) {
        for(i in id) {
                #count comple cases
        }        
}

getfileAll <- function(directory, number) {
        workingfile <- read.csv(paste(directory, "/", number,".csv", sep = ""))
        nitrate <- workingfile["nitrate"]
        sulfate <- workingfile["sulfate"]
        completerows <- complete.cases(nitrate, sulfate)
        completerows
}

# what's my name???