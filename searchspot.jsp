<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spot Searching</title>
<link rel="stylesheet" href="main.css" />
<style>
.navbar nav>ul>li>a:not([role=button]) {
    color: rgba(247,152,152,1);
}
.row{
width:1350px;
}
</style>
<script type="text/javascript" src="main.js"></script>
</head>
<body>
<%--here comes the navigation bar --%>
<header class="navbar navbar-fluid">
  <nav style="background-color: #333;">
    <ul>
      <li> <a href="index.jsp">Home</a> </li>
    </ul>
    <ul>
    	<li> <a href="#">Edit Parking Spot</a> </li>
    	<li> <a href="searchspot.jsp">Search Spot</a> </li>
    	<li> <a href="">Report</a> </li>
        <li> <button id="sample">login/Sign up</button> </li>
    </ul>
    <div id="modal1" class="modal" style="display:none;">
    <header>
    <h1>login</h1>
    <a data-modal-close="true" href="#">x</a>
    </header>
    <main>
    here comes the login content
    </main>
    <footer>
      <a id="modalclose" href="#" class="button button-primary">Close</a>
    </footer>
    </div>
  </nav>
</header>

	<div class="col-12" style="text-align:center;">
		Welcome to Dolby Parking
	</div>
	
	<div class="row"  style="text-align:center;">
		<div class="col-4">
			start date
		</div>
		<div class="col-4">
			End date
		</div>
		<div class="col-4">
			I am requesting a parking spot for a 
		</div>
		
		<form method="post" action="spots.jsp">
		<div class="row">
			<div class="col-4">
				<center>
					<input type="date" name="start_date">
				</center>
			</div>
			<div class="col-4">
				<center>
					<input type="date" name="end_date">
				</center>
			</div>
			<div class="col-4">
				<center>
					<select>
						<option value="Employee">Employee</option>
						<option value="Visitor">Visitor</option>
					</select>
				</center>
			</div>
		</div>
		
		<div class="col-12">
			<button class="button button-green button-large" type="submit">NEXT>></button>
		</div>
		</form>
	</div>
	<script>
$sampleModal = k$.modal('#modal1');
k$.$('#sample').addEventListener('click', function(e) {
  $sampleModal.style.display = 'block';
  e.stopPropagation();
})
k$.$('#modalclose').addEventListener('click', function() {
  k$.$('#modal1').style.display = 'none';
});
</script>
</body>
</html>