library(shinydashboard)
library(ggplot2)
library(reticulate)

# Importando script python
source_python("utils.py")
# Chamando dataset filtrado em python
df <- py$df

ui <- dashboardPage(
  
  dashboardHeader(title = "Teste Responsivo"),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Histogramas", tabName = "histogramas", icon = icon("chart-bar"))
    )
  ),
  
  dashboardBody(
    tabItems(
      tabItem(tabName = "histogramas", 
              fluidRow(
                box(width = 2,
                    selectInput(inputId = "select_name", label = "Selecione o produto", 
                                choices = unique(df$`Brand Name`), 
                                selected = 1)),
                valueBoxOutput(width = 2, outputId = "value_observations")
              ),
              fluidRow(
                box(
                  plotOutput(outputId = "hist_price")),
                box(
                  plotOutput(outputId = "hist_rating"))
              )
      )
    ))
)