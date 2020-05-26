<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
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
	background-image: url();
}
</style>
</head>
<%@ include file="conn.jsp"%>
<body>
<form id="form1" name="form1" method="post" action="">
  <p>
    <%
session.setAttribute("psc",".");
%>
  </p>
  <p>&nbsp;</p>
  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td bgcolor="#616161"><img src="img/the-car-park.png" width="273" height="143" /></td>
    </tr>
    <tr>
      <td height="33" valign="top"><table width="100%" border="0" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <td align="center"><a href="CarVerificationCheck.jsp"><img src="img/veri.png" width="300" height="60" border="5" /></a></td>
          <td align="center"><a href="feedback_report.jsp"><img src="img/fee.jpg" width="300" height="60" border="5" /></a></td>
          <td align="center"><a href="ViewBookingDetails_admin.jsp"><img src="icon/y6.png" width="300" height="82" /></a></td>
          <td align="center"><a href="login.jsp"><img src="img/lll.jpg" width="300" height="60" border="5" /></a></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td align="center" valign="top" bgcolor="#FFFFFF"><p>&nbsp;</p>
      <p><img src="img/swww.jpg" width="870" height="423" /></p>
      <p>&nbsp;</p></td>
    </tr>
  </table>
</form>
</body>
</html>