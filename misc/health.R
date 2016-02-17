#' Check health status of KairosDB using REST API through httr package.
#'     
#'     Please, check out the documentation on the KairosDB website:
#'         http://kairosdb.github.io/docs/build/html/restapi/Health.html
#'     
#' @author Fernando Paladini <fnpaladini@gmail.com>

library(httr)

kairosdb_server <- 'http://localhost:8080'
response <- GET(paste(kairosdb_server, '/api/v1/health/status'))

status <- content(response, type = 'application/json')
print(status)
