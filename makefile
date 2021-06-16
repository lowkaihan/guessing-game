all: README.md

README.md:
	echo "Project Title: The Guessing Game" > README.md
	echo "Number of lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "The date and time in which the makefile was run:" >> README.md
	date >> README.md

clean:
	rm README.md
