update_bib <-
  function(input_dir = "~/Dropbox/r_packages/fudukue/bibtex/list_bib/"){
    if(length(dir(input_dir)) == 0){
      stop("Folder may not exist.")
    } else {
      output_dir = paste0(input_dir, "../")
      paste0("cat ", input_dir, "*.bib > ", output_dir, "full_with.bib") %>% system
      paste0("cat ", output_dir, "*with.bib > ", output_dir, "With.bib") %>% system

      paste0("mv ", output_dir, "full_with.bib ", output_dir, "full_without.bib") %>% system
      paste0("cat ", output_dir, "*without.bib > ", output_dir, "Without.bib") %>% system

      paste0("mv ", output_dir, "full_without.bib ", output_dir, "tempFull.bib") %>% system
      paste0("cat ", output_dir, "*Full.bib > ", output_dir, "Full.bib") %>% system
      paste0("rm ", output_dir, "tempFull.bib") %>% system
    }
    cat("\nCitations have been updated.\n\n")
  }

update_abbrv <-
  function(abbrv_file = "~/Dropbox/r_packages/fudukue/bibtex/MyAbbrvList.csv"){
    abbrv_dir <-
      dirname(abbrv_file)

    abbrv_list <-
      read.csv(abbrv_file) %>%
      mutate(Full = paste0('@string{', Abbrv, '=\"', Full, '\"}'),
             With = paste0('@string{', Abbrv, '=\"', Abbrv_with_period, '\"}'),
             Without = paste0('@string{', Abbrv, '=\"', Abbrv_without_period, '\"}')) %>%
             {
               .$Full %>% as.character() %>% write(file = paste0(abbrv_dir, "/abbrev_Full.bib"))
               .$With %>% as.character() %>% write(file = paste0(abbrv_dir, "/abbrev_with.bib"))
               .$Without %>% as.character() %>% write(file = paste0(abbrv_dir, "/abbrev_without.bib"))
             }

    cat("\nAbbreviations have been updated.\n\n")
  }

update_cite <-
  function(){
    update_bib()
    update_abbrv()
  }

