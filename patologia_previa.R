# transformação da tabela de patologia_previa
# colunas - patologia 
# resultados 0 e 1
library(xlsx)

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

write.xlsx(pp,paste0(do,"patologia_previa.xlsx"))

#### por classe de patologia

patologia_regex$classe[as.numeric(patologia_previa$n_hits)] -> por_classe

pp_classe <- patologia_previa
pp_classe$classe <- patologia_regex$classe[as.numeric(patologia_previa$n_hits)]
pp_classe$conceito <- NULL
pp_classe$n_hits <- NULL
pp_classe$sim <- 1
pp_classe$hits <- NULL

pp_classe <- reshape(pp_classe,direction = "wide",idvar = "id", timevar = "classe")
pp_classe$sim. <- NULL
pp_classe$sim.NA <- NULL

names(pp_classe)
a <- str_extract(names(pp_classe),"\\..*") 
a <- str_replace(a,"\\.","" )
a[1]  <- "id"
names(pp_classe) <- a

pp_classe[is.na(pp_classe)] <- 0

write.xlsx(pp_classe,paste0(do,"patologia_previa_classes.xlsx"))
