# Isabella Fischer

library(tidyverse)

clinicalData = as_tibble(read_tsv("https://osf.io/vqsr4/download"))
geneExpe = as_tibble(read_tsv("https://osf.io/um4g9/download"))

clinicalData$Ethnicity = factor(clinicalData$Ethnicity)
clinicalData$Sex = factor(clinicalData$Sex)

classify = function(tib, target, algoritm, perform){
  library(mlr)
  task = makeClassifTask(data = tib, target = target)
  learner = makeLearner(algoritm, predict.type = "prob")
  set.seed(1)
  resampleDesc = makeResampleDesc("CV", iters = 5)
  results = resample(learner, task, resampleDesc, show.info = F)
  metrics = performance(results$pred, measures = perform)
  return(metrics)
}

print(classify(clinicalData, "Class", "classif.svm", list(mlr::acc, auc, f1, mcc) ))
print(classify(clinicalData, "Class", "classif.randomForest", list(mlr::acc, auc, f1, mcc) ))
print(classify(clinicalData, "Class", "classif.naiveBayes", list(mlr::acc, auc, f1, mcc) ))
print(classify(clinicalData, "Class", "classif.kknn", list(mlr::acc, auc, f1, mcc) ))
print(classify(clinicalData, "Class", "classif.gbm", list(mlr::acc, auc, f1, mcc) ))

