# pega no ficheiro de dados fd
# prepara-o para ser analisado posteriormente

# cria uma coluna com numero de identificaçao
# id
id <- 1:(NROW(fd))
fd$id <- id
rm(id)

# remove os NA de patologia previa e subsitui-os por "nao"
fd$`Patologia prévia`[is.na(fd$`Patologia prévia`)] <- "nao"
# removes os NA da bloqueio de nervos e substitui-os por "nao"
fd$`Bloqueio de Nervos Periféricos/Plexo`[is.na(fd$`Bloqueio de Nervos Periféricos/Plexo`)] <- "nao"
# removes os NA da via aerea e substitui-os por "nao"
fd$`Via aérea`[is.na(fd$`Via aérea`)] <- "nao"
# removes os NA da tecnicas e monitorizaçao e substitui-os por "nao"
fd$`Técnicas e monitorização`[is.na(fd$`Técnicas e monitorização`)] <- "nao"
# removes os NA da acidentes e substitui-os por "nao"
fd$`Acidentes e complicações`[is.na(fd$`Acidentes e complicações`)] <- "nao"
# removes os NA da alergias e substitui-os por "nao"
fd$Alergias[is.na(fd$Alergias)] <- "nao"
