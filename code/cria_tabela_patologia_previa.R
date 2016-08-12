# faz a tabela patologia_previa

source(paste0(dc,"fun_cria_tabela_colunas_complexas.R"))
patologia_previa <- f_tab_id_conceito(fic_dados = fd,coluna = "Patologia prévia")

# grava o objecto patologia_previa no directorio dados - fd.Rdata
save(fd,file = paste0(do,"patologia_previa.Rdata"))
