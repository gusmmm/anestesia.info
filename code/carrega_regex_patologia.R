# vai buscar o ficheiro google sheets com a regex da patologia
# usa o package googlesheets

link <- "https://docs.google.com/spreadsheets/d/1omeG6N9ATqxhiJbCNN2XDWqDQjwyJbiOetyjemv1jbc/edit?usp=sharing"
gap <- gs_url(link)
# grava o objecto chamado patologia_regex
gap %>% gs_read(ws=1) -> patologia_regex
patologia_regex$idx <- 1:nrow(patologia_regex)
rm(gap)
rm(link)
