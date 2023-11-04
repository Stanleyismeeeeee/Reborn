# my economic grades 

myEconomicGrades <- c(100,99)

my_economic_grades <- c(100,99)

# import json file ----

flights <- jsonlite::fromJSON("data/international_flights.json")

## data information ----
data1 <- list(
  file = "data/international_flights.json",
  meta = list(
    name = "國際航空定期時刻表",
    source_link = "https://data.gov.tw/dataset/161167")
)

# 
# data1$file
# data1$meta$name 
# data1$meta$source_link

data1 <- list(
  file = "data/international_flights.json",
  meta = list(
    name = "國際航空定期時刻表",
    source_link = "https://data.gov.tw/dataset/161167")
)


#flights$data[[1]] # Give me the first data's information 

flights <- list(
  data = list(data1) # vector of many data 
)

# data1$filepath
# data1$title 
# data1$source_link
# 
# data1 <- list(
#   filepath = ,
#   title = , 
#   source_link = 
# )
#
#saveRDS(something, ...)

# import json ----

filepath = flights$data[[1]]$file
flightsData <- jsonlite::fromJSON(filepath)

flights$data[[1]]$data_frame <- flightsData

flights$data[[1]]$data_frame

# type and class ----

typeof(flightsData)
class(flightsData)

flightsData["3", "ScheduleStartDate"]
flightsData[3, 2]

flightsData[c(2,4), 
            c("AirlineID", "ScheduleEndDate", "FlightNumber")]

flightsData[c(2,4), c(1,3,4)]

# obo ----
person1 <- list(
  name = "John",
  age = 30,
  married = TRUE
)
person2 <- list(
  name = "Mary",
  age = 25,
  married = FALSE
)
person3 <- list(
  name = "Tom",
  age = 35,
  married = TRUE
)

# observation by observation stacking
data_obo <- list(person1, person2, person3)

# feature by feature ----
names = c("John", "Mary", "Tom")
ages = c(30, 25, 35)
isMarried = c(TRUE, FALSE, TRUE)

data_fbf <- data.frame(
  name = names,
  age = ages,
  married = isMarried 
)

class(data_obo)
class(data_fbf)
data_fbf[1, c(1,3)]

data_fbf_list <- list(
  name = names,
  age = ages,
  married = isMarried 
)
class(data_fbf_list)
data_fbf_list[1, c(1,3)]

saveRDS(flights, file="data/flights.rds")
