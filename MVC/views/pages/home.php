<?php
//Include the experimental html tag functions
include($_SERVER['DOCUMENT_ROOT'].'/../PHPIncludes/Libraries/HTMLTagExperimental.php');

echo '<body>';

include($_SERVER['DOCUMENT_ROOT'].'/../PHPIncludes/Views/pages/home/INC_TopPageGreeting.php');




?>
        <div class='container'>
            <div class="row">
                <div class="container-fluid">
                    <div class = "col-xs-3"></div>
                    <div class = "col-xs-6">
                        <img class="img-fluid" src="https://cdn.webaddressgoeshere.com/OxfordHack/media/PlayLogo.png">
                    </div>
                    <div class= "col-xs-3"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-4">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Your name" id="playerName"/> 
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button" onclick="submitName()" id="submitButton">Begin.</button>
                        </span>
                    </div><!-- /input-group -->
                </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->
        </div>
        <!-- jQuery library -