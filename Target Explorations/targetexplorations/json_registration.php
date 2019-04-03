<?php
       
include('db_connect.php');
extract($_POST);

 $name        = $_POST['name'];
 $address     = $_POST['address'];
 $email       = $_POST['email'];
 $gender      = $_POST['gender']; 
 $dob         = $_POST['dob']; 
 $contact     = $_POST['contact']; 
 $classes     = $_POST['classs']; 
 $collegename = $_POST['collegename'];
 $statuss     = 'Active'; 

 $sql11 = "SELECT id from targetex_user WHERE email = '$email'";

 $result11 = mysqli_query($conn,$sql11) ;      
        
        if($result11)
        { 

          if( $list11 = $result11->fetch_assoc())
          {
                     echo $error ='{"loginn":'.json_encode(null).'}';
          }
               
        else
        {
         
           $sql = "INSERT into targetex_user(name,address,email,gender,dob,contact,classs,college_name,status) values('$name','$address','$email', '$gender', '$dob', '$contact', '$classes', '$collegename', '$statuss')";

      $result = $conn->query($sql);

      if($result)
      {
        
          $sql1 = "SELECT id from targetex_user WHERE name ='$name'  AND email ='$email' AND contact = '$contact'";
          $result1 = mysqli_query($conn, $sql1) ;

         while( $list1 = $result1->fetch_assoc() )
          {
            $data = $list1['id'];
          }

        }
        else
        {
          $data = null;
        }
          echo $error ='{"loginn":'.json_encode($data).'}';

        }
      }
        



      
                       
        ?>    