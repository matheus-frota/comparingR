library(reticulate)

pandas <- import("pandas")

suppressWarnings(df <- pandas$read_csv("/home/matheus/github/benchmarkRPython/data/Amazon_Unlocked_Mobile.csv"))
