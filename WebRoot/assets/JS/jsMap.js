var test = require([ 
        "esri/Map",
        "esri/views/SceneView",
        "esri/layers/TileLayer",  // Require the TileLayer module
        "dojo/domReady!"
    ],
    function(Map, SceneView, TileLayer) {


        var roomLyr = new TileLayer({
            url: "http://services.arcgis.com/Qo2anKIAMzIEkIJB/arcgis/rest/services/OxfordHackCampusDraft1/FeatureServer/0",
            id: "hackSpot"
        });

        var map = new Map({
            basemap: "Topographic",
            layers: [roomLyr]
        });

        // Create the SceneView
        var view = new SceneView({
            container: "viewDiv",
            map: map
        });


        map.layers.add(roomLyr);

        roomLyr.then(function() {
            view.goTo(roomLyr.fullExtent);
        });






        /*****************************************************************
         * The code to create a map and view instance in the previous step
         * should be placed here.
         *****************************************************************/
    });
