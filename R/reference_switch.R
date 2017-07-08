initialize_ref <-
  function(list_name = "", max_object_num = 20){
    list_objects <- rep("", max_object_num)
    assign(paste0("list_", list_name), list(list_objects), envir = globalenv())
  }

update_ref <-
  function(id = "", list_name){
    list_objects <-
      eval(parse(text = paste0("list_", list_name)))

    present_object_num <-
      list_objects[[1]] %>%
      {. != ""} %>%
      sum

    list_objects[[1]][present_object_num + 1] <- id
    assign(paste0("list_", list_name), list_objects, envir = globalenv())
  }

call_ref <-
  function(id = "", list_name){
    eval(parse(text = paste0("list_", list_name))) %>%
      .[[1]] %>%
      {. %in% id} %>%
      which
  }

ref_eqn <-
  function(id, prefix = ""){
    if(out_type == "docx"){
      call_ref(id, list_name = "eqn") %>%
        stringr::str_c(., collapse = ",") %>%
        paste0(prefix, "\\@ref(eq:eqn", ., ")")
    } else if(out_type == "latex"){
      call_ref(id, list_name = "eqn") %>%
        paste0(prefix, "\\ref{eq:eqn", ., "}")
    }
  }

ref_fig <-
  function(id, prefix = ""){
    if(out_type == "docx"){
      call_ref(id, list_name = "fig") %>%
        stringr::str_c(., collapse = ",") %>%
        paste0(prefix,  .)
    } else if(out_type == "latex"){
        paste0("\\ref{fig:", id, "}") %>%
          stringr::str_c(., collapse = ",") %>%
          paste0(prefix, .)
    }
  }

ref_table <-
  function(id, prefix = ""){
    if(out_type == "docx"){
      call_ref(id, list_name = "table") %>%
        stringr::str_c(., collapse = ",") %>%
        paste0(prefix,  .)
    } else if(out_type == "latex"){
      paste0("\\ref{table:", id, "}") %>%
        stringr::str_c(., collapse = ",") %>%
        paste0(prefix, .)
    }
  }
