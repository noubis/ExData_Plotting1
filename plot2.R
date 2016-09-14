#' plot2.R                               FIX PLOT2 FOR PLOT 4
#' 
#' description
#' Generate the second plot required for Project 1. The plot is a line plot
#' of global active power in kilowatts.
#' 
#' @docType package
#' @name plot2
#' 
#' NB: This documentation is in roxygen2 format, but won't format as is.

# Load common declarations and functions
if (file.exists("common.R")) {
source("common.R") # assumes the working directory contains this file. 
} else {
stop("working directory does not contain the common.R script.")
}

# Read in the data.
dta <- readProjectData()

# Prepare for plotting
prepareForPlots()

# Open PNG file.
png(plotFilePath("plot2.png"),
width=480,
height=480)

# Generate the line plot for global active power
with(dta, 
plot(DateTime, Global_active_power, type="l",
xlab="", ylab="Global Active Power (kilowatts)"))

# Close PNG file.
dev.off()





