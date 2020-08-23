
 <?php 
ob_start();
session_start();
if(isset($_SESSION['loged-in'])) {
    $loggedin = $_SESSION['loged-in'];
    $login_level = $_SESSION['login_level'];
    if($loggedin)
	{
		if($login_level==1){
		header("location: admin/dashboard.php");}
		else if($login_level==2){
		header("location: teacher/dashboard.php");}
		else if($login_level==3){
		header("location: parent/dashboard.php");}
	}
	else{
header("Location: login.php");}}
else	{header("location: login.php");
	exit;
}
?>
