<?php
  
// Get the user id 
$user_id = $_REQUEST['user_id'];
  
// Database connection
$con = mysqli_connect("localhost", "root", "", "cj");

  
if ($user_id !== "") {
      
    
    $query = mysqli_query($con, "SELECT pName, CJprice FROM item WHERE pId='$user_id'");
  
    $row = mysqli_fetch_array($query);
  
    // Get the first name
    $first_name = $row["pName"];
  
    // Get the first name
    $last_name = $row["CJprice"];
}
  
// Store it in a array
$result = array("$first_name", "$last_name");
  
// Send in JSON encoded form
$myJSON = json_encode($result);
echo $myJSON;
?>