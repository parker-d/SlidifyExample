library(shiny)
library(forecast)
library(datasets)

shinyServer(function(input, output) {

    output$plot1 <- renderPlot({

    plot.ts(EuStockMarkets[,input$dataset])
 
    if(input$lineYN == 'Yes') {
        abline( lm(EuStockMarkets[,input$dataset] ~ index(EuStockMarkets) ),
        col="blue", lwd=3)  } 
    })  
    
    
    output$plot2 <- renderPlot({    
    
    if(input$decomposeYN == 'Yes') {
        f <- decompose(EuStockMarkets[,input$dataset])
        plot(f)   } 
  })

  
  })
  
