#Encontrar asociaciones entre palabras
#Cargar la librería
library(reshape2)

#Definir la palabra sobre la que se quieran encontrar las asociaciones
WordKey <- "palabra-clave"
#Definir qué nivel de correlación mínimo queremos
LevelCorrelation <- 0.03

#Buscar correlaciones
WordRelation <- findAssocs(mydata.dtm, WordKey, LevelCorrelation)
WordRelation <- melt(WordRelation)
WordRelation$Var2 <- NULL
names(WordRelation) <- c('Keyword','Correlación')
WordRelation

#exportar los resultados a .csv
write.csv(WordRelation, file='./asociaciones-palabra-clave.csv', row.names=T)
