$(document).ready(function(){
    $('#submitButton').on('click',function(){
        var datatoTransmit = 'uname=' + $('#playerName').val();

        $.ajax({
            url: "/ajax/register",
            type: "POST",
            data: datatoTransmit,
            cache: false,
            success: function(returnedData) {
                window.location.href("/pages/map");
            }
        });
    });
});
