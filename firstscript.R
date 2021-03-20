install.packages("httr")
install.packages("jsonlite")
library(httr)
library(jsonlite)
#require(httr)

print("hello")
endpoint <- "https://api.openweathermap.org/data/2.5/weather?q=Warszawa&appid=1765994b51ed366c506d5dc0d0b07b77"
getWeather <- GET(endpoint)
weatherText <- content(getWeather, "text")
weatherJson <- fromJSON(weatherText, flatten = TRUE)
weatherDF <- as.data.frame(weatherJson)
View(weatherDF)

x <- 123.4
# x <- "string"
# x <- 1:100

is.vector(x)
class(x)

x <- c(1,2,3,4,5)
x <- c(x, FALSE)
class(x)
y <- as.logical(x)
as.numeric(y)
