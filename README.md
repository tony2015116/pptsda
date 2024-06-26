# pptsda <a href='https://tony2015116.github.io/pptsda/'><img src='man/figures/logo.svg'  width="120" align="right" />
<!--apple-touch-icon-120x120.png-->
<!-- <picture><source srcset="reference/figures/apple-touch-icon-120x120.png" media="(prefers-color-scheme: dark)"></picture> -->
<!-- badges: start -->
[![GitHub R package version](https://img.shields.io/github/r-package/v/tony2015116/pptsda)](#)
[![GitHub last commit](https://img.shields.io/github/last-commit/tony2015116/pptsda)](#)
<!-- badges: end -->

**pptsda** package provides a streamlined workflow for analyzing pig feed efficiency from raw data to insights. It contains functions for data import, cleaning, analysis and visualization to take feed intake CSVs and efficiently compute key performance metrics. The `import_csv()` function handles batch loading of CSV files. `adg_get()` calculates average daily gain, detects outliers and generates growth curves. `dfi_get()` focuses on correcting feed intake visit data to derive daily feed intake. `fcr_get()` combines ADG and DFI to compute feed conversion ratio. Together these functions enable straightforward data wrangling, growth modeling, and derivation of ADG, DFI and FCR feed efficiency indicators from raw pig feed intake data. The workflows in pptsda package allow users to quickly go from data intake to analyzed metrics to facilitate downstream evaluation and modeling of pig feed efficiency.

## Installation

You can install the development version of pptsda like so:

``` r
# install.packages("devtools")
devtools::install_github("tony2015116/pptsda")
# install.packages("pak")
pak::pak("tony2015116/pptsda")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(pptsda)
## import_csv() basic example code
csv_files_list <- list.files("path/to/csv/directory", full.names = TRUE, pattern = ".csv")
csv_data <- import_csv(csv_files_list)

## use default data
nedap_csv_data <- mintyr::nedap

## adg_get() basic example code
adg_results <- adg_get(data = nedap_csv_data)
head(adg_results$adg_info)

## adfi_get() basic example code
adfi_results <- adfi_get(data = nedap_csv_data, adg_res = adg_results)
head(adfi_results$adfi_info)

## fcr_get() basic example code
fcr_results <- fcr_get(adg_res = adg_results, adfi_res = adfi_results)
head(fcr_results$fcr_res)
head(fcr_results$fcr_summary)
```

