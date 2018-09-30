all: README.md

README.md: guessinggame.sh 
	echo  "# Guessing Game \n" > README.md
	echo  "**Date and time of makefile:** $$(date) \n"  >> README.md
	echo  "**Line of code:** $$(wc -l < guessinggame.sh) \n" >> README.md
clean:
	rm README.md
