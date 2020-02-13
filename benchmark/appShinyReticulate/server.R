library(shiny)
library(ggplot2)
library(reticulate)
# Importando script python
source_python("utils.py")


server <- function(input, output) {
  # Sem utilizar o reticulate
  output$hist_price <- renderImage({
    data1 <- df[df$`Brand Name` == input$select_name, ]
    py$histogram(data1)
    list(src = 'myplot.png')
    #hist(as.numeric(unlist(data)))
  })
  output$hist_rating <- renderPlot({
    data <- df[df$`Brand Name` == input$select_name, "Rating"]
    hist(as.numeric(unlist(data)))
  })
  output$value_observations <- renderValueBox({
    valueBox(
      nrow(df[df$`Brand Name` == input$select_name, ]), "Unidades Observadas", icon = icon("list"),
      color = "blue"
    )
  })
}