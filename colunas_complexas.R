# cria tabelas de colunas complexas

source("iniciar.R")
source(paste0(dc,"fun_cria_tabela_colunas_complexas.R"))
source(paste0(dc,"fun_regex.R"))
library(xlsx)

### patologia_previa ###
# cria a tabela patologia_previa
patologia_previa <- f_tab_id_conceito(fic_dados = fd,coluna = "Patologia prévia")
# cria a tabela patologia_regex
source(paste0(dc,"carrega_regex_patologia.R"))
# cria a coluna hits com o conceito final usando a expressao regular
patologia_previa$hits <- f_cria_coluna_hits(patologia_regex$conceito,patologia_regex$exp_reg,patologia_previa$conceito)
patologia_previa$n_hits <- f_cria_coluna_hits(patologia_regex$idx,patologia_regex$exp_reg,patologia_previa$conceito)


### tipo_anestesia ###
tipo_anestesia <- f_tab_id_conceito(fic_dados = fd,coluna = "Tipo de Anestesia")
# cria a tabela tipo_anestesia_regex
source(paste0(dc,"carrega_regex_tipo_anestesia.R"))
# cria a coluna hits com o conceito final usando a expressao regular
tipo_anestesia$hits <- f_cria_coluna_hits(tipo_anestesia_regex$conceito,tipo_anestesia_regex$exp_reg,tipo_anestesia$conceito)
tipo_anestesia$n_hits <- f_cria_coluna_hits(tipo_anestesia_regex$idx,tipo_anestesia_regex$exp_reg,tipo_anestesia$conceito)


### ALR ###
ALR <- f_tab_id_conceito(fic_dados = fd,coluna = "Bloqueio de Nervos Periféricos/Plexo")
# cria a ALR_regex
source(paste0(dc,"carrega_regex_ALR.R"))
# cria a coluna hits com o conceito final usando a expressao regular
ALR$hits <- f_cria_coluna_hits(ALR_regex$conceito,ALR_regex$exp_reg,ALR$conceito)
ALR$n_hits <- f_cria_coluna_hits(ALR_regex$idx,ALR_regex$exp_reg,ALR$conceito)

### cirurgia ###
cirurgia <- f_tab_id_conceito(fic_dados = fd,coluna = "Cirurgia")
source(paste0(dc,"carrega_regex_cirurgia.R"))
cirurgia$hits <- f_cria_coluna_hits(cirurgia_regex$conceito,cirurgia_regex$exp_reg,cirurgia$conceito)
cirurgia$n_hits <- f_cria_coluna_hits(cirurgia_regex$idx,cirurgia_regex$exp_reg,cirurgia$conceito)
cirurgia$especialidade <- fd$Especialidade[cirurgia$id]
# se a celula na coluna hits for em braco, copia o que esta na coluna conceito
cirurgia$conceito[cirurgia$hits==""] -> cirurgia$hits[cirurgia$hits==""]
cirurgia$classe <- cirurgia_regex$classe[as.numeric(cirurgia$n_hits)]

# grava as tabelas
save(patologia_previa,file = paste0(do,"patologia_previa.Rdata"))
write.xlsx(patologia_previa,paste0(do,"q_patologia_previa.xlsx"),row.names = F)
save(tipo_anestesia,file = paste0(do,"tipo_anestesia.Rdata"))
write.xlsx(tipo_anestesia,paste0(do,"q_tipo_anestesia.xlsx"),row.names = F)
save(ALR,file = paste0(do,"ALR.Rdata"))
write.xlsx(ALR,paste0(do,"q_ALR.xlsx"),row.names = F)
save(cirurgia,file = paste0(do,"cirurgia.Rdata"))
write.xlsx(cirurgia,paste0(do,"q_cirurgia.xlsx"),row.names = F)

# grava o ambiente global gerado
save.image(file=paste0(do,"tudo.RData"))

