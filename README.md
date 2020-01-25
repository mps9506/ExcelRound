
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ExcelRound

You probably shouldn’t use this unless you need to replicate something
done in Excel.

``` r
devtools::install_github("mps9506/ExcelRound")
```

``` r
# IEEE / IEC rounding: -2  0  0  2  2  4  4
round(.5 + -2:4)
#> [1] -2  0  0  2  2  4  4
```

``` r
library(ExcelRound)
## Expect -2 -1 1 2 3 4 5
xl_round(.5 + -2:4)
#> [1] -2 -1  1  2  3  4  5
```

<img src="man/figures/README-fig1.png" width="30%" />
