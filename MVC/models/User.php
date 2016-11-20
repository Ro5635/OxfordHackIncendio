<?php
//This models the user in the system, all database calls are handled here.
//Robert Curran
//robert@robertcurran.co.uk

class User {
  // we define 3 attributes
  // they are public so that we can access them using $Product->author directly
	public $UserID;
	public $Name;
	public $GameID;
	public $House;
	public $Life;
	
	public function __construct($UserID, $Name, $GameID, $House , $Life) {
		
		//Set the instance variables
		$this->UserID = $UserID;
		$this->Name  = $Name;
		$this->GameID = $GameID;
		$this->House = $House;
		$this->Life = $Life;
		
	}


	//Registers User
	//Requires the user name of the user to be registered
	public static function registerUser($UserName ) {

		$Name = filter_var($UserName , FILTER_SANITIZE_STRING);

		//Initial Life Value
		$Life = 3;

		//Rand house ID between 1 and 4.
		$HouseID = rand(1, 4);

		$Score = 0;

		$Health = 3;
			
		//Get the database
		$db = Db::getInstance();

		//Get a unused UserID:
		
		//Track the number of attempst to get a unique ID.
		$attemps = 0;
		//Random number to be used as the Customer ID: 
		$randomNumber;

		do {

			if($attemps > 5){
				//More than five atetmpts to get an unused ID, something is BADLY wrong.
				error_log("FATAL ERROR, Unable to find a unique Id for the new customer");
				die();
			}

    		//Generate a psudo random number for use as the id, no need for crytographic randomness, not thsi does pose a limuit on the number of custoemrs! :)
			$randomNumber = rand(1000, 999999);

			//Check to see that the index is not in use:
			$db = Db::getInstance();

			$req = $db->prepare('SELECT * FROM Users Where ID = :ID limit 5');
			$req->execute(array(':ID' => $randomNumber));
			$Usersfound = $req->fetchAll();

			$attemps++;

		} while (count($Usersfound)  > 0);

		//Found new rand unused User ID
		$UserID = $randomNumber;

		//Get the GameID:
		//This is stored in the table CurrentGame
		$req = $db->prepare(' SELECT * FROM CurrentGame');
   		$req->execute();
   		$CurrentGame = $req->fetch();

   		$GameID = $CurrentGame['CurrentGameID'];


		$req = $db->prepare('INSERT INTO Users(ID, Name, GameID, HouseID, Score, Health) VALUES( :ID, :Name , :GameID, :HouseID, :Score , :Health)');
   		//Execute prepeared Query
		$req->execute(array(':ID' => $UserID, ':Name' => $Name, ':GameID' => $GameID , ':HouseID' => $HouseID, ':Score' => $Score , ':Health' => $Health));
 
 		


		return new User($UserID, $Name, $GameID, $HouseID , $Life);


	}

	//ASSUMES CURRENT GAME
	public static function getUsersInGame(){

		$gameID = Game::getCurrentGame();

		//Get all of the players for the current game ID:
		//Get the database
		$db = Db::getInstance();


		$req = $db->prepare(' SELECT * FROM Users WHERE GameID = :GameID');
   		$req->execute(array(':GameID' => $gameID));
   		$CurrentUsers = $req->fetchAll();

   		return json_encode($CurrentUsers);


	}







}