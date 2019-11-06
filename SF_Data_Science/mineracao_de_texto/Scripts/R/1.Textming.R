#Formacao Cientista de Dados - Fernando Amaral

corpus = VCorpus(DirSource("E:/Minera??o de dados/Textmining/texto", encoding = "UTF-8"),readerControl = list(reader=readPlain,language = "por"))
inspect(corpus) 
inspect(corpus[1:100])  
meta(corpus[[1]])  
inspect(corpus[[2]])  
as.character(corpus[[2]]) 
as.character(corpus[[2]])[1] 

corpus = tm_map(corpus, removeWords, stopwords("english"))
corpus = tm_map(corpus , stripWhitespace)

corpus  <- tm_map(corpus , removePunctuation)
corpus  <- tm_map(corpus , removeNumbers)

corpus = tm_map(corpus, stemDocument,language = "english")
corpus = tm_map(corpus, stemCompletion, dictionary=corpus)

library(wordcloud)
wordcloud(corpus,max.words=100,random.order=T,colors=rainbow(8),rot.per=0.5,use.r.layout=T)

freq <- TermDocumentMatrix(corpus)
matriz <- as.matrix(freq)
matriz <- sort(rowSums(matriz),decreasing=TRUE)
matriz = data.frame(word=names(matriz), freq=matriz)
head(matriz, n=100)

wordcloud(matriz,max.words=100,random.order=T,colors=rainbow(8),rot.per=0.5,use.r.layout=T)

findFreqTerms(freq,500,Inf)

removeSparseTerms(freq, 0.4)













