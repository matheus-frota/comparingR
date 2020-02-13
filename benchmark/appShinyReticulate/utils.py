import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Abrindo dataset
df = pd.read_csv("/home/matheus/github/benchmarkRPython/data/Amazon_Unlocked_Mobile.csv")
df = df[["Brand Name","Price","Rating"]]
df = df.dropna()

# PLotagem
def histogram(x):
  x.plot(kind = "hist")
  plt.savefig("myplot.png")

