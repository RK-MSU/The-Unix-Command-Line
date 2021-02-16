
# packages ---------------------------------------------------------------------

library(knitr)
library(bookdown)
library(markdown)
library(rmarkdown)
library(magrittr)
library(tinytex)
library(tidyr)
library(dplyr)

# knitr chunk options ----------------------------------------------------------

knitr::opts_chunk$set(
  #  comment = "#>",
  collapse = TRUE,
  message = FALSE,
  warning = FALSE,
  #cache = TRUE,
  echo = FALSE, # hide code unless otherwise noted in chunk options
  out.width = "75%",
  fig.align = 'center',
  fig.width = 6,
  fig.asp = 0.618,  # 1 / phi
  fig.show = "hold"
)


colorize <- function(x, color) {
  if (knitr::is_latex_output()) {
    sprintf("\\textcolor{%s}{%s}", color, x)
  } else if (knitr::is_html_output()) {
    sprintf("<span style='color: %s;'>%s</span>", color, x)
  } else {
    sprintf("%s",x)
  }
}


newLine <- function(){
  x <- ""
  if (knitr::is_latex_output()) {
    x <- '\newline'
  } else if (knitr::is_html_output()) {
    x <- "<br>"
  } else {
    x <- ''
  }
  sprintf("%s",x)
}
