# Read progress file ----

flights = readRDS("data/flights.rds") # ctrl + enter 

# project root / data / flights.rds 

str(flights)

# retrieve data frame for analysis
flightsData <- flights$data[[1]]$data_frame

flightsData <- flights[["data"]][[1]][["data_frame"]]
# for list, $name is the same as [["name"]]

## data frame vs list ----

grades <- data.frame(
  student = c("Alice", "Bob", "Charlie", "David", "Eve"),
  midterm = c(95, 80, 70, 60, 75),
  final = c(90, 85, 75, 95, 80)
)
grades_list <- list(
  student = c("Alice", "Bob", "Charlie", "David", "Eve"),
  midterm = c(95, 80, 70, 60, 75),
  final = c(90, 85, 75, 95, 80)
)

grades_list$student
grades_list[["student"]]

grades$student
grades[["student"]]

grades[, "student"] # retrieve student column
grades[, c("student", "midterm")] # retrieve student and midterm columns
grades[c(1,3), "student"] # retrieve student column for rows 1 and 3
grades[c(1,3), c("student", "midterm")] # retrieve student and midterm columns for rows 1 and 3

## glimpse our data 

dplyr::glimpse(flightsData)

flightsData[c(358,408),c("AirlineID","ArrivalTime")]

## Check element names
name(flightsData)

## class of elements 

class(flightsData$AirlineID)
class(flightsData$ScheduleStartDate)

head(flightsData$AirlineID)
head(flightsData$ScheduleStartDate)

vec <- c("A", "B", "C")
typeof(vec)
class(vec)

bloodTypes <- c("AB", "AB", "A", "B", "A", "A", "B", "O", "O", "AB")


householdIncomes <- c(
  "middle income", "high income", "middle income", "low income",
  "middle income", "high income", "high income", "low income",
  "high income", "middle income", "high income", "middle income"
)

class(householdIncomes)

householdIncomes[[1]]
householdIncomes[[1]] < "high income"
householdIncomes[[1]] < "low income"

## compare strings ----

"high income" < "middle income"

"h" < "m"

# Parsing ----
## teach your computer to understand your value more accurately

householdIncomes # character

fct_householdIncome <- factor(householdIncomes)

ord_fct_householdIncome <- ordered(householdIncomes, levels = c("low income", "middle income", "high income"))

class(fct_householdIncome)

class(ord_fct_householdIncome)

householdIncomes[[1]]
householdIncomes[[1]] < "high income"
ord_fct_householdIncome[[1]]
ord_fct_householdIncome[[1]] < "high income"

# parse airlineID

class(flightsData$AirlineID)

factor(flightsData$AirlineID)

class(flightsData$AirlineID)

flightsData$AirlineID <- factor(flightsData$AirlineID)
class(flightsData$AirlineID)


flights$data[[1]]$data_frame <- flightsData

saveRDS(flights, "data/flights.rds")
