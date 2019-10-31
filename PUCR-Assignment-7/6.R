# Isabella Fischer

library(tidyverse)
data(state)
state <- data.frame(state.x77, state.region)

cor_vec_names<-c()
state_names<-names(state)[-3]

for(i in state_names){
  if(is.numeric(state[,i])){
    if(abs(cor(state$Illiteracy,state[,i]))>0.5){
      cor_vec_names<-cbind(cor_vec_names,i)
    }
  }
}

print(as.character(cor_vec_names))
