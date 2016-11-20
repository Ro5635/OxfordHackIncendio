<?php
  class ajaxController {
    public function register() {

    //Include for example:
    //Render the appropiate video box:

    //Model
    require_once('models/Game.php');
    require_once('models/User.php');

    //View
    require_once('views/ajax/RegisterUser.php');
    

    }



    public function getCurrentPlayer(){

    	echo $_SESSION['UserID'];

    }


    public function getPlayers(){

    	require_once('models/Game.php');
    	require_once('models/User.php');

    	echo User::getUsersInGame();


    }
    



    public function shoot(){



    }

    public function deflect(){



    }



    

  }
?>
