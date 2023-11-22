
flights <- readRDS("data/flights.rds")
str(flights)

flightsData <- flights$data[[1]]$data_frame
# Or
flightsData <- flights[["data"]][[1]][["data_frame"]]

# look at your data 
install.packages("dplyr")
dplyr::glimpse(flights$data[[1]]$data_frame)

# ERROR package dplyr not found 

head(flightsData)

class(flightsData$AirlineID)

"1" +3
"2023-01-14" + 1

householdIncomes <- c(
  "middle income", "high income", "middle income", "low income",
  "middle income", "high income", "high income", "low income",
  "high income", "middle income", "high income", "middle income"
)

class(householdIncomes)

householdIncomes[[1]] < "high incomes"

flightsData$AirlineID <- factor(
  flightsData$AirlineID
)

class(flightsData$AirlineID)
head(flightsData$AirlineID)


fct_householdIncome <- factor(householdIncomes)
ord_fct_householdIncome <- ordered(householdIncomes, levels = c("low income", "middle income", "high income"))

fct_householdIncome[[1]] < "high income"
levels(fct_householdIncome)


 ord_fct_householdIncome[[1]] < "high income"
levels(ord_fct_householdIncome)

"middle income" < "high income"

saveRDS(flights, file="data/week7/flights.rds")
