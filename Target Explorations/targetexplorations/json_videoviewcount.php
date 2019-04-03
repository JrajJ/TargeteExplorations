<?php
       
include('db_connect.php');

extract($_POST);

 /*$videoid         = '1';
*/
 $videoid         = $_POST['videoid'];
 

$sql = "SELECT views from targetex_video WHERE id ='$videoid'";

 $result = mysqli_query($conn, $sql) ;

      if($result)
            {
            
         $count = $result->fetch_assoc() ;
                    
       }
      else
      {
             $count = 0;
      }

      $count = $count + 1;

 $sql2 = "UPDATE targetex_video SET views = $count WHERE id = '$videoid'";

 $result2 = mysqli_query($conn, $sql2);

      if($result2)
            {
              $message = true;
     
            }
      else
            {
              $message = false;
            }
        //$message =true;
        echo $error ='{"login":'.json_encode($message).'}';
              
        ?>