var game;
var player;
var computer;

window.onload = function() {
    player = new Player();
    computer = new Computer();
    game = new Game(); 
    game.enableButtons();
}

// Defines the player object

function Player() {

    this.playerBullets = 0;

    this.playerChoice = "";	
}

// Defines the computer object

function Computer() {

    this.computerBullets = 0;

    this.computerChoice = 0;
	
	this.computerChoiceOutput = "";  
}

function Game(){
	
	this.shootButtonActive = false;
	this.roundNr = 0;
			
		this.enableButtons = function(){
			document.getElementById("Shoot").addEventListener("click", game.newRound);
			document.getElementById("Block").addEventListener("click", game.newRound);
			document.getElementById("Reload").addEventListener("click", game.newRound);
			document.getElementById("Shotgun").addEventListener("click", game.shotgun);
		}
   
			
		// Counts the number of bullets after each round
	
        this.bulletsLeft = function() {
			
		if (player.playerChoice == "Reload") 
			player.playerBullets += 1;
		else if (player.playerChoice == "Shoot") 
			player.playerBullets -= 1;
		

		if (computer.computerChoice == 1) 
			computer.computerBullets += 1;
		else if (computer.choiceComputer == 2) 
			computer.computerBullets -= 1;
		

		if (player.playerBullets == 0) 
			game.shootButtonActive = false;
		 else
			game.shootButtonActive = true;
		
		if (player.playerBullets == 0 && computer.computerBullets > 0)
			computer.computerChoice = 2;

		document.getElementById("pbulletNr").innerHTML = player.playerBullets;
		document.getElementById("cbulletNr").innerHTML = computer.computerBullets;
		
	    }
		
		this.shotgun = function () {
			if (player.playerBullets >= 3) 
				game.shotgunButtonActive = true;
				document.getElementById("round").innerHTML = "Round " + game.roundNr + ": " + "You won.";
				window.confirm("You won:) Want to play again?");
				game.enableButtons();
		}
		
	    this.newRound = function(e) {
				
			var noShoot = [1, 3];
			var someWinner = false;
			var shotgunButtonActive = false;
			
			if (someWinner == false) 
			if (shootButtonActive == true || e.target.id == "Reload" || e.target.id == "Block") 

				game.roundNr++;

				if (computer.computerBullets >= 3) 
					computer.computerChoice = 4;
				else if (computer.computerBullets == 0)
					var arrayIndex = Math.floor(Math.random() * 2);
					computer.computerChoice = noShoot[arrayIndex];
				else if (computer.computerBullets > 0)
					computer.computerChoice = Math.floor(Math.random() * 3) + 1;
				
				player.playerChoice = e.target.id;
				var score = [". Each of you lose a bullet.", ". You won!", ". You lost a bullet.", ". Computer won!", ". Each got " +
                "one more bullet.", ". You have one more bullet, computer blocked.", ". Computer lost a bullet.", ". Computer got one more bullet.", ". Well, nothing happened. "
				];
				
				if (computer.computerChoice == 1) 
					computer.computerChoiceOutput = "Reload";
				else if (computer.computerChoice == 2)
					computer.computerChoiceOutput = "Shoot";
				else if (computer.computerChoice == 3) 
					computer.computerChoiceOutput = "Block";
				else if (computer.computerChoice == 4)
					computer.computerChoiceOutput = "Shotgun";
				
				

			 if (player.playerChoice == "Shoot" && computer.computerChoice == 2) 
                document.getElementById("round").innerHTML = "Round " + game.roundNr + ": " + player.playerChoice + " against " + computer.computerChoiceOutput + score[0];

             else if (player.playerChoice == "Shoot" && computer.computerChoice == 1) 
                document.getElementById("round").innerHTML = "Round " + game.roundNr + ": " + player.playerChoice + " against " + computer.computerChoiceOutput + score[1];
                someWinner = true;
                window.confirm("Game over! You won. Want to play again? Refresh.");

             else if (player.playerChoice == "Shoot" && computer.computerChoice == 3) 
                document.getElementById("round").innerHTML = "Round " + game.roundNr + ": " + player.playerChoice + " against " + computer.computerChoiceOutput + score[2];

             else if (player.playerChoice == "Reload" && computer.computerChoice == 2) 
                document.getElementById("round").innerHTML = "Round " + game.roundNr + ": " + player.playerChoice + " against " + computer.computerChoiceOutput + score[3];
                someWinner = true;
                window.confirm("Game over! Computer won. Want to play again? Refresh.");

             else if (player.playerChoice == "Reload" && computer.computerChoice == 1) 
                document.getElementById("round").innerHTML = "Round " + game.roundNr + ": " + player.playerChoice + " against " + computer.computerChoiceOutput + score[4];

             else if (player.playerChoice == "Reload" && computer.computerChoice == 3) 
                document.getElementById("round").innerHTML = "Round " + game.roundNr + ": " + player.playerChoice + " against " + computer.computerChoiceOutput + score[5];

             else if (player.playerChoice == "Block" && computer.computerChoice == 2)  
                document.getElementById("round").innerHTML = "Round " + game.roundNr + ": " + player.playerChoice + " against " + computer.computerChoiceOutput + score[6];

             else if (player.playerChoice == "Block" && computer.computerChoice == 1) 
                document.getElementById("round").innerHTML = "Round " + game.roundNr + ": " + player.playerChoice + " against " + computer.computerChoiceOutput + score[7];

             else if (player.playerChoice == "Block" && computer.computerChoice == 3) 
                document.getElementById("round").innerHTML = "Round " + game.roundNr + ": " + player.playerChoice + " against " + computer.computerChoiceOutput + score[8];

             else if (player.playerChoice == "Shotgun" || computer.computerChoice == 4) 
                document.getElementById("round").innerHTML = "Shotgun! Game over!";
                someWinner = true;
				
			game.bulletsLeft();

            if (player.playerBullets == 3 && someWinner == false) 
                alert("You can now use Shotgun!");
            

            if (computer.computerBullets == 3 && someWinner == false) 
                alert("Computer can now use Shotgun!");
                document.getElementById("round").innerHTML = "Round " + game.roundNr + ": " + "Computer won.";
            

            if (computer.computerBullets == 3 && player.playerBullets == 3) 
                window.confirm("It ends in a draw:( Want to play again? Refresh.");
           
			
			if (player.playerBullets == 0 && computer.computerBullets > 0)
				computer.computerChoice = 2;
			
			else if (player.playerBullets == 0 && computer.computerBullets >= 3)
				computer.computerChoice = 4;
		
			
	    }
}

