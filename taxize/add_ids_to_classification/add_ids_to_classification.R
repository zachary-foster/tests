library(taxize)


query <- "homo"
input <- list(ncbi = get_uid(query),
              itis = get_tsn(query),
              eol = get_eolid(query),
              col = get_colid(query),
              tropicos = get_tpsid(query),
              gbif = get_gbifid(query),
              nbn = get_nbnid(query))


with_ids <- lapply(input, classification, return_id = TRUE)
