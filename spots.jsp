
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="main.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spots</title>
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
	
<table class="table table-hover table-zebra table-blank">
	<thead>
		<tr>
		<th>Sr.No</th>
		<th>Spot Id</th>
		<th>Start Date</th>
		<th>Release Date</th>
		<th>Assigned to</th>
		</tr>
	</thead>
	<tbody>
		<tr>
		<td>1</td>
		<td>125</td>
		<td><%= request.getParameter("start_date") %></td>
		<td><%= request.getParameter("end_date") %></td>
		<td>rahul</td>
		</tr>
	</tbody>
</table>
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