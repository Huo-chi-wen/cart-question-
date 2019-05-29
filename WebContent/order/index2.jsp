<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<form name="cart" action="cart">

	<tr>
		<td rowspan="5">
			<img alt="" src="image/book2.jpg" style="width: 200px;">
		</td>
		<tr><td>
			<h2>title</h2>
			<input type="hidden" name="p.id" value="2">
			<input type="hidden" name="p.name" value="book2">
			<input type="hidden" name="p.price" value="200">
		<tr><td>
			<p>content</p>
		
		<tr><td>
			<b>Buy new</b><p style="color:red;">$200</p>
			Qty:<input type="text" name="item.qty">
		<tr><td>
			<input type="submit" value="Add to Cart">
		</form>
		<a href="menu.jsp">menu</a>
</table>

</body>
</html>