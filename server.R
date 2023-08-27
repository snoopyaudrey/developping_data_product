server <- function(input, output) {
  library(shiny)
  library(ggplot2)
  # Reactive expression for explanatory text
  app_description <- "You can choose a variable from the IRIS data and one specieof flower, and the app is going to claculate the mean of the variable you selected for the sepcie you selected "
  output$app_description <- renderPrint({
    cat(app_description)  
  })
  
  observeEvent(input$calculate, {
    selected_var <- input$variable
    selected_species <- input$species
    
    if (!is.null(selected_var) && !is.null(selected_species)) {
      subset_data <- subset(iris, Species == selected_species)
      mean_value <- mean(subset_data[[selected_var]])
      
      output$result <- renderText({
        paste("Mean of", selected_var, "for", selected_species, ":", mean_value)
      })
    }
  })
}











