advertising = read.csv("./Advertising.csv")
library(shiny)

ui <- fluidPage(
  selectInput("Scatterplots",
            "Select a variable for Sales to be plotted against",
            c("TV","Radio","Newspaper")),
  plotOutput("scatter")
)

server <- function(input, output) {
 output$scatter <- renderPlot({
    plot(advertising[,input$Scatterplots], advertising$Sales,
         xlab = input$Scatterplots,
         ylab = "Sales")
  })
}

shinyApp(ui, server)
