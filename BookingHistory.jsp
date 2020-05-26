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
</head>
<%@ include file="conn.jsp"%>

   
<body>
<form id="form1" name="form1" method="post" action="">

  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table rules="rows" width="708" border="8" align="center" cellpadding="5" cellspacing="5">
    <tr>
      <td colspan="2" align="center"><img src="img/the-car-park.png" width="273" height="167" /></td>
    </tr>
    <tr>
      <td align="center">&nbsp;</td>
      <td align="right"><a href="BookingCarParkingDetails.jsp">Back</a></td>
    </tr>
    <tr>
      <td width="125" align="center"><span class="style201">Check In Time</span></td>
      <td width="125" align="center"><span class="style201">Check Out Time</span></td>
    </tr>
    <%
			
			String val=request.getParameter("value").toString();
			
					
String query="select * from bookingcar where parkingspotno='"+val+"'";
ResultSet rs=st.executeQuery(query);
				
            while(rs.next())
{
%>
    <tr>
      <td align="center"><span style="font-size:12px"><%=rs.getString(3)%></span></td>
      <td align="center"><span style="font-size:12px"><%=rs.getString(4)%></span></td>
      <%
}
%>
    </tr>
  </table>
</form>
</body>
</html>