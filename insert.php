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
else{
    echo "<script> alert('User not created')</script>"
}
}
?>
