<?php
//AJAX Reegister a User


$Name = filter_var($_POST['uname'] , FILTER_SANITIZE_STRING);

//Call the User Creation function with the username passed.
$user = User::registerUser( $Name );

//Save relevent data to the session:
$_SESSION["UserName"] = $user->Name;
$_SESSION["GameID"] = $user->GameID;
$_SESSION['UserID'] = $user->UserID;
$_SESSION['House'] = $user->House;
