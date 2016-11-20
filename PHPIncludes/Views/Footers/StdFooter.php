<footer>

</footer>


</body>


      <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
      <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>


      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js" crossorigin="anonymous"></script>

      <script src="//https://js.pusher.com/3.2/pusher.min.js"></script>



      <?php
       if(isset($pageRequirements)){
         $jsFiles = $pageRequirements->getFiles("js");
       }

      if(isset($jsFiles)){
         foreach ($jsFiles as $fileName) {
            echo '<script async src="/' . $fileName . '"></script>';
         }
      }
      ?>
      </html>

