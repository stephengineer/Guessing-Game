Guessing-Game: README.md
	echo "# Guessing Game" > README.md
	echo "## Date: `date`" >> README.md
	echo "## Number of lines: `wc -l < guessinggame.sh`" >> README.md
clean :
	rm README.md
