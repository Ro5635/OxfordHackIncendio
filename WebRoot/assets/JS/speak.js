$(document).click(function() {


        if (window.hasOwnProperty('webkitSpeechRecognition')) {

                var recognition = new webkitSpeechRecognition();

                recognition.continuous = false;
                recognition.interimResults = false;

                recognition.lang = "en-UK";
                recognition.start();

                recognition.onresult = function(e) {

                        recognition.stop();
                
                        //Send AJAX
                        reternedData =  e.results[0][0].transcript;
                
//                      $.ajax({
//                              url: "/ajax/speachresponse",
//                              type: "POST",
//                              data: dataToTransmit,
//                              cache: false,
//                              success: function(reternedData) {
                                        $('#playerName').val(reternedData);   

					responsiveVoice.setDefaultVoice("UK English Male");
 
                                        responsiveVoice.speak(reternedData);
//                              }
//                      });

                };

                recognition.onerror = function(e) {
                        recognition.stop();
                }

        }
});
