data <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 28)
)

path <-"/tmp"

format <-".csv"
datetime <- format(Sys.time(),format="%Y%m%d_%H%M%S")
csvfilename <- paste("MockData_", datetime, ".csv", sep = "")
file_path <- file.path(path, csvfilename)

write.csv(data, file = file_path, row.names = FALSE)

return_datetime <- function() {
  return(datetime)
}
return_datetime()
