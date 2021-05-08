## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(wrappedtools)

## ----include=FALSE------------------------------------------------------------
library(wrappedtools)

## ----example1-----------------------------------------------------------------
# Standard functions to obtain median and quartiles:
median(mtcars$mpg)
quantile(mtcars$mpg,probs = c(.25,.75))
# wrappedtools adds rounding and pasting:
median_quart(mtcars$mpg)
# on a higher level, this logic leads to
compare2numvars(data = mtcars, dep_vars = c('wt','mpg', "disp"), 
                indep_var = 'am',
                gaussian = F,
                round_desc = 3)

## ----example2-----------------------------------------------------------------
somedata <- rnorm(100)
ks.test(x = somedata, 'pnorm', mean=mean(somedata), sd=sd(somedata))

ksnormal(somedata)

## ----example3-----------------------------------------------------------------
gaussvars <- FindVars(varnames = c('wt','mpg'),
                      allnames = colnames(mtcars))
gaussvars

#Exclusion based on pattern
factorvars <- FindVars(varnames = c('a','cy'),
                      allnames = colnames(mtcars),
                      exclude = c('t'))
factorvars$names

