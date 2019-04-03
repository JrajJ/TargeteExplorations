<?php
       
include('db_connect.php');

extract($_POST);

 $catname          = $_POST['catname'];

     $sql ="SELECT id FROM targetex_category WHERE category_name = '$catname'";

        $result = mysqli_query($conn,$sql) ;      
                
        if($result)
        { 
           while($list = $result->fetch_assoc())
          {
            $data = $list['id'];

          }
                    
        }
          else
        {
           $data = null;
        }


        $sql2 ="SELECT * FROM targetex_video WHERE category = '$data'";

        $result2 = mysqli_query($conn,$sql2) ;      
                
        if($result2)
        { 
           while($list2 = $result2->fetch_assoc())
          {
            $data2[]=$list2;
          }
            
        
        }
          else
        {
           $data2[]=null;
        }
        echo $error ='{"videos":'.json_encode($data2).'}';
        
      
        ?>
        
        
