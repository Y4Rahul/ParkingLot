<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="main.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spot booking</title>
<script type="text/javascript" src="main.js"></script>
</head>
<body>
<%@ include file="navbar.jsp" %>
<table class="table table-hover table-zebra table-blank">
	<thead>
		<tr>
		<th>Sr.No</th>
		<th>Spot Id</th>
		<th>Start Date</th>
		<th>Release Date</th>
		<th>Status</th>
		</tr>
	</thead>
	<tbody>
		<tr>
		<td>1</td>
		<td>125</td>
		<td><%= request.getParameter("start_date") %></td>
		<td><%= request.getParameter("end_date") %></td>
		<td><button id="book">Release Spot</button></td>
		</tr>
	</tbody>
</table>

		<div id="tobook" class="modal" style="display:none;">
			Booking Confirmation
		</div>
<script>
$book = k$.modal('#tobook');
k$.$('#book').addEventListener('click',function(e){
	$book.style.display = 'block';
	e.stopPropagation();
});
</script>
</body>
</html>