<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spot Searching</title>
<link rel="stylesheet" href="main.css" />
<style>
.row{
width:1350px;
}
</style>
<script type="text/javascript" src="main.js"></script>
</head>
<body>
<%--here comes the navigation bar --%>
	<%@ include file="navbar.jsp" %>
	
	<div class="col-12" style="text-align:center;">
		Welcome to Dolby Parking
	</div>
	
	<div class="row"  style="text-align:center;">
		<div class="col-3">
			start date
		</div>
		<div class="col-3">
			End date
		</div>
		<div class="col-3">
			I am requesting a parking spot for a 
		</div>
		<div class="col-3">
			Spot Id
		</div>
		
	  <form action="spots.jsp" method="post">	 
		<div class="row" style="text-align:center;">
			<div class="col-3">
				<center>
					<input type="date" name="start_date">
				</center>
			</div>
			<div class="col-3">
				<center>
					<input type="date" name="end_date">
				</center>
			</div>
			<div class="col-3">
				<center>
					<select>
						<option value="Employee">Employee</option>
						<option value="Visitor">Visitor</option>
					</select>
				</center>
			</div>
			<div class="col-3">
				<center>
					<input type="text" name="spot_id">
				</center>
			</div>
		</div>
		
		<div class="col-12">
			<button type="submit" class="button button-green button-large">NEXT>></button>
		</div>
	 </form>
	</div>
</body>
</html>