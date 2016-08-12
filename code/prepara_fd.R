# pega no ficheiro de dados fd
# prepara-o para ser analisado posteriormente

# cria uma coluna com numero de identificaçao
# id
id <- 1:(NROW(fd))
fd$id <- id
rm(id)
