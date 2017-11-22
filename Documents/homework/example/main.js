gameLoop();

function gameLoop () {
	var repeat = true;
	while (repeat) {
		playGame();

		var repeatGame = prompt ('Play again? y/n?');
		if (repeatGame === 'y') {
			repeat = true;
		}
		else if (repeatGame === 'n') {
			repeat = false;
		}
	}	
}

function playGame () {
	showMenu();

	var player1Choice = getUserInput('Player 1');
	var player2Choice = getUserInput('Player 2');

	var winner = getWinner(player1Choice, player2Choice);
	outputToScreen(winner);

}

function showMenu () {
	var outputText = 'Welcome to Rock Paper Scissors \n';
		outputText += 'This is a two player game. both players must choose either rock, paper or scissors. \n';
		outputText += 'May the odds forever be in your favour!';

	alert(outputText);
}

function getUserInput (playerName) {
	return prompt(playerName + ' \n Please enter (r)ock (p)aper or (s)cissors');
}

function getWinner (player1, player2) {
	if (player1 === player2) {
		return 'Its a tie!';
	}

	if (player1 === 'r' && player2 === 's' ||
		player1 === 'p' && player2 === 'r' || 
		player1 === 's' && player2 === 'p') {
		return 'Player 1 wins!';
	
	} else {
		return 'Player 2 wins!';
	}
}

function outputToScreen (text) {
	alert(text);
}


