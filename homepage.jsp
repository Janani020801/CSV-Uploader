<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>


<head>
<meta charset="ISO-8859-1">

<title>CSV Uploader</title>


<style>
	div.file label,input{
		margin : 20px;
		margin-top : 10px;
		padding : 10px;
	}
	h1{
	color : red;
	}
</style>
</head>
<body>
	<h1 align="center">CSV UPLOADER</h1>
	<form action="upload.jsp">
		<div align="center" class="file">
			<label>Enter your name</label>
			<input type="text" name="name" required>
		</div>
		<div align="center" class="file">
			<label>Enter Password</label>
			<input type="password" name="pass" required>
		</div>
		<div align="center" class="file">
			<label>Upload File Here</label>
			<input type="file" name="file" required><br>
			<button type="submit">Submit</button>
		</div>
	</form>
<%
String flag = request.getParameter("msg");
	if("success".equals(flag)){
		%>
		<h5 align="center">Uploaded Successfully</h5>
	<%
	}
	%>
	<%
		if("falied".equals(flag)){
	%>
	<h5 align="center">Upload Failed</h5>
	<%} %>

</body>
</html>