# Isabella Fischer

#library(tidyverse)
library(mlr)
set.seed(1)

classify = function(tib, target, algoritm, perform){
  task = makeClassifTask(data = tib, target = target)
  learner = makeLearner(algoritm, predict.type = "prob")

  resampleDesc = makeResampleDesc("CV", iters = 5)
  results = resample(learner, task, resampleDesc, show.info = F)

  metrics = performance(results$pred, measures = perform)
  return(metrics)
}
