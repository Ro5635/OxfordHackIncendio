<?php
//Include the experimental html tag functions
include($_SERVER['DOCUMENT_ROOT'].'/../PHPIncludes/Libraries/HTMLTagExperimental.php');

echo '<body>';

include($_SERVER['DOCUMENT_ROOT'].'/../PHPIncludes/Views/pages/home/INC_TopPageGreeting.php');




?>
<div class='container' style='background-image:url("http://media.harrypotter.bloomsbury.com/rep/g/page-background-shell%20-%202.png")'>
            <div class="row">
                <div class="container-fluid">
                    <div class = "col-xs-2"></div>
                    <img class="img-fluid" src="https://cdn.webaddressgoeshere.com/OxfordHack/media/PlayLogo.png">
                    <div class= "col-xs-2"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-4">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Your name" /> 
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Begin.</button>
                        </span>
                    </div><!-- /input-group -->
                </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->
        </div>