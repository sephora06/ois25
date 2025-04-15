# visualize.R
> 
  > 
  > if (!require(ggplot2)) {
    +   install.packages("ggplot2")
    + }
> library(ggplot2)
> 
  > 
  > set.seed(42)
> x <- 1:100
> y <- 3 * x + rnorm(100, mean = 0, sd = 30)  # une tendance linéaire avec du bruit
> data <- data.frame(x = x, y = y)
> 
  > # Visualisation : scatter plot 
  > ggplot(data, aes(x = x, y = y)) +
  +   geom_point(color = "steelblue", alpha = 0.6) +         
  +   geom_smooth(method = "lm", color = "darkred") +        
  +   theme_minimal() +
  +   labs(
    +     title = "Relation entre le temps et le nombre de microbes ",
    +     x = "Le temps (minutes)",
    +     y = "Microbes"
    +   )
