library(shiny)

# Define UI for solving quadratic equation
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Quadratic equation solver in the Real Numbers set"),
  
  sidebarPanel(
    h4("Theory review"),
    p("There is an equation of the form: ",img(src="http://upload.wikimedia.org/math/0/c/4/0c4913db725b72609d4825124dda12aa.png"),"."),
    p("It's solutions are given by the formula: ",
      img(src="http://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Quadratic_formula.svg/330px-Quadratic_formula.svg.png")),
    h4("Enter the equation coefficients:"),
    numericInput("a", "A:", 1),
    numericInput("b", "B:", 2),
    numericInput("c", "C:", 1),
    submitButton("Solve")
  ),
  
  mainPanel(
    h4("Solution for quadratic equation"),
    verbatimTextOutput("msg")    
    )
))