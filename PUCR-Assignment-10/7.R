# Isabella Fischer

library(mlr)
library(tidyverse)

clinical = read_tsv("https://osf.io/vqsr4/download")
gene = read_tsv("https://osf.io/um4g9/download")

clinical$Ethnicity = as.factor(clinical$Ethnicity)
clinical$Sex = as.factor(clinical$Sex)

classify = function(data_entry, target_col, class_alg, perf_metrics){
  library(mlr)
  data_entry_aux = data_entry
  task = makeClassifTask(data = as.data.frame(data_entry_aux), target = target_col)
  learner = makeLearner(class_alg, predict.type = "prob")
  resampleDesc = makeResampleDesc("CV", iters = 5)
  set.seed(1)
  results = resample(learner, task, resampleDesc, show.info = FALSE)
  return(performance(results$pred, measures = perf_metrics))
}

svm = classify(clinical, "Class", "classif.svm", list(mlr::auc))
rf = classify(clinical, "Class", "classif.randomForest", list(mlr::auc))
nb = classify(clinical, "Class", "classif.naiveBayes", list(mlr::auc))
knn = classify(clinical, "Class", "classif.kknn", list(mlr::auc))
gbm = classify(clinical, "Class", "classif.gbm", list(mlr::auc))

res_auc = rbind(svm[1], rf[1], nb[1], knn[1], gbm[1])
alg = c("classif.svm","classif.randomForest","classif.naiveBayes","classif.kknn","classif.gbm")

results_clinical = as_tibble(cbind(res_auc, alg))

results_clinical = results_clinical %>%
  gather('auc', key = "measure", value="value")

results_clinical_aux = results_clinical %>%
  group_by(measure) %>%
  summarise(dado = "clinical", value = mean(as.numeric(value)))

svm = classify(gene, "Class", "classif.svm", list(mlr::auc))
rf = classify(gene, "Class", "classif.randomForest", list(mlr::auc))
nb = classify(gene, "Class", "classif.naiveBayes", list(mlr::auc))
knn = classify(gene, "Class", "classif.kknn", list(mlr::auc))
gbm = classify(gene, "Class", "classif.gbm", list(mlr::auc))

res_auc = rbind(svm[1], rf[1], nb[1], knn[1], gbm[1])
alg = c("classif.svm","classif.randomForest","classif.naiveBayes","classif.kknn","classif.gbm")

results_gene = as_tibble(cbind(res_auc, alg))

results_gene = results_gene %>%
  gather('auc', key = "measure", value="value")

results_gene_aux = results_gene %>%
  group_by(measure) %>%
  summarise(dado = "expression", value = mean(as.numeric(value)))

rbind(results_clinical_aux, results_gene_aux) %>%
  arrange(desc(value)) %>%
  head(n=1) %>%
  pull(dado) %>%
  print()
