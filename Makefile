output/grouped_diamonds.csv : src/01-make_data.R
	Rscript src/01-make_data.R

output/avg_carat_by_cut.png: output/grouped_diamonds.csv
	Rscript src/02-make_plot.R

.PHONY : clean
clean :
	rm -f output/*

.PHONY : plots
plots : output/avg_carat_by_cut.png
