# ficheiros primarios para iniciar o projecto

# obtem o ficheiro de dados e grava-o no objecto fd
# 2 opçoes: gravar o ficherio no directorio data ou usar o googlesheets para tirar directamente da net
# opçao googlesheet -"gg"
# opçao data - "data"
opcao <- "gg"

if(opcao == "gg"){
  # opçao googlesheet -gg
  # usa o pacote googlesheets
  # primeiro partilhar o google sheet e copiar o shareable link
  # iniciar com gs_ls()
  link <- "https://docs.google.com/spreadsheets/d/1BW1px39oGAuH9hJBeYBJxOwwmlnIKpV-vkueIBkZRk0/edit?usp=sharing"
  gap <- gs_url(link)
  # grava o objecto chamado resultados
  gap %>% gs_read(ws=1) -> fd
} else if(opcao == "data"){
  # ficheiro com os dados originais - fd
  fd <- paste0(dd,list.files(dd))[1]
  fd <- read_excel(fd)
}

source(paste0(dp,"/code/prepara_fd.R"))

# grava o objecto fd no directorio dados - fd.Rdata
save(fd,file = paste0(do,"fd.Rdata"))