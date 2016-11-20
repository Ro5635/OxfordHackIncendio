<?php
/**
 * All of the pages on this site should be listed here, the page header and footer should be configuired with pageRequirements object and requested by each page.
 * 
 */
  class PagesController {

    public function home() {

      //Require the class for storing CSS and Script requirements:
      require_once($_SERVER['DOCUMENT_ROOT'] . '../PHPIncludes/pageLinkScriptsCSS.php');

      //Make an object of the pageLinkScriptsCSS class for storing the CSS requirements for the header:
      $pageRequirements = new pageLinkScriptsCSS();

      $pageRequirements->add("css", ['/SASS/stylesheets/CSSFIleName.css', '/SASS/stylesheets/Animate.css']);

      $pageRequirements->add("title", 'Incendio');

      $pageRequirements->add("js", ['/assets/JS/js.js', '/assets/JS/Pusher.js', '/assets/JS/homeScript.js'] );



      callStructural('header','std',$pageRequirements);
      
      require_once('views/pages/home.php');

      //Render the page footer:
      callStructural("footer", 'std', $pageRequirements); 


    }


     public function map() {
      

      //Require the class for storing CSS and Script requirements:
     require_once($_SERVER['DOCUMENT_ROOT'] . '../PHPIncludes/pageLinkScriptsCSS.php');

      //Make an object of the pageLinkScriptsCSS class for storing the CSS requirements for the header:
      $pageRequirements = new pageLinkScriptsCSS();

      $pageRequirements->add("css", ['https://js.arcgis.com/4.1/esri/css/main.css']);

      $pageRequirements->add("title", 'Map');

      $pageRequirements->add("js", ['https://js.arcgis.com/4.1/', '/assets/JS/Pusher.js', 'https://js.pusher.com/3.2/pusher.min.js', 'https://ajax.googleapis.com/ajax/libs/dojo/1.11.2/dojo/dojo.js', '/assets/JS/js.js', 'assets/JS/jsMap.js'] );


      callStructural('header','std',$pageRequirements);
      
      require_once('views/pages/map.php');

      //Render the page footer:
      callStructural("footer", 'std', $pageRequirements); 


    }

    public function error() {

      //Require the class for storing CSS and Script requirements:
      require_once($_SERVER['DOCUMENT_ROOT'] . '../PHPIncludes/pageLinkScriptsCSS.php');

      $pageRequirements = new pageLinkScriptsCSS();

      $pageRequirements->add("css", ['/SASS/stylesheets/error.css']);

      $pageRequirements->add("title", 'The Sky Is falling');

      callStructural('header','std',$pageRequirements);
      
      require_once('views/pages/error.php');

      //Render the page footer:
      callStructural("footer", 'std', $pageRequirements); 

    }
  }
?>
