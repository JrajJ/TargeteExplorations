<?php
       
include('db_connect.php');

     $sql = "SELECT * FROM targetex_video";

        $result = mysqli_query($conn,$sql) ;      
        
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
        
        
