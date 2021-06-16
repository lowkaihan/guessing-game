all: README.md

README.md:
	printf "Project Title: The Guessing Game\n" > README.md
	printf "\nNumber of lines in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	printf "\nThe date and time in which the makefile was run: " >> README.md
	date >> README.md

clean:
	rm README.md
