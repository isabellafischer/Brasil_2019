# Isabella Fischer

library(mlr)
library(kknn)
library(tidyverse)
set.seed(1)

clinicData = as_tibble(read_tsv("https://osf.io/vqsr4/download"))
geneExpe = as_tibble(read_tsv("https://osf.io/um4g9/download"))

clinicData$Ethnicity = factor(clinicData$Ethnicity)
clinicData$Sex = factor(clinicData$Sex)

classify = function(tib, target, algoritm, perform){
  task = makeClassifTask(data = tib, target = target)
  learner = makeLearner(algoritm, predict.type = "prob")

  resampleDesc = makeResampleDesc("CV", iters = 5)
  results = resample(learner, task, resampleDesc, show.info = F)
  
  metrics = performance(results$pred, measures = perform)
  return(metrics)
}

rest = list(classify(clinicData, "Class", "classif.svm", list(auc)),
            classify(geneExpe, "Class", "classif.svm", list(auc))
            )
print("expression")
