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

		require_once('models/Game.php');
		require_once('models/User.php');

		require_once['../PHPIncludes/Libraries/Pusher.php'];

    	$atPlayerID = $_POST['atplayer']; //, $strength



    	//Go to supplied User ID and decreace life based on rand
    	User::decreaseUserLife($atPlayerID,1);

    	//send 'incoming' message to User
    	
    	require('Pusher.php');

    	$options = array(
    		'encrypted' => true
    		);
    	$pusher = new Pusher(
    		'9f4f8e03aae644792f7f',
    		'fabdee026910e32a40b2',
    		'272136',
    		$options
    		);

    	$data['message'] = 'Player ' . $atPlayerID . ' it probably hurt.';
    	$pusher->trigger('test_channel', 'my_event', $data);
    	






    }

    public function deflect(){



    }



    

}
?>
