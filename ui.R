library(shiny)

# Define UI for belt tension calculator
shinyUI(pageWithSidebar(
        
        # Application title
        headerPanel("Belt Tension Calculator"),
        
        # Sidebar with controls to input variables for calculation
        sidebarPanel(
            h3("Inputs"),
            h4("This application calculates the tension of a drive or timing belt (typically of rubber construction) based on a frequency that can be measured using a gauge. Please input measured belt frequency and belt properties below."),
            
            numericInput(inputId = "freq", 
                         label = "Recorded belt frequency [Hz]",
                         value = 200),
            numericInput(inputId = "span",
                         label = "Belt length across span [m]",
                         value = 0.150),
            numericInput(inputId = "mass",
                         label = "Total mass of belt [kg]",
                         value = 0.120),
            numericInput(inputId = "length",
                          label = "Total length of belt [m]",
                          value = 0.250),
            h4("The equation used in this calculator is:"),
            
            h4("T = 4 * m * l^2 * f^2"),
               
            h4("where T is the belt tension in N,"),
            h4("m is the mass per unit length in kg/m,"),
            h4("l is the belt length across the span in m,"),
            h4("f is the measured frequency of the belt in Hz.")
            
        ),
        
        # Show the calculated belt tension
        mainPanel(
            h3("Belt Tension [N]"),
            
            textOutput(outputId = "tension")
        )
))