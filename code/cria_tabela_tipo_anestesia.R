# faz a tabela tipo_anestesia

source(paste0(dc,"fun_cria_tabela_colunas_complexas.R"))
tipo_anestesia <- f_tab_id_conceito(fic_dados = fd,coluna = "Tipo de Anestesia")

# grava o objecto patologia_previa no directorio dados - fd.Rdata
save(tipo_anestesia,file = paste0(do,"tipo_anestesia.Rdata"))
