<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
</script>
</html>