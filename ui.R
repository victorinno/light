## app.R ##

#install.packages("devtools")

#devtools::install_github("jcheng5/bubbles")


library(shiny)
library(shinydashboard)
#library(bubbles)


ui <- dashboardPage(
  dashboardHeader(title = "Light"),
  dashboardSidebar(sidebarMenu(
    menuItem("Home", tabName = "dashboard", icon = icon("dashboard")),
    menuItem("Dados", tabName = "dados", icon = icon("th"))
  )),
  dashboardBody(tabItems(
    tabItem(tabName = "dashboard",
            fluidRow(valueBoxOutput(
              "inscritosValueBox"
            ))),
    
    tabItem(tabName = "dados",
            fluidRow(DT::dataTableOutput("table")))
    
  ))
)
