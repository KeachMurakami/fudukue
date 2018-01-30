fudukue_family_packages <-
  paste0("KeachMurakami/",
         c("fudukue", "kagari", "soroban"))

update_fudukue <-
  function(.force = F){
    fudukue_family_packages %>%
    purrr::walk( ~ devtools::install_github(., force = .force))
  }