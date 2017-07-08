<!-- README.md is generated from README.Rmd. Please edit that file -->
fudukue (文机)
==============

`fukudue` is a R package developed to support literate programming with R mainly for the author. This package will be used in conjunction with [`knitr`]() and [`bookdown`]().

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
#>  date     2017-07-08
#> Packages ------------------------------------------------------------------
#>  package   * version date       source         
#>  backports   1.0.4   2016-10-24 cran (@1.0.4)  
#>  devtools    1.12.0  2016-06-24 CRAN (R 3.3.0) 
#>  digest      0.6.11  2017-01-03 cran (@0.6.11) 
#>  evaluate    0.10    2016-10-11 cran (@0.10)   
#>  htmltools   0.3.5   2016-03-21 CRAN (R 3.3.1) 
#>  knitr       1.15.1  2016-11-22 cran (@1.15.1) 
#>  magrittr    1.5     2014-11-22 CRAN (R 3.3.1) 
#>  memoise     1.0.0   2016-01-29 CRAN (R 3.3.1) 
#>  Rcpp        0.12.11 2017-05-22 cran (@0.12.11)
#>  rmarkdown   1.3     2016-12-21 cran (@1.3)    
#>  rprojroot   1.2     2017-01-16 cran (@1.2)    
#>  stringi     1.1.2   2016-10-01 cran (@1.1.2)  
#>  stringr     1.2.0   2017-02-18 cran (@1.2.0)  
#>  withr       1.0.2   2016-06-20 CRAN (R 3.3.1) 
#>  yaml        2.1.14  2016-11-12 cran (@2.1.14)
```
