all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "## Date: `date`" >> README.md
	echo "## Number of lines: `wc -l < guessinggame.sh`" >> README.md
	
clean:
	rm README.md 
