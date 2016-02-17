#' List metrics from KairosDB database using REST API through httr package.
#' 
#' Please, check out the documentation on the KairosDB website:
#'   http://kairosdb.github.io/docs/build/html/restapi/ListMetricNames.html
#' 
#' @author Fernando Paladini <fnpaladini@gmail.com>

library(httr)

kairosdb_server <- 'http://localhost:8080'
response <- GET(paste(kairosdb_server, '/api/v1/metricnames'))

metrics <- content(response, type = 'application/json')
print(metrics)
