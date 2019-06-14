#Gets the file, returns pollutant vector
getfilepollutant <- function(directory, pollutant, number) {
        workingfile <- read.csv(paste(directory, "/", number,".csv", sep = ""))
        workingfile[[pollutant]]
}

#gets the mean of non-NA values of a vector
findvectmean <- function(vect) {
        good <- !is.na(vect)
        mean(vect[good])
}

#iterates over id list
pollutantmean <- function(directory, pollutant,id= 1:332) {
        values <- c()
        for(i in id){           #could convert this to a function    
                if(i < 10) {
                        x <- paste("00", i, sep = "")
                } else if(i < 100) {
                        x <- paste("0", i, sep = "")
                } else
                        x <- paste(i)
                
                values <- append(values, getfilepollutant(directory, pollutant, x))
        }
        findvectmean(values)
}