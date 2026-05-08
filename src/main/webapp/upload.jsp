<!-- upload.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload Image</title>
</head>
<body>

<h2>Upload Image</h2>

<form method="post" enctype="multipart/form-data">

<input type="file" name="image">
<br><br>

<input type="submit" value="Upload">

</form>

</body>
</html>