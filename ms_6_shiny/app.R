#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

ui <- fluidPage(imageOutput("ms6")
)


server <- function(input, output) {
    
    output$ms6 <- renderImage({
        
        plot <- normalizePath(file.path('ms6.png'))
        
        list(src = plot, width = 800, height = 600)
        
    }, deleteFile = FALSE)
}

# Run the application 
shinyApp(ui = ui, server = server)
