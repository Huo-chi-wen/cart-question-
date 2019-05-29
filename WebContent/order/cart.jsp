<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>


</head>
<body>

      <table border="1">
      <tr>
      		<td>
      			
		    <td>
      			 NAME
      		<td>
      			PRICE
      		<td>
      			 QTY
      		<td>
      		 	SUBTOTAL
       <s:iterator var="cartItem" value="#session.CART.cartItem">
      	<tr>
      		<td>
      			<form action="remove">
		        	<input type="submit" value="remove">
		        </form>
		    <td>
      			 <s:property value="#cartItem.product.name"/>
      		<td>
      			 ${cartItem.product.price }
      		<td>
      			 ${cartItem.qty}
      		<td>
      		 	${cartItem.subtotal }
      		</s:iterator>
      </table>
  
        <br>
  
  <br>
  TOTAL:<s:property value="#session.CART.total"/>
  <br>
<form action="clear" method="post">
<input type="submit" value="clear all">
<a href="menu.jsp">menu</a>
</form>  

</body>

</html>