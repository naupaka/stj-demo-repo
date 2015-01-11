install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

library("ggplot2")

head(iris)

myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
summary(myplot)
myplot + geom_point()

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()

library("reshape2")
df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) +
    geom_bar(stat = "identity", position = "dodge") +
    scale_fill_brewer(palette = "Set1")
￼
h <- ggplot(faithful, aes(x = waiting))
h + geom_histogram(binwidth = 20, colour = "black")

our.faithful <- faithful






