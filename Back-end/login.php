<?php

 session_start();

 $connect = mysqli_connect("localhost","root","","myschoolapp");

 if($connect){

        $email = "pritrathod129@gmail.com";

        $password = "prit123";
        // $email = mysqli_real_escape_string($connect,$_POST['email']);
        // $password = mysqli_real_escape_string($connect, $_POST['password']);

        if(isset($email) && isset($password)){

            $sql = "SELECT * FROM students WHERE email = '$email' AND password ='$password'";

            $result = mysqli_query($connect,$sql);

            if(mysqli_num_rows($result) >= 1){

                $row = mysqli_fetch_assoc($result);

                if ($row['email'] === $email && $row['password'] === $password) {

                    echo "Logged in!";
    
                    $_SESSION['user_name'] = $row['user_name'];
    
                    $_SESSION['name'] = $row['name'];
    
                    $_SESSION['id'] = $row['id'];
        
                    exit();
    
                }
                else{

                    echo("Incorrect email or password");
                }
            }
            else{
                echo ("Invalid email and password");
            }
        }
}
else{
    echo json_encode("connection error");
}

?>