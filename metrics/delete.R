#' Delete a given metric from KairosDB database using REST API through httr package.
#' 
#' Please, check out the documentation on the KairosDB website:
#'   http://kairosdb.github.io/docs/build/html/restapi/DeleteMetric.html
#'   
#' @author Fernando Paladini <fnpaladini@gmail.com>

library(httr)

#' VERIFICAR DEPOIS

kairosdb_server <- 'http://localhost:8080'
metric_to_be_deleted <- 'test_gzip'

response <- DELETE(paste(kairosdb_server, '/api/v1/metric/', metric_to_be_deleted))
print(paste("Status code (204 = Okay): ", response$status_code))
