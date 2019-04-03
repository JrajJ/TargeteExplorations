<?php
       
include('db_connect.php');

extract($_POST);

 $name          = $_POST['name'];
 $email         = $_POST['email'];
$contact        = $_POST['contact'];
 $userid        = $_POST['userid']; 



 
$sql = "SELECT status from targetex_user WHERE id ='$userid' AND name ='$name' AND email ='$email' AND contact ='$contact'";

 $result = mysqli_query($conn, $sql) ;

      if($result)
            {
            
         while( $list = $result->fetch_assoc() )
          {
            $data = $list['status'];
          }

          if($data=="Active")
          {
              $message = true;
          }
          else
          {
              $message = false;
          }
       }
      else
      {
              $message = false;
      }
        //$message =true;
        echo $error ='{"login":'.json_encode($message).'}';
              
        ?>