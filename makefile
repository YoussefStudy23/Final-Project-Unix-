readme : guessinggame.sh
	touch README.md
	echo "Project: __Peer-graded Assignment: Bash, Make, Git, and GitHub__" > README.md
	echo "\nDate make did ran at:" >> README.md
	date >> README.md
	echo "\nThe number of lines file guessinggame.sh contains:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
