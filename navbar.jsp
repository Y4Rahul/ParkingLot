<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="main.css" />
<title></title>
</head>
<style>
.navbar nav>ul>li>a:not([role=button]) {
    color: rgba(247,152,152,1);
}
</style>
<script type="text/javascript" src="main.js"></script>
<body>
	<header class="navbar navbar-fluid">
  <nav style="background-color: #333;">
    <ul>
      <li> <a href="index.jsp">Home</a> </li>
    </ul>
    <ul>
    	<li> <a href="bookedspot.jsp">Edit Parking Spot</a> </li>
    	<li> <a href="searchspot.jsp">Search Spot</a> </li>
    	<li> <a href="">Report</a> </li>
        <li> <button id="sample">login/Sign up</button> </li>
    </ul>
    
    <div id="modal1" class="modal" style="display:none;">
    
    <header style="float:center;">
    <button id="login" onclick="login()">login</button>
    <button id="register"  onclick="register()">Register</button>
    <span style="float:right;"><a data-modal-close="true" href="#">x</a></span>
    </header>
    <form>
    <div>
    <div id="login-content">
    	<div class="row" style="text-align:center;">
    		<div class="col-6">
    			Username:
    		</div>
    		<div class="col-6">
    			<input type="text" name="username" autofocus/>
    		</div>
    	</div>
    	<div class="row" style="text-align:center;">
    		<div class="col-6">
    			Password:
    		</div>
    		<div class="col-6">
    			<input type="password" name="password" />
    		</div>
    	</div>
    </div>
    <div id="register-content" style="display:none;">
    	<div class="row" style="text-align:center;">
    		<div class="col-6">
    			First Name:
    		</div>
    		<div class="col-6">
    			<input type="text" name="first_name" autofocus/>
    		</div>
    	</div>
    	<div class="row" style="text-align:center;">
    		<div class="col-6">
    			Last Name:
    		</div>
    		<div class="col-6">
    			<input type="text" name="last_name"/>
    		</div>
    	</div>
    	<div class="row" style="text-align:center;">
    		<div class="col-6">
    			Email:
    		</div>
    		<div class="col-6">
    			<input type="email" name="email_id"/>
    		</div>
    	</div>
    	<div class="row" style="text-align:center;">
    		<div class="col-6">
    			Mobile No.:
    		</div>
    		<div class="col-6">
    			<input type="text" name="mobile_number"/>
    		</div>
    	</div>
    	<div class="row" style="text-align:center;">
    		<div class="col-6">
    			Username:
    		</div>
    		<div class="col-6">
    			<input type="text" name="username"/>
    		</div>
    	</div>
    	<div class="row" style="text-align:center;">
    		<div class="col-6">
    			Password:
    		</div>
    		<div class="col-6">
    			<input type="password" name="password" />
    		</div>
    	</div>
    </div>
    </div>
    <footer style="text-align:center;"> 
      		<button type="submit" class="button button-primary">Login</button>
    </footer>
    </form>
    </div>
  </nav>
</header>
</body>
<script>
$sampleModal = k$.modal('#modal1');
k$.$('#sample').addEventListener('click', function(e) {
  $sampleModal.style.display = 'block';
  e.stopPropagation();
})
k$.$('#modalclose').addEventListener('click', function() {
  k$.$('#modal1').style.display = 'none';
});
function register(){
	document.getElementById('login-content').style.display = "none";
	document.getElementById('register-content').style.display = "block";
}
function login(){
	document.getElementById('register-content').style.display = "none";
	document.getElementById('login-content').style.display = "block";
}
</script>
</html>