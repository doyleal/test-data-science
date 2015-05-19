pollutantmean <- function(directory, pollutant, id = 1:332) {
        files_full <- list.files("specdata", full.names=TRUE)
        dat <- data.frame()
        for (i in id) {dat <- rbind(dat, read.csv(files_full[i]))}
        dat_subset <- dat[, pollutant]
        mean(dat_subset, na.rm=TRUE)}