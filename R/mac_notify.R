mac_notify <-
  function(subtitle = "",
           message = "Finished"){
    paste0("terminal-notifier -title Rstudio",
           " -subtitle ", subtitle,
           " -message ", message) %>%
      system
  }
