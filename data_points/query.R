#' Delete a given metric from KairosDB database using REST API through httr package.
#' 
#' Please, check out the documentation on the KairosDB website:
#'   http://kairosdb.github.io/docs/build/html/restapi/DeleteMetric.html
#'   
#' @author Fernando Paladini <fnpaladini@gmail.com>

library(httr)
library(jsonlite)

kairosdb_server <- 'http://localhost:8080'

query <- '{ 
  "start_relative": {
    "value": "4",
    "unit": "years"
  },
  "metrics": [
    {
      "name": "test",
      "limit": 1000
    }
  ]
}'

url <- paste(kairosdb_server, '/api/v1/datapoints/query')
response <- POST(url, body = query, encode = 'json')

print(paste("Query status code: ", response$status_code))
print(paste("JSON response: \n", content(response, type = 'application/json')))
