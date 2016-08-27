# faz graficos exploratios

source("iniciar.R")
library(ggplot2)
library(tibble)
load(paste0(do,"tudo.RData"))

# patologia por sexo
sapply(patologia_previa$hits, function(x) str_detect(patologia_regex$conceito, x))-> a
apply(a ,MARGIN = 2, function(x) patologia_regex$classe[x]) -> b
c <- sapply(b,function(x) identical(x, character(0)))
unname(c) %>% unlist(c) -> c
unname(b) -> b
b[c] <- "missing"
unlist(b) -> b

qplot(x = b, color = fd$Género[patologia_previa$id],xlab = "Grupo de patologia",ylab = "numero")
