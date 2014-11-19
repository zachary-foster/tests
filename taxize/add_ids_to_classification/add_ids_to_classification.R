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

without <- lapply(input, classification)

################### content of input ###################
# $ncbi
# [1] "9605"
# attr(,"match")
# [1] "found"
# attr(,"uri")
# [1] "http://www.ncbi.nlm.nih.gov/taxonomy/9605"
# attr(,"class")
# [1] "uid"
# 
# $itis
# [1] "180091"
# attr(,"match")
# [1] "found"
# attr(,"uri")
# [1] "http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180091"
# attr(,"class")
# [1] "tsn"
# 
# $eol
# [1] "24937760"
# attr(,"class")
# [1] "eolid"
# attr(,"uri")
# [1] "http://eol.org/pages/42268/overview"
# attr(,"provider")
# [1] "IUCN"
# 
# $col
# [1] "20003018"
# attr(,"class")
# [1] "colid"
# attr(,"uri")
# [1] "http://www.catalogueoflife.org/col/browse/tree/id/20003018"
# 
# $tropicos
# [1] "40027340"
# attr(,"class")
# [1] "tpsid"
# attr(,"uri")
# [1] "http://tropicos.org/Name/40027340"
# 
# $gbif
# [1] "5964034"
# attr(,"class")
# [1] "gbifid"
# attr(,"uri")
# [1] "http://www.gbif.org/species/5964034"
# 
# $nbn
# [1] "NHMSYS0000376769"
# attr(,"class")
# [1] "nbnid"
# attr(,"uri")
# [1] "https://data.nbn.org.uk/Taxa/NHMSYS0000376769"


################### content of with_ids ###################
# $ncbi
# $`9605`
# name         rank      id
# 1    cellular organisms      no rank  131567
# 2             Eukaryota superkingdom    2759
# 3          Opisthokonta      no rank   33154
# 4               Metazoa      kingdom   33208
# 5             Eumetazoa      no rank    6072
# 6             Bilateria      no rank   33213
# 7         Deuterostomia      no rank   33511
# 8              Chordata       phylum    7711
# 9              Craniata    subphylum   89593
# 10           Vertebrata      no rank    7742
# 11        Gnathostomata      no rank    7776
# 12           Teleostomi      no rank  117570
# 13         Euteleostomi      no rank  117571
# 14        Sarcopterygii      no rank    8287
# 15 Dipnotetrapodomorpha      no rank 1338369
# 16            Tetrapoda      no rank   32523
# 17              Amniota      no rank   32524
# 18             Mammalia        class   40674
# 19               Theria      no rank   32525
# 20             Eutheria      no rank    9347
# 21        Boreoeutheria      no rank 1437010
# 22     Euarchontoglires   superorder  314146
# 23             Primates        order    9443
# 24          Haplorrhini     suborder  376913
# 25          Simiiformes   infraorder  314293
# 26           Catarrhini    parvorder    9526
# 27           Hominoidea  superfamily  314295
# 28            Hominidae       family    9604
# 29            Homininae    subfamily  207598
# 30                 Homo        genus    9605
# 
# attr(,"class")
# [1] "classification"
# attr(,"db")
# [1] "ncbi"
# 
# $itis
# $`180091`
# name         rank     id
# 1       Animalia      Kingdom 202423
# 2      Bilateria   Subkingdom 914154
# 3  Deuterostomia Infrakingdom 914156
# 4       Chordata       Phylum 158852
# 5     Vertebrata    Subphylum 331030
# 6  Gnathostomata  Infraphylum 914179
# 7      Tetrapoda   Superclass 914181
# 8       Mammalia        Class 179913
# 9         Theria     Subclass 179916
# 10      Eutheria   Infraclass 179925
# 11      Primates        Order 180089
# 12   Haplorrhini     Suborder 943773
# 13   Simiiformes   Infraorder 943778
# 14    Hominoidea  Superfamily 943782
# 15     Hominidae       Family 180090
# 16     Homininae    Subfamily 943805
# 17          Homo        Genus 180091
# 
# attr(,"class")
# [1] "classification"
# attr(,"db")
# [1] "itis"
# 
# $eol
# $`24937760`
# name    rank       id
# 1  Animalia kingdom 24913771
# 2  Chordata  phylum 24913792
# 3  Mammalia   class 24913813
# 4  Primates   order 24915812
# 5 Hominidae  family 24935599
# 6      Homo   Genus 24937760
# 
# attr(,"class")
# [1] "classification"
# attr(,"db")
# [1] "eol"
# 
# $col
# $`20003018`
# name        rank       id
# 1   Animalia     Kingdom 19826999
# 2   Chordata      Phylum 19827039
# 3   Mammalia       Class 19827040
# 4   Primates       Order 19827622
# 5 Hominoidea Superfamily 19827638
# 6  Hominidae      Family 19827640
# 7       Homo       Genus 20003018
# 
# attr(,"class")
# [1] "classification"
# attr(,"db")
# [1] "col"
# 
# $tropicos
# $`40027340`
# name       rank        id
# 1 Equisetopsida      class  43000109
# 2   Magnoliidae   subclass  43000013
# 3     Asteranae superorder 100352415
# 4      Lamiales      order  43000074
# 5   Acanthaceae     family  42000303
# 
# attr(,"class")
# [1] "classification"
# attr(,"db")
# [1] "tropicos"
# 
# $gbif
# $`5964034`
# name    rank
# 1 Animalia kingdom
# 2 Porifera  phylum
# 
# attr(,"class")
# [1] "classification"
# attr(,"db")
# [1] "gbif"
# 
# $nbn
# $NHMSYS0000376769
# name    rank               id
# 1  Animalia Kingdom NBNSYS0100001342
# 2  Chordata  Phylum NBNSYS0100002380
# 3  Mammalia   Class NHMSYS0000376154
# 4  Primates   Order NHMSYS0000377147
# 5 Hominidae  Family NHMSYS0000376765
# 
# attr(,"class")
# [1] "classification"
# attr(,"db")
# [1] "nbn"





################### content of without ###################
# $ncbi
# $`9605`
# name         rank
# 1    cellular organisms      no rank
# 2             Eukaryota superkingdom
# 3          Opisthokonta      no rank
# 4               Metazoa      kingdom
# 5             Eumetazoa      no rank
# 6             Bilateria      no rank
# 7         Deuterostomia      no rank
# 8              Chordata       phylum
# 9              Craniata    subphylum
# 10           Vertebrata      no rank
# 11        Gnathostomata      no rank
# 12           Teleostomi      no rank
# 13         Euteleostomi      no rank
# 14        Sarcopterygii      no rank
# 15 Dipnotetrapodomorpha      no rank
# 16            Tetrapoda      no rank
# 17              Amniota      no rank
# 18             Mammalia        class
# 19               Theria      no rank
# 20             Eutheria      no rank
# 21        Boreoeutheria      no rank
# 22     Euarchontoglires   superorder
# 23             Primates        order
# 24          Haplorrhini     suborder
# 25          Simiiformes   infraorder
# 26           Catarrhini    parvorder
# 27           Hominoidea  superfamily
# 28            Hominidae       family
# 29            Homininae    subfamily
# 30                 Homo        genus
# 
# attr(,"class")
# [1] "classification"
# attr(,"db")
# [1] "ncbi"
# 
# $itis
# $`180091`
# name         rank
# 1       Animalia      Kingdom
# 2      Bilateria   Subkingdom
# 3  Deuterostomia Infrakingdom
# 4       Chordata       Phylum
# 5     Vertebrata    Subphylum
# 6  Gnathostomata  Infraphylum
# 7      Tetrapoda   Superclass
# 8       Mammalia        Class
# 9         Theria     Subclass
# 10      Eutheria   Infraclass
# 11      Primates        Order
# 12   Haplorrhini     Suborder
# 13   Simiiformes   Infraorder
# 14    Hominoidea  Superfamily
# 15     Hominidae       Family
# 16     Homininae    Subfamily
# 17          Homo        Genus
# 
# attr(,"class")
# [1] "classification"
# attr(,"db")
# [1] "itis"
# 
# $eol
# $`24937760`
# name    rank
# 1  Animalia kingdom
# 2  Chordata  phylum
# 3  Mammalia   class
# 4  Primates   order
# 5 Hominidae  family
# 6      Homo   Genus
# 
# attr(,"class")
# [1] "classification"
# attr(,"db")
# [1] "eol"
# 
# $col
# $`20003018`
# name        rank
# 1   Animalia     Kingdom
# 2   Chordata      Phylum
# 3   Mammalia       Class
# 4   Primates       Order
# 5 Hominoidea Superfamily
# 6  Hominidae      Family
# 7       Homo       Genus
# 
# attr(,"class")
# [1] "classification"
# attr(,"db")
# [1] "col"
# 
# $tropicos
# $`40027340`
# name       rank
# 1 Equisetopsida      class
# 2   Magnoliidae   subclass
# 3     Asteranae superorder
# 4      Lamiales      order
# 5   Acanthaceae     family
# 
# attr(,"class")
# [1] "classification"
# attr(,"db")
# [1] "tropicos"
# 
# $gbif
# $`5964034`
# name    rank
# 1 Animalia kingdom
# 2 Porifera  phylum
# 
# attr(,"class")
# [1] "classification"
# attr(,"db")
# [1] "gbif"
# 
# $nbn
# $NHMSYS0000376769
# name    rank
# 1  Animalia Kingdom
# 2  Chordata  Phylum
# 3  Mammalia   Class
# 4  Primates   Order
# 5 Hominidae  Family
# 
# attr(,"class")
# [1] "classification"
# attr(,"db")
# [1] "nbn"