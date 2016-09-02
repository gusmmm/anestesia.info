# transformação da tabela de patologia_previa
# colunas - patologia 
# resultados 0 e 1

pp <- patologia_previa
pp$conceito <- NULL
pp$n_hits <- NULL
pp$sim <- 1
pp <- reshape(pp,direction = "wide",idvar = "id", timevar = "hits")
pp$sim. <- NULL
pp$sim.NA <- NULL

names(pp)
a <- str_extract(names(pp),"\\..*") 
a <- str_replace(a,"\\.","" )
a[1]  <- "id"
names(pp) <- a

pp[is.na(pp)] <- 0
