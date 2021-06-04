<?php 
    session_start();
    define('SECURITY', True);
    include_once('config/connect.php');
    $cus_id = $_GET['cus_id'];
    if(isset($_SESSION['mail']) && isset($_SESSION['pass'])){
        $sql = "DELETE FROM customer WHERE cus_id = $cus_id";
        mysqli_query($conn,$sql);
        header("location: index.php?page_layout=customer");
    }
?>