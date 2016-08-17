# vai buscar o ficheiro google sheets com a regex do tipo de anestesia
# usa o package googlesheets

link <- "https://docs.google.com/spreadsheets/d/1aRGDH64Ima4-d2Xf_vxXicESbMpTtCswJ5fkf3titLI/edit?usp=sharing"
gap <- gs_url(link)
# grava o objecto chamado tipo_anestesia_regex
gap %>% gs_read(ws=1) -> tipo_anestesia_regex
rm(gap)
rm(link)


