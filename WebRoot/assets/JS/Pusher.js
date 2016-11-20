//js script

    
	//Get my  id
	//
	var myID;
	
	$.ajax({
            url: "https://oxfordhack.webaddressgoeshere.com/ajax/getCurrentPlayer",
            type: "POST",
            data: datatoTransmit,
            cache: false,
            success: function(reternedData) {
                
            	myID = reternedData;   
            }
    });



    // Enable pusher logging - don't include this in production
    Pusher.logToConsole = true;

    var pusher = new Pusher('9f4f8e03aae644792f7f', {
      encrypted: true
    });

    var channel = pusher.subscribe('test_channel');
    channel.bind('my_event', function(data) {
    



    	// data.messag;
    	if(data.instructFor == myID  ){

    		if(data.state == 0){

    			 window.location.href = "https://www.youtube.com/watch?v=astISOttCQ0";

    		}
    		if(data.struck == 1){

    			$('body').css('background-color','red');
    		}

    	}


    


    });
