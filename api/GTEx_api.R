#* @apiTitle GTEx database
#* @apiDescription This api returns information of the median expression of the GTEx database from the input genes


#* Testing: print of the input
#* @param msg Message we want to be repeated
#* @get /echo

function(msg="") {
  list(msg = paste0("The message is: ", msg))
}

#* Returns GTEx database information of the provided genes
#* @param genes string with all the genes separated by commas
#* @get /GTEx

function(genes="") {
  load("C:/Users/asier.ortega/OneDrive - UPNA/NAVARRABIOMED/proyectos/GeneSetCluster/development/api/data/GTEx_ranked.rda")

  genes_splitted <- unlist(strsplit(genes, ","))
  result <- GTEx_ranked[genes_splitted,]
  return(result)
}

#* Returns GTEx database ranked per tissue
#* @get /GTExdatabase

function() {
  load("C:/Users/asier.ortega/OneDrive - UPNA/NAVARRABIOMED/proyectos/GeneSetCluster/development/api/data/localDatabase.RData")
  return(localDatabase)
}

#* Returns GTEx database ranked per tissue
#* @get /GTExdatabaseNames

function() {
  load("C:/Users/asier.ortega/OneDrive - UPNA/NAVARRABIOMED/proyectos/GeneSetCluster/development/api/data/localDatabase.RData")
  localDatabaseNames = lapply(localDatabase, function(x) names(x))
  return(localDatabaseNames)
}

