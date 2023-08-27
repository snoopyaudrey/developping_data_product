server <- function(input, output) {
  library(shiny)
  library(ggplot2)
  # Reactive expression for explanatory text
  app_description <- "You can choose a variable from the IRIS data, and the app is going to claculate the mean of the variable you selected"
  
  output$app_description <- renderPrint({
    cat(app_description)  # Display explanatory text
  })
  
  observeEvent(input$calculate, {
    selected_var <- input$variable
    if (!is.null(selected_var)) {
      mean_value <- mean(iris[[selected_var]])
      output$result <- renderText({
        paste("Mean of", selected_var, ":", mean_value)
      })
    }
  })
}






