exec:
	# Python
	@time python3 ./benchmark/OpenPython.py
	# R + Tidyverse
	@time Rscript ./benchmark/OpenR.R
	# R + Reticulate + Pandas
	@time Rscript ./benchmark/OpenRreticulate.R
	