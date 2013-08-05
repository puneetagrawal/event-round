//get latitude longitude using HTML5 geolocation API
// function getLocation() {
// 	if (navigator.geolocation) {
// 		navigator.geolocation.getCurrentPosition(locationSuccess, locationFail);
// 	} else {
// 		console.log("geolocation is not supported by the browser");
// 		locationFail();
// 	}
// }

// function locationSuccess(position) {
// 	console.log(position);
// 	console.log("latitude: " + position.coords.latitude);
// 	console.log("longitude: " + position.coords.longitude);
// }

function locationFail() {
	console.log("fallback to ip address")
  $ip = $("#remote_ip").val()
  $.ajax({
   type: 'GET',
    url: 'http://freegeoip.net/json/' + $ip,
    jsonpCallback: 'jsonCallback',
    contentType: "application/json",
    dataType: 'jsonp',
    success: function(locationData) {
      $.ajax({
        url: '/popup/homepage/',
        data: locationData,
        dataType: 'script'
      })
      // console.dir(locationData);
    },
    error: function(e) {
      console.log(e.message);
    }
  });
}




$(function() {
// here goes magic

	// getLocation();
  locationFail();
// 

});

$(document).ready(function(){ 



$("#evt_submit").click(function(){
  var from_dt_evt = $("#from_dt_evt").val()
  var to_dt_evt = $("#to_dt_evt").val()
  var evt_city = $("#evt_city").val()
  var evt_categories = $("#evt_categories").val() 
  var evt_date = from_dt_evt+' '+to_dt_evt
  // $.ajax({

  //       url: "/event/get_event",
        
  //    });

/* 
    Eventbrite Examples - organizer event list

    If you copy this code, please set your own API Key in the example below.
    You can request one here: http://www.eventbrite.com/api/key
*/

Eventbrite({'app_key': "NVYMGRMALY3AXXSCUU"}, function(eb){
    
    // define a few parameters to pass to the API
    // Options are listed here: http://developer.eventbrite.com/doc/organizers/organizer_list_events/
   
     var options = {
        'city'  : evt_city       
        ,'categories' : evt_categories
        ,'date' : evt_date
    };
    
    // provide a callback to display the response data:
    eb.event_search( options, function( response ){
        
        $('.event_list').html(eb.utils.eventList( response, eb.utils.eventListRow ));
    });
});
})

})
