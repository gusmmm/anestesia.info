# cria tabelas de colunas complexas

source("iniciar.R")
source(paste0(dc,"fun_regex.R"))

### patologia_previa ###
# cria a tabela patologia_previa
source(paste0(dc,"cria_tabela_patologia_previa.R"))
# cria a tabela patologia_regex
source(paste0(dc,"carrega_regex_patologia.R"))
# cria a coluna hits com o conceito final usando a expressao regular
hits_patologia <- f_cria_coluna_hits(patologia_regex$conceito,patologia_regex$exp_reg,patologia_previa$conceito)

# tipo_anestesia
source(paste0(dc,"cria_tabela_tipo_anestesia.R"))
# ALR
source(paste0(dc,"cria_tabela_anestesia_locorregional.R"))

# grava o ambiente global gerado
save.image(file=paste0(do,"tudo.RData"))
