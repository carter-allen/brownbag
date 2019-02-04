# brownbag

## Talk materials
- [Slides](slides.pdf)
- [Miami Parks App](brownbag/parks.R)
- [Bayesian Skew Normal Test](brownbag/skew.R)
- [Bayesian success probability app](beta_app/app.R)

## Installing Shiny

```
install.packages("shiny")
library(shiny)
```

## Installing betaR

The `betaR` package was used in the live coding session to plot the density of a beta distribution. We used the `dbeta_plot()` function for this. The package is currently hosted on github and can be downloaded with the following `R` commands.

```
library(devtools)
install_github("carter-allen/betaR")
```

## Shiny Documentation
- [Shiny](https://shiny.rstudio.com/)
- [Gallery](https://shiny.rstudio.com/gallery/)

## Hosting apps
- [Shinyapps.io](https://www.shinyapps.io/)

## External links
- [PSU: Book of Shiny Apps for Teaching](https://sites.psu.edu/shinyapps/)
- [RStudio Shiny Contest](https://blog.rstudio.com/2019/01/07/first-shiny-contest/?utm_content=buffercf350&utm_medium=social&utm_source=twitter&utm_campaign=buffer)
- [Jacqueline Nolis on Shiny at rstudio conf](https://medium.com/@skyetetra/rstudio-conf-2019-takeaways-9c60eda17084)
- [Building large Shiny apps](https://thinkr-open.github.io/rstudioconf2019/)