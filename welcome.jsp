<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.style20 {	font-size: 14px;
	font-weight: bold;
}
.style201 {	font-size: 14px;
	font-weight: bold;
}
.style202 {	font-size: 14px;
	font-weight: bold;
}
</style>
<style type="text/css">
body {
	background-image: url(img/tyy.jpg);
}
</style>
</head>
<%//@include file="cancelAutoBooking.jsp"%>

   
<body>
<form id="form1" name="form1" method="post" action="">
 <p>
   <%@include file="header.jsp" %>
  <%
session.setAttribute("mg","");
session.setAttribute("bd1","");
%>
 </p>
 <table width="200" border="0" align="center">
   <tr>
    <td><img src="img/swww.jpg" width="700" height="500" /></td>
  </tr>
</table>
</form>
</body>
</html>