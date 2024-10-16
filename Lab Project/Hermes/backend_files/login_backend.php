<?php
include("../backend_files/db_connection.php");
$username = $_POST['username_input'];
$password = $_POST['password_input'];
$login_status = "Unsuccessful";

if(trim($username) == "" || trim($password) == "" ){
  echo "Please enter a valid username."."<br>";

  sleep(1);
  $url = "index.php";
  header("Refresh: 2; URL= $url");
}

else {
  $sql = "SELECT merchant.userName, merchant.PASSWORD \n"

    . "FROM merchant\n"

    . "WHERE merchant.userName = '$username' AND merchant.PASSWORD = '$password' ";

  $result = mysqli_query($conn, $sql);
  $row_num = mysqli_num_rows($result);
  if($row_num==1) $login_status = "Successful";

}

if($login_status == "Successful"){
  $url = "../login_landing.php";
  header("Refresh: 2; URL= $url");

}
else{
  echo $login_status;
  $url = "../index.php";
  header("Refresh: 2; URL= $url");
}


?>
