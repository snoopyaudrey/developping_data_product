ui <- fluidPage(
 
  titlePanel("Simple Mean Calculator"),
  sidebarLayout(
    sidebarPanel(
      selectInput("variable", "Select a Variable:", choices = colnames(iris[1:length(iris)-1])),
      actionButton("calculate", "Calculate Mean")
    ),
    mainPanel(
      verbatimTextOutput("app_description"),
      textOutput("result")
    )
  )
)




