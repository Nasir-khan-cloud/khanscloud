<?php
// HTTP
define('HTTP_SERVER', 'http://localhost/hospital/admin/');

define('BASE_URL', 'http://localhost/hospital/');
define('ADMIN_URL', 'http://localhost/hospital/admin/');

//Directory

define('DIR_LANGUAGE', '/home1/darkhesper/SoftwareNTech/localhost/hospital/language/');
define('DIR_BASE', '/home1/darkhesper/SoftwareNTech/localhost/hospital/');

define('DIR_SYSTEM_IMAGE', '/C:/xampp/htdocs/hospital/image/');
define('DIR_STUDENT_IMAGE', '/C:/xampp/htdocs/hospital/image/student/');
define('DIR_TEACHER_IMAGE', '/C:/xampp/htdocs/hospital/image/teacher/');
define('DIR_PARENT_IMAGE', '/C:/xampp/htdocs/hospital/image/parent/');
define('DIR_ADMIN_IMAGE', '/C:/xampp/htdocs/hospital/image/admin/');
define('DIR_THEME_IMAGE', '/C:/xampp/htdocs/hospital/admin/style/images/');



// DB
	$connect = mysqli_connect('localhost', 'root', "",'hospital'); if(!$connect){die('Unable to connect to Admin Database');}

	
?>
