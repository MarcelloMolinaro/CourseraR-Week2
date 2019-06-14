getfilepollutant <- function(directory, pollutant) {
        workingfile <- read.csv(paste(directory, "/001.csv"))
        workingfile[[pollutant]]
}