<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Create User</title>
<link rel="stylesheet" href="user1.css">
</head>

<body>
<?php
include 'config.php';
if(isset($_POST['submit'])){
$name=$_POST['name'];
$email=$_POST['email'];
$balance=$_POST['balance'];
$sql="insert into users(name,email,balance) values('{$name}','{$email}','{$balance}')";
$result=mysqli_query($conn,$sql);
if($result){
echo "<script> alert('User created Sucessfully!');
window.location='transfermoney.php';
</script>";

}
}
?>

<?php
include 'navbar.php';
?>


<div class="back">
<form method="post">
<div class="title">Create User</div>

<div class="input-container ic1">
<input class="cut" placeholder="NAME" type="text" name="name" required>
</div>

<div class="input-container ic2">
<input class="cut" placeholder="EMAIL" type="email" name="email" required>
</div>

<div class="input-container ic2">
<input class="cut" placeholder="BALANCE" type="number" name="balance" required>
</div>


<br>

<input class="buttons button1" type="submit" value="CREATE" name="submit"></input>
<input class="buttons button2" type="reset" value="RESET" name="reset"></input>

</form>
</div>

</body>
</html>