library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("BMI CALCULATOR"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("weight",
                  "Weight (kg):",
                  min = 1,
                  max = 400,
                  value = 1),
      sliderInput("height",
                  "Height (cm):",
                  min = 1,
                  max = 300,
                  value = 1),
      submitButton("Submit")
    ),
    # Show a plot of the generated distribution
    mainPanel(
      textOutput("YourInfo"),
      textOutput("YourBMI"),
      textOutput("YourRange")
    )
  )
))