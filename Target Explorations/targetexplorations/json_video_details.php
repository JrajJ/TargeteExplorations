<?php
       
include('db_connect.php');

extract($_POST);



 $videoid         = $_POST['videoid'];

     $sql ="SELECT * FROM targetex_video where id = '$videoid'";

        $result = mysqli_query($conn,$sql);      
        
        
        if($result)
        { 
           while($list = $result->fetch_assoc())
          {
            $data[]=$list;
          }
            
        
        }
          else
        {
           $data[]=null;
        }
        echo $error ='{"videos":'.json_encode($data).'}';
        
      
        ?>
        
        
