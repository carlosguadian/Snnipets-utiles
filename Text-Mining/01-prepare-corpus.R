#El primer paso es preparar el corpus para su análisis
#cargamos la librería
library(tm)
#En el ejemplo analizamos la columna "Description" del archivo "tweets"
mydata.corpus <- Corpus(VectorSource(tweets$Description))

#Homogeneizamos el texto haciendo cada letra minúscula
mydata.corpus <- tm_map(mydata.corpus, content_transformer(tolower))

#Quitamos la puntuación 
mydata.corpus <- tm_map(mydata.corpus, removePunctuation)

#Aplicamos stopwords genéricas y definidas por nosotros
#en el ejemplo aplicamos stopwords genéricas para Español y las palabras
#"maipu" y "leer"
my_stopwords <- c(stopwords('spanish'),'maipú','leer')
mydata.corpus <- tm_map(mydata.corpus, removeWords, my_stopwords)

#Construímos la matriz de términos del documento
mydata.dtm <- TermDocumentMatrix(mydata.corpus)

#Inspeccionamos la matriz de términos del documento
mydata.dtm

#Inspeccionamos las palabras más frecuentes
#podemos variar la frecuencia en lowfreq
findFreqTerms(mydata.dtm, lowfreq=10)