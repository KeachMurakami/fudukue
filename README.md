<!-- README.md is generated from README.Rmd. Please edit that file -->
fudukue (文机)
==============

`fukudue` is a collection of R packages developed to support literate programming with R mainly for the author. This package will be used in conjunction with [`tidyverse`](), [`knitr`]() and [`bookdown`]().

Installation
------------

You can install:

-   the latest development version from github with

``` r
# install.packages("devtools") # if not installed
devtools::install_github("KeachMurakami/fudukue")
```

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

### consistent cross-references displayed in .pfd and .docx

-   [demo](https://github.com/KeachMurakami/fudukue/tree/master/demo/cross-reference)

`fudukue` implements the following verbs for generating consistent cross-reference both in .pdf and .docx (described in reference\_switch.R).

-   `initialize_ref()`
    -   setups lookup table.
-   `update_ref()`
    -   adds id to newly called object.
-   `ref_eqn(), ref_fig(), ref_table()`
    -   generate continuous numbering from the given id.

### citation managements

`fudukue` implements the following verbs for updating bibtex-style references. `.bib` files for respective articles are stored as `bibtex/list_bib/***.bib`

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
#> Session info --------------------------------------------------------------
#>  setting  value                       
#>  version  R version 3.3.1 (2016-06-21)
#>  system   x86_64, darwin13.4.0        
#>  ui       X11                         
#>  language (EN)                        
#>  collate  en_US.UTF-8                 
#>  tz       Asia/Tokyo                  
#>  date     2017-12-11
#> Packages ------------------------------------------------------------------
#>  package   * version date       source                          
#>  backports   1.0.4   2016-10-24 cran (@1.0.4)                   
#>  devtools    1.12.0  2016-06-24 CRAN (R 3.3.0)                  
#>  digest      0.6.12  2017-01-27 cran (@0.6.12)                  
#>  evaluate    0.10.1  2017-06-24 cran (@0.10.1)                  
#>  htmltools   0.3.6   2017-04-28 cran (@0.3.6)                   
#>  knitr       1.17    2017-08-10 cran (@1.17)                    
#>  magrittr    1.5     2014-11-22 CRAN (R 3.3.1)                  
#>  memoise     1.0.0   2016-01-29 CRAN (R 3.3.1)                  
#>  Rcpp        0.12.14 2017-11-23 cran (@0.12.14)                 
#>  rmarkdown   1.6     2017-06-15 CRAN (R 3.3.2)                  
#>  rprojroot   1.2     2017-01-16 cran (@1.2)                     
#>  stringi     1.1.5   2017-04-07 cran (@1.1.5)                   
#>  stringr     1.2.0   2017-02-18 cran (@1.2.0)                   
#>  withr       2.0.0   2017-08-08 Github (jimhester/withr@190d293)
#>  yaml        2.1.14  2016-11-12 cran (@2.1.14)
```
