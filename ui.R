ui <- fluidPage(
  titlePanel("Mean Calculator by Species"),
  sidebarLayout(
    sidebarPanel(
      selectInput("variable", "Select a Variable:", choices = colnames(iris[1:length(iris)-1])),
      selectInput("species", "Select a Species:", choices = unique(iris$Species)),
      actionButton("calculate", "Calculate Mean")
    ),
    mainPanel(
      verbatimTextOutput("app_description"),  # Display explanatory text
      textOutput("result")
    )
  )
)




