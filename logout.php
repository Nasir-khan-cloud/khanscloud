
 <?php 
session_start();
$_SESSION['loged-in']=0;
header("Location: login.php");
session_destroy();
exit;
?>