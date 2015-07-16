<!DOCTYPE html>
<html>
<head>
	<title>LabcliQ by SafetyStratus</title>
	<!--- stylesheet includes --->
	<link rel="stylesheet" type="text/css" href="css/fonts.css">
	<link rel="stylesheet" type="text/css" href="css/jquery.mobile-1.4.5.css">
	<link rel="stylesheet" type="text/css" href="css/labcliq.css">
	<!--- javascript includes --->
	<script src="js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="js/jquery.mobile-1.4.5.js"></script>
	<script src="js/storage.js"></script>
	<script src="js/application.js"></script>
</head>
<body>
	<div data-role="page" id="main-menu">
		<div data-role="header">
			<h1>LabcliQ by SafetyStratus</h1>
		</div>
		<div role="main" class="ui-content">
			<a href="#login" data-transition="pop" class="ui-btn ui-corner-all ui-btn-inline">Login</a>
		</div>
	</div>
	<div data-role="page" id="login">
		<div data-role="header">
			<h1>Login</h1>
		</div>
		<div role="main" class="ui-content">
			<form id="login_form" class="ui-body ui-body-a ui-corner-all">
				<fieldset>
					<label for="login_email_input">Email Address:</label>
		    		<input type="text" name="login_email_input" id="login_email_input" value=""  />
		    		<label for="login_password_input">Password:</label>
		    		<input type="password" name="login_password_input" id="login_password_input" value=""  />
		    		<input type="button" id="login_submit" value="Submit" class="ui-btn ui-corner-all" aria-disabled="false" />
				</fieldset>
    		</form>
			<a href="#page1" data-rel="back" data-transition="pop" class="ui-btn ui-corner-all ui-btn-inline">Go Back To Main Menu</a>
		</div>
	</div>
</body>
</html>



<script type="text/javascript">
	$(document).ready(function(){
		// initialize DB
		initDB();
		// set flags
		localStorage.db_created = true;
		localStorage.logged_in = false;
		// initialize application
		initApplication();
	});
	
</script>
