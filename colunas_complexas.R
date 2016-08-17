# cria tabelas de colunas complexas

source("iniciar.R")
source(paste0(dc,"fun_cria_tabela_colunas_complexas.R"))
source(paste0(dc,"fun_regex.R"))

### patologia_previa ###
# cria a tabela patologia_previa
patologia_previa <- f_tab_id_conceito(fic_dados = fd,coluna = "Patologia prévia")
# cria a tabela patologia_regex
source(paste0(dc,"carrega_regex_patologia.R"))
# cria a coluna hits com o conceito final usando a expressao regular
patologia_previa$hits <- f_cria_coluna_hits(patologia_regex$conceito,patologia_regex$exp_reg,patologia_previa$conceito)


### tipo_anestesia ###
tipo_anestesia <- f_tab_id_conceito(fic_dados = fd,coluna = "Tipo de Anestesia")
# cria a tabela tipo_anestesia_regex
source(paste0(dc,"carrega_regex_tipo_anestesia.R"))
# cria a coluna hits com o conceito final usando a expressao regular
tipo_anestesia$hits <- f_cria_coluna_hits(tipo_anestesia_regex$conceito,tipo_anestesia_regex$exp_reg,tipo_anestesia$conceito)


# ALR
ALR <- f_tab_id_conceito(fic_dados = fd,coluna = "Bloqueio de Nervos Periféricos/Plexo")

# grava as tabelas
save(patologia_previa,file = paste0(do,"patologia_previa.Rdata"))
save(tipo_anestesia,file = paste0(do,"tipo_anestesia.Rdata"))
save(ALR,file = paste0(do,"ALR.Rdata"))

# grava o ambiente global gerado
save.image(file=paste0(do,"tudo.RData"))
