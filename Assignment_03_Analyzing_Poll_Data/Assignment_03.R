library(ggplot2)

Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll   <- c(  4,      62,      51,    21,      2,        14,       15)
CBS_poll   <- c( 12,      75,      43,    19,      1,        21,       19)
df_polls <- data.frame(Name, ABC_poll, CBS_poll)
str(df_polls)
head(df_polls)
mean(df_polls$ABC_poll)
median(df_polls$CBS_poll)
range(df_polls[, c("ABC_poll","CBS_poll")])
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_pol

ggplot(df_polls, aes(x = factor(Name), y = Diff)) + geom_col(fill = "forestgreen") + labs(title = "Poll Difference of 2016 Presidential Candidates", x = "Candidate", y = "Poll Difference") + theme_minimal()
