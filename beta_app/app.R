#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(betaR)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Success probability model"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            numericInput("a", 
                         label = h3("Alpha"), 
                         value = 1),
            numericInput("b", 
                         label = h3("Beta"), 
                         value = 1),
            numericInput("n", 
                         label = h3("N"), 
                         value = 10),
            sliderInput("p", 
                        label = h3("Prop. success"), 
                        min = 0, 
                        max = 1, 
                        value = .5)
            
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        a <- input$a
        b <- input$b 
        n <- input$n
        p <- input$p 
        x <- floor(n*p)
        
        dbeta_plot(a + x, b + n - x)
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
