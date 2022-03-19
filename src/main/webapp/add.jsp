<%@page import="java.util.*"%>
<%@ page import="java.util.*,goodies.product.*"  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Add Today Stocks</title>
  <!-- bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <!-- jquery -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- icons -->
  <script src="https://kit.fontawesome.com/788c897afd.js" crossorigin="anonymous"></script>
  <!-- fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="crossorigin">
  <link href="https://fonts.googleapis.com/css2?family=ZCOOL+QingKe+HuangYou&display=swap" rel="stylesheet">
  
  <!-- Jquery autoComplete -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
  
  <!-- source -->
  <link rel="stylesheet" href="add.css">
  
 <script type="text/javascript">
	$(document).ready( function(){
		var arr=[];
		<%
		ArrayList<String> al =goodies.product.getProductNames(); %>
		<% for (int i=0; i<al.size(); i++) { %>
		arr[<%= i %>] = "<%= al.get(i) %>"; 
		<% } %>
		
		$("#val").autocomplete({
			source:arr
		});
		
		$("#add").click(function () {
			var exList=$("#list").val();
			var product=$("#val").val();
			var count=$("#pCount").val();
			if(product=="" || count=="")
				return;
			if(exList!="")
				$("#list").val(exList+", "+product+":"+count);
			else
				$("#list").val(product+":"+count);
			$("#val").val("");
			$("#pCount").val("");
			$("#val").focus();
		});
	});
	function formValidation(){
		var product=$("#val").val();
		var count=$("#pCount").val();
		if(product!="" || product!=""){
			alert("Please add before submit");
			return false;
		}
		return true;
	}
  </script>
  </head>
  <style>
  body {background-color: powderblue;}
  .date{font-size: 18px;}
  </style>
<body>
	<nav class="navbar navbar-light bg-dark justify-content-between">
  <a class="navbar-brand brand text-white">brand</a>
  <form class="form-inline">
    <p class="date text-white">Today's date: <%= (new java.util.Date()).toLocaleString()%></p>
  </form>
</nav>
  <div class="content container-fluid col-lg-8">
    <form id="addForm" autocomplete="on" action="./add" method="post" onsubmit="return formValidation();">
      <div class="form-group">
        <label for="val">Product</label>
        <input type="text" class="form-control" id="val" placeholder="Enter Product" autofocus>
      </div>
      <div class="form-group">
        <label for="pCount">Count</label>
        <input type="number" class="form-control" id="pCount" placeholder="count">
      </div>
      <input type="button" value="Add" name="add" id="add"  class="btn btn-primary">
      <div class="form-froup">
      <label for="para">List</label><br>
      <textarea id="list" name="list" rows="5" cols="35"></textarea>
      </div>
      <input type="submit" value="Submit" name="submit" id="submit"  class="btn btn-primary">
    </form>
  </div>
</body>

</html>
