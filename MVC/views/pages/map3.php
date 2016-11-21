<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no">
<title>FeatureLayer - 4.1</title>  
<link rel="stylesheet" href="https://js.arcgis.com/4.1/esri/css/main.css">
<script src="https://js.arcgis.com/4.1/"></script> 
<style>
  html,
  body,
  #viewDiv {
    padding: 0;
    margin: 0;
    height: 100%;
    width: 100%;
  }
</style> 
<script>
  require([
    "esri/symbols/PictureMarkerSymbol",
        "esri/widgets/Track",
          "esri/Graphic",
      "esri/Map",
      "esri/views/MapView",       
      "esri/layers/FeatureLayer",      
      "dojo/domReady!"
    ],
    
    function(PictureMarkerSymbol, Track, Graphic, Map, MapView, FeatureLayer) {        
     

var featureLayer = new FeatureLayer({
        url: "http://services.arcgis.com/Qo2anKIAMzIEkIJB/arcgis/rest/services/OxfordHackCampusDraft1/FeatureServer/0" });  

    
      var map = new Map({
        basemap: "streets"
      });  

     
      var view = new MapView({
        container: "viewDiv",
        map: map,         
        extent: { // autocasts as new Extent()
          xmin: -9177811,
          ymin: 4247000,
          xmax: -9176791,
          ymax: 4247784,
          spatialReference: 102100
        }
      });        

/********************
       * Add feature layer
       ********************/        
// Carbon storage of trees in Warren Wilson College.
   var track = new Track({
      view: view,
      graphic: new Graphic({
       symbol: new PictureMarkerSymbol("https://cdn.webaddressgoeshere.com/OxfordHack/media/footsteps_01.png", 25, 30) })
           
    }); 
    
    
setInterval(function(){
     console.log(track)
     if(track.graphic.symbol.url === "https://cdn.webaddressgoeshere.com/OxfordHack/media/footsteps_01.png"){
       track.graphic.symbol.url = "https://cdn.webaddressgoeshere.com/OxfordHack/media/footsteps_02.png";
       
     }
     else{
       track.graphic.symbol.url = "https://cdn.webaddressgoeshere.com/OxfordHack/media/footsteps_01.png";
     }

}, 1000);
    
    
    
    
   

    view.ui.add(track, "top-left");
    map.add(featureLayer);  
    
    view.then(function() {
      track.start();
    });      
   

// setInterval(function(){ 
 
//     console.log(view.viewpoint);

 
// }, 3000);




      
})
</script>
</head>
<body>
<div id="viewDiv">
</div>
</body>
</html>
