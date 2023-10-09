library(plumber)
r <- plumb("GTEX_api.R")
r$run(port=8001)
