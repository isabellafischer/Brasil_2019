# Isabella Fischer

library(tidyverse)
library(ggplot2)
library(readr)

data(state)
state <- data.frame(state.x77, state.region)

lm_result = lm(Life.Exp~Illiteracy, data=state)
xatual =pull(state, Illiteracy)

ggplot(state, aes(x=Illiteracy, y=Life.Exp)) +
    geom_point()+ 
    geom_smooth(method=lm, se=FALSE)+
    geom_point(aes(x=xatual, y=lm_result$fitted.values), colour="orange") +
    ylab("Life expectancy") +
    xlab("Illiteracy") +
    theme_bw()

ggsave("4.png")
