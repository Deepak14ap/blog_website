<?php include "config/config.php";?>
<?php 
    if(isset($_POST['submit'])){
        $username=$_POST['uname'];
        $password=$_POST['psw'];
        if($username==USERNAME && $password==PASSWORD){
            header("Location: admin/index.php");
            exit();
        }
        else{
            header("Location: login.php?msg=".urlencode("Wrong Information"));
            exit();
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="login.css">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">

    <title>Login</title>
</head>
<body>
    
</body>
</html>

<?php if(isset($_GET['msg'])): ?>
            <div class="alert alert-danger" ><?php echo htmlentities($_GET['msg']);?></div>
<?php endif; ?>

<form action="login.php" method="post">
  <div class="imgcontainer">
    <img src="images/img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit" name="submit">Login</button>
    
  </div>



</form>