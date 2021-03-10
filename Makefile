open_pdf: report.pdf
	open report.pdf

report.pdf: report.dvi
	dvipdfmx report.dvi

report.dvi: report.tex graph.eps
	platex report.tex

graph.eps: result.dat draw_line.gnuplot
	gnuplot draw_line.gnuplot

result.dat: a.out
	./assets/a.out > assets/result.dat

a.out: main.f90
	gfortran main.f90 -o assets/a.out

assets:
	mkdir -p assets
