library(shiny)

# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
  output$msg <- renderText({
    #read the coefficients
    a <- as.numeric(input$a)
    b <- as.numeric(input$b)
    c <- as.numeric(input$c)
    
    #check case when A = 0
    if( a == 0 ) {
      # ... and B = 0
      if( b == 0 ) {
        # ... and C = 0
        if( c == 0 ) {
          # The equation is undefined
          "Undefined equation."
        } else {
          # the equation is impossible
          "Impossible equation."
        }      
      } else {
        # There is a single solution
        paste("x = ", (-c/b) )
      }
    } else {
      #Compute the Delta
      delta <- b^2-4*a*c
      #If delta < 0
      if( delta < 0 ) {
        #There is no solution
        "There is no solution."
      } else if( delta == 0 ) {
        #... if 0, there is one solution
        paste("x = ",-b/(2*a))
      } else {
        #otherwise there are 2 solutions
        paste("x1 = ",(-b-sqrt(delta))/(2*a)," , x2 = ",(-b+sqrt(delta))/(2*a))
      }
    }
  })
})