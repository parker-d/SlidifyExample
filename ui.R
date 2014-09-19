library(shiny)
library(datasets)
library(forecast)

shinyUI(pageWithSidebar(
  
  headerPanel('Analyzing Time Series'),
  
  sidebarPanel(
    selectInput('dataset', 'Choose a European Stock Exchange to plot Time Series
                (DAX is Germany, SMI is Switzerland, CAC is France, FTSE is the UK)',
                choices=colnames(EuStockMarkets),
                selected='DAX'),
    selectInput('lineYN', 'Include a Regression Line on Time Series?', c('Yes', 'No'),
                selected='No'),
    selectInput('decomposeYN', 'Include a Decomposition of the Time Series?', c('Yes', 'No'),
                selected='No')
    
    ),

  mainPanel(
    plotOutput('plot1'),
    
    plotOutput('plot2')
    
  )


))