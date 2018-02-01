TEX = pandoc
src = template.tex details.yml
FLAGS = --latex-engine=xelatex

resume.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm output.pdf
