<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="style.css" />
    <link rel="icon" href="img/log.svg">
    <title>EL FATOUAKY</title>
  </head>
  <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form action="" class="sign-in-form" method="post">
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" name="login"/>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" name="password"/>
            </div>
            <input type="submit" value="Login" class="btn solid" name="btn"/>
          </form>

          <form action="autentification.php" method="Post" class="sign-up-form">
            <h2 class="title">Sign up</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" name="name"/>
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" placeholder="Email" name="login"/>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" name="password"/>
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="text" placeholder="Adress" name="Adress"/>
            </div>
            <input type="submit" class="btn" value="Sign up" name="btn"/>
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>New here ?</h3>
            <p>
              Don't have an account yet ? Register
            </p>
            <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
          </div>
          <img src="img/log.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>One of us ?</h3>
            <p>
              Already made an account here ? Sign in 
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
          </div>
          <img src="img/log.svg" class="image" alt="" />
        </div>
      </div>
    </div>

    <script src="app.js"></script>
  </body>
</html>
<?php
  if(isset($_POST['btn'])){
      include("cnx.php");
      $login=$_POST["login"];
      $pass=$_POST["password"];
      $req="SELECT * from admin";
      $res=mysqli_query($cnx,$req);
      while($d=mysqli_fetch_assoc($res)){
        if($d['LOGIN']==$login && $d['Password']==$pass){
          session_start();
          $_SESSION['name']=$d['name'];
          header("Location:Admin/index.php");
        } 
      }
      $req1="SELECT * from sous_admin ";
      $res1=mysqli_query($cnx,$req1);
      while($d=mysqli_fetch_assoc($res1)){
        if($d['LOGIN']==$login && $d['Password']==$pass){
          session_start();
          $_SESSION['name']=$d['name'];
          header("Location:Admin/index 1.php");
        } 
      }
  }
?>