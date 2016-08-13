# faz a tabela tipo_anestesia

source(paste0(dc,"fun_cria_tabela_colunas_complexas.R"))
ALR <- f_tab_id_conceito(fic_dados = fd,coluna = "Bloqueio de Nervos Periféricos/Plexo")

# grava o objecto patologia_previa no directorio dados - fd.Rdata
save(ALR,file = paste0(do,"ALR.Rdata"))

