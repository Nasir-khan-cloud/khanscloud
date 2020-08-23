<?php
	$msg="";
	
	require_once 'config.php';
	
	$app_details_query= "SELECT* FROM setting";
	$app_details=mysqli_query($connect,$app_details_query);											
	$app_detail=mysqli_fetch_array($app_details,MYSQLI_BOTH);
	
	session_start();
	session_name("MyLogin");
	if(isset($_POST['login'])){

	$username=$_POST['username'];
	$password=$_POST['password'];
	$login_level=$_POST['login_level'];
	if($login_level==1){
	$login_query = 'SELECT* FROM admin ';
	}
	else if($login_level==2){
	$login_query = 'SELECT* FROM teacher ';		
	}
	else if($login_level==3){
	$login_query = 'SELECT* FROM parent ';		
	}
   $rows = mysqli_query(  $connect,$login_query);
   if(! $rows ) {
      $msg= "Could not get data! ";
   }
   foreach($rows as $row):
	if(($username==$row['email']&&$password==$row['password']) || ($username==$row['username']&&$password==$row['password']))
    {
			
		$msg="";
		if($login_level==1){
		$_SESSION['user_id']  = $row['admin_id'];
		}
		else if($login_level==2){
		$_SESSION['user_id'] = $row['teacher_id'];	
		}
		else if($login_level==3){
		$_SESSION['user_id'] = $row['parent_id'];		
		}
		
		
		$_SESSION['user_full_name'] = $row['name'];	  
		$_SESSION['loged-in'] = 1;	  
		$_SESSION['login_level'] = $login_level;	  
		header ("location: index.php");
		exit;
	}
	else{
		$msg="Wrong Email and Password Combination";
	}
   endforeach;
   mysqli_close($connect);}
   ?>
   
   
<!DOCTYPE html>
<html>
	<head>
		<style>
		td,h2{color: #fff;}
		td{font-size: 18px;}
		#level{width: 200px;height: 30px;margin-top: 10px;}
		table{border: 1px solid #ddd;padding: 5% 15% 5% 15%;}
		</style>
		<title>Login ||<?php echo $app_detail['system_title'];?> </title>
	</head>
	<body style=" width:100%;background-color:#373e4a">
		<div id="login-main" align="center">
			<form method="POST"><table>
				<tr><td><h2><strong><?php echo $app_detail['system_name'];?></strong></h2></td></tr>
				
				<tr><td><h5><?php echo $msg;?></h5></td></tr>
				<tr><td>Email/Username: </td>
				<td><input style="height:30px;width:200px;margin-bottom: 20px;" type="text" name="username" placeholder="User name"></input></td></tr>
				
				<tr><td>Password: </td>
				<td><input style="height:30px;width:200px" type="password" name="password" placeholder="Your Password"></input></td></tr><br>
				<tr><td></td>
				<td>
					<select name="login_level" id="level">
						<option value="1"> Admin</option>
						<option value="2"> Doctor</option>
					</select>
				</td>
				</tr>
				<tr><td colspan="2">
				<div><input style="margin-top: 20px;height:30px;width:100px" type="submit" name="login" value="Login"></input></div>
				</td></tr>
			</table>
			</form>
			</div >
			<div style="color: white"><h3> Developed by: Group C</h3>
		</div>
		
	</body>
</html>