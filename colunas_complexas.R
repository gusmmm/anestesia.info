# cria tabelas de colunas complexas

source("iniciar.R")

# patologia_previa
source(paste0(dc,"cria_tabela_patologia_previa.R"))
# tipo_anestesia
source(paste0(dc,"cria_tabela_tipo_anestesia.R"))
# ALR
source(paste0(dc,"cria_tabela_anestesia_locorregional.R"))

# grava o ambiente global gerado
save.image(file=paste0(do,"tudo.RData"))
