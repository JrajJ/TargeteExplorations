<?php
       
include('db_connect.php');

extract($_POST);

 $userid          = $_POST['userid'];
 $videoid         = $_POST['videoid'];
 
$sql3 = "SELECT likes from  targetex_video WHERE id ='$videoid'";

 $result3 = mysqli_query($conn, $sql3);

 if($result3)
        { 
           while($list3 = $result3->fetch_assoc())
          {

            $v = $list3['likes'];
            

          }
            $flag_views = true;
        
        }
         

if($flag_views)
{
  $v = $v+1;
  $sql2 = "UPDATE targetex_video SET likes ='$v' WHERE id ='$videoid'";

 mysqli_query($conn, $sql2);

}



 $sql = "INSERT INTO targetex_like(user_id,video_id) VALUES('$userid','$videoid')";

 $result = mysqli_query($conn, $sql);

      if($result)
            {
              $message = true;
            }
      else
            {
              $message = false;
            }
        
        echo $error ='{"login":'.json_encode($message).'}';
              
        ?>