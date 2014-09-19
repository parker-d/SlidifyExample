---
title       : Time Series Analysis
subtitle    : A Shiny App for Analyzing Time Series Data
author      : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Would you like to easily load and plot your time series data?

Now you can use this FREE Shiny App to get a plot like this:




```r
plot.ts(DAXts)
```

<img src="assets/fig/unnamed-chunk-2.png" title="plot of chunk unnamed-chunk-2" alt="plot of chunk unnamed-chunk-2" style="display: block; margin: auto;" />

--- .class #id 

## Would you like to analyze your time series data by adding a regression line?

You can use this FREE Shiny App to add a regression line like this:


```r
plot.ts(DAXts); abline(lm(DAXts ~ index(DAXts)), col="blue", lwd=3)
```

<img src="assets/fig/unnamed-chunk-3.png" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" style="display: block; margin: auto;" />

--- .class #id 

## Would you like to decomposing the observed values into the additive components?

You can use this FREE Shiny App to decomposing the time series like this:


```r
decomp.DAXts <- decompose(DAXts);  plot(decomp.DAXts)
```

<img src="assets/fig/unnamed-chunk-4.png" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" style="display: block; margin: auto;" />

--- .class #id 

## Are you convinced???

Try out this free Shiny App... just go to shinyapps.io !!!


### http://parker-d.shinyapps.io/dpExample



