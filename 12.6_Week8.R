flights = readRDS("data/flights.rds")

data2 <- list(
  meta = list(
    name="航空公司統一代碼",
    source_link ="https://data.gov.tw/dataset/8088"
  ),
  file = "data/airlines.json"
)

flights$data[[2]] <- data2

airlines <-
  jsonlite::fromJSON(
    flights$data[[2]][["file"]]
  )

flights$data[[2]][["data_frame"]] <- airlines

#Merge data 

flightsData <- flights$data[[1]]$data_frame

