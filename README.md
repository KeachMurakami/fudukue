<!-- README.md is generated from README.Rmd. Please edit that file -->
fudukue (文机)
==============

`fukudue` is a collection of R packages developed to support literate programming with R mainly for the author. This package will be used in conjunction with [`tidyverse`]() and [`knitr`]().

Installation
------------

You can install:

-   the latest development version from github with

<!-- -->

    # install.packages("devtools") # if not installed
    devtools::install_github("KeachMurakami/fudukue")

How to use
----------

### functions for routine operations

following functions are automatically globalized when this package is attached.

-   `length2`, `sum2`, `sd2`, `mean2`
    -   `na.rm = T` versions
-   `se`
    -   calculates a non-biased standard error
-   `%!in%` (binary operator)
    -   `a %!in% b` returns `!(a %in% b)`

### consistent cross-references .pfd and .docx

-   [demo](https://github.com/KeachMurakami/fudukue/tree/master/demo/cross-reference)

`fudukue` implements the following verbs to generate consistent cross-references both in .pdf and .docx (described in `reference_switch.R`).

-   `initialize_ref()`
    -   setups lookup table.
-   `update_ref()`
    -   adds id to newly called object.
-   `ref_eqn(), ref_fig(), ref_table()`
    -   generate continuous numbering from the given id.

### citation managements

`fudukue` implements the following verbs to manage bibtex-style references. `.bib` files for respective articles are stored as `bibtex/list_bib/***.bib`

-   `update_cite()`
    -   calls `update_abbrv()` and `update_bib()`.
-   `update_abbrv()`
    -   loads abbreviation lists (.csv) and generates `abbrev_XXX.bib` files required for `update_bib()`.
-   `update_bib()`
    -   merges all bibtex files into three files.
        -   `Full.bib`: **non-abbreviated** full-length titles
        -   `With.bib`: abbreviated titles **with periods**
        -   `Without.bib`: abbreviated titles **without periods**

Session information
-------------------

``` r
devtools::session_info()
#> Session info -------------------------------------------------------------
#>  setting  value                       
#>  version  R version 3.5.0 (2018-04-23)
#>  system   x86_64, darwin15.6.0        
#>  ui       X11                         
#>  language (EN)                        
#>  collate  en_US.UTF-8                 
#>  tz       Australia/Brisbane          
#>  date     2018-07-03
#> Packages -----------------------------------------------------------------
#>  package    * version    date       source                            
#>  assertthat   0.2.0      2017-04-11 CRAN (R 3.5.0)                    
#>  backports    1.1.2      2017-12-13 CRAN (R 3.5.0)                    
#>  base       * 3.5.0      2018-04-24 local                             
#>  bindr        0.1.1      2018-03-13 CRAN (R 3.5.0)                    
#>  bindrcpp     0.2.2      2018-03-29 CRAN (R 3.5.0)                    
#>  broom      * 0.4.4.9000 2018-06-21 Github (tidyverse/broom@2721de4)  
#>  cellranger   1.1.0      2016-07-27 CRAN (R 3.5.0)                    
#>  cli          1.0.0      2017-11-05 CRAN (R 3.5.0)                    
#>  colorspace   1.3-2      2016-12-14 CRAN (R 3.5.0)                    
#>  compiler     3.5.0      2018-04-24 local                             
#>  crayon       1.3.4      2017-09-16 CRAN (R 3.5.0)                    
#>  datasets   * 3.5.0      2018-04-24 local                             
#>  devtools   * 1.13.5     2018-02-18 CRAN (R 3.5.0)                    
#>  digest       0.6.15     2018-01-28 CRAN (R 3.5.0)                    
#>  dplyr      * 0.7.5      2018-05-19 CRAN (R 3.5.0)                    
#>  evaluate     0.10.1     2017-06-24 CRAN (R 3.5.0)                    
#>  forcats    * 0.3.0      2018-02-19 CRAN (R 3.5.0)                    
#>  ggplot2    * 2.2.1.9000 2018-06-25 Github (tidyverse/ggplot2@1c09bae)
#>  glue         1.2.0      2017-10-29 CRAN (R 3.5.0)                    
#>  graphics   * 3.5.0      2018-04-24 local                             
#>  grDevices  * 3.5.0      2018-04-24 local                             
#>  grid         3.5.0      2018-04-24 local                             
#>  gtable       0.2.0      2016-02-26 CRAN (R 3.5.0)                    
#>  haven        1.1.1      2018-01-18 CRAN (R 3.5.0)                    
#>  hms          0.4.2      2018-03-10 CRAN (R 3.5.0)                    
#>  htmltools    0.3.6      2017-04-28 CRAN (R 3.5.0)                    
#>  httr         1.3.1      2017-08-20 CRAN (R 3.5.0)                    
#>  jsonlite     1.5        2017-06-01 CRAN (R 3.5.0)                    
#>  knitr      * 1.20       2018-02-20 CRAN (R 3.5.0)                    
#>  lattice      0.20-35    2017-03-25 CRAN (R 3.5.0)                    
#>  lazyeval     0.2.1      2017-10-29 CRAN (R 3.5.0)                    
#>  lubridate    1.7.4      2018-04-11 CRAN (R 3.5.0)                    
#>  magrittr   * 1.5        2014-11-22 CRAN (R 3.5.0)                    
#>  MASS       * 7.3-49     2018-02-23 CRAN (R 3.5.0)                    
#>  memoise      1.1.0      2017-04-21 CRAN (R 3.5.0)                    
#>  methods    * 3.5.0      2018-04-24 local                             
#>  modelr       0.1.2      2018-05-11 cran (@0.1.2)                     
#>  munsell      0.4.3      2016-02-13 CRAN (R 3.5.0)                    
#>  nlme         3.1-137    2018-04-07 CRAN (R 3.5.0)                    
#>  pillar       1.2.3      2018-05-25 cran (@1.2.3)                     
#>  pkgconfig    2.0.1      2017-03-21 CRAN (R 3.5.0)                    
#>  plyr         1.8.4      2016-06-08 CRAN (R 3.5.0)                    
#>  purrr      * 0.2.5      2018-05-29 CRAN (R 3.5.0)                    
#>  R6           2.2.2      2017-06-17 CRAN (R 3.5.0)                    
#>  Rcpp         0.12.17    2018-05-18 cran (@0.12.17)                   
#>  readr      * 1.1.1      2017-05-16 CRAN (R 3.5.0)                    
#>  readxl       1.1.0      2018-04-20 CRAN (R 3.5.0)                    
#>  reshape2     1.4.3      2017-12-11 CRAN (R 3.5.0)                    
#>  rlang        0.2.1      2018-05-30 cran (@0.2.1)                     
#>  rmarkdown    1.10       2018-06-11 cran (@1.10)                      
#>  rprojroot    1.3-2      2018-01-03 CRAN (R 3.5.0)                    
#>  rstudioapi   0.7        2017-09-07 CRAN (R 3.5.0)                    
#>  rvest        0.3.2      2016-06-17 CRAN (R 3.5.0)                    
#>  scales       0.5.0      2017-08-24 CRAN (R 3.5.0)                    
#>  stats      * 3.5.0      2018-04-24 local                             
#>  stringi      1.2.2      2018-05-02 cran (@1.2.2)                     
#>  stringr    * 1.3.1      2018-05-10 cran (@1.3.1)                     
#>  tibble     * 1.4.2      2018-01-22 CRAN (R 3.5.0)                    
#>  tidyr      * 0.8.1      2018-05-18 cran (@0.8.1)                     
#>  tidyselect   0.2.4      2018-02-26 CRAN (R 3.5.0)                    
#>  tidyverse  * 1.2.1      2017-11-14 CRAN (R 3.5.0)                    
#>  tools        3.5.0      2018-04-24 local                             
#>  utils      * 3.5.0      2018-04-24 local                             
#>  withr        2.1.2      2018-03-15 CRAN (R 3.5.0)                    
#>  xml2         1.2.0      2018-01-24 CRAN (R 3.5.0)                    
#>  yaml         2.1.19     2018-05-01 cran (@2.1.19)
```
