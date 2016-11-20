<?php
//This models the user in the system, all database calls are handled here.
//Robert Curran
//robert@robertcurran.co.uk

class Game {
  // we define 3 attributes
  // they are public so that we can access them using $Product->author directly
	public $CurrentGameID;

	
	// public function __construct($GameID) {
		
	// 	//Set the instance variables
	// 	$this->GameID = $GameID;

		
	// }


	//Gets the currrent Game
	public static function getCurrentGame() {

		$db = Db::getInstance();

	
	
		//Get the GameID:
		//This is stored in the table CurrentGame
		$req = $db->prepare(' SELECT * FROM CurrentGame');
   		$req->execute();
   		$CurrentGame = $req->fetch();
	
   		//Return the current game id
		return $CurrentGame['CurrentGameID'];


	}


	//Increment Game ID
	
	public static function newGame() {

		$db = Db::getInstance();

	
	
		//Get the GameID:
		//This is stored in the table CurrentGame
		$req = $db->prepare(' SELECT * FROM CurrentGame');
   		$req->execute();
   		$CurrentGame = $req->fetch();
	
   		
		$lastGame = $CurrentGame['CurrentGameID'];

		$CurrentGame = $lastGame + 1;


		//Update the database:
		$req = $db->prepare('UPDATE CurrentGame SET CurrentGame = :CurrentGame');
   		$req->execute(array(':CurrentGame' => $CurrentGame ););


	}



	

	



}