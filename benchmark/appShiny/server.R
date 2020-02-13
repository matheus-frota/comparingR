library(shiny)
library(ggplot2)
source("data.R")

server <- function(input, output) {
  # Sem utilizar o reticulate
  output$hist_price <- renderPlot({
    data <- df[df$`Brand Name` == input$select_name, ]
    plot <- plot.histogram(data, "Price", "Preço", "Frequência")
    plot
  })
  output$hist_rating <- renderPlot({
    data <- df[df$`Brand Name` == input$select_name, ]
    plot <- plot.histogram(data, "Rating", "Avaliação", "Frequência")
    plot
  })
  output$value_observations <- renderValueBox({
    valueBox(
      nrow(df[df$`Brand Name` == input$select_name, ]), "Unidades Observadas", icon = icon("list"),
      color = "blue"
    )
  })
}