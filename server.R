


# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

anos_comeerj <-
  c("2010","2011", "2012","2013","2014","2015","2016","2017")

data_comeerj <- read.csv2("data.csv", stringsAsFactors = F)

shinyServer(function(input, output) {
  output$inscritosValueBox <- renderValueBox({
    valueBox(
      length(data_comeerj$COD_FICHA_INSCRICAO_COMEERJ_ID), 
      "Inscritos",
      icon = icon("credit-card"),
      color = "purple"
    )
  })
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    
    data_comeerj
  }))
  
})
