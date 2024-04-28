<?php
if(isset($_POST['btn'])){
    include("cnx.php");
     $name=$_POST["name"];
     $login=$_POST["login"];
     $pass=$_POST["password"];
     $Adress=$_POST["Adress"];
     $req="INSERT INTO acepter_sousadmin (name,LOGIN ,Password,Adress) VALUES ('$name','$login','$pass','$Adress')";
     echo $req;
     $res=mysqli_query($cnx,$req);
     if(isset($res)){
      header("Location:index.php");
     }
    }
?>