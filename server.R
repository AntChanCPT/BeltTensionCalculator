library(shiny)

# Define server logic required to calculate and output belt tension
shinyServer(function(input, output) {
    
    # Calculate belt tension
    output$tension <- reactive({
        4 * (input$mass / input$length) * input$span^2 * input$freq^2
    })
    
})