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
</head>
<%@ include file="conn.jsp"%>
<body>
<form id="form1" name="form1" method="post" action="">
  <table width="90%" border="0" align="center" cellpadding="5" cellspacing="5">
    <tr>
      <td bgcolor="#676767"><img src="img/hddd.png" width="1100" height="205" /></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FF980B"><a href="welcome.jsp">Home</a></td>
    </tr>
    <tr>
      <td width="893" valign="top"><table width="100%" height="150" border="1" align="center" cellpadding="6" cellspacing="6" rules="none">
          <tr>
            <td width="1315" colspan="3" align="center" bgcolor="#CC6633"><h2>User Booking Details</h2></td>
          </tr>
          <tr>
            <td colspan="3"><table width="100%" align="center" cellpadding="4" cellspacing="4">
              <tr>
                <td colspan="4"><hr /></td>
              </tr>
              <tr>
                <td width="128" align="center"><strong>User Name</strong></td>
                <td width="128" align="center"><strong>Car No</strong></td>
                <td width="128" align="center"><strong>Check In</strong></td>
                <td width="128" align="center"><strong>Check Out</strong></td>
                </tr>
              <tr>
                <td colspan="4" align="center"><hr /></td>
              </tr>
              <tr>
               
                <%
		  

String query="select * from bookingcar";
ResultSet rs=st.executeQuery(query);
int i=0;

				
            while(rs.next())
{
	
	i++;
				
	
	
%>
                <td align="center" style="font-size:12px"><%=rs.getString(1)%></td>
                <td align="center" style="font-size:12px"><%=rs.getString(2)%></td>
                <td align="center" style="font-size:12px"><%=rs.getString(3)%></td>
                <td align="center" style="font-size:12px"><%=rs.getString(4)%></td>
                </tr>
              <%
				}
			
				%>
              
            </table></td>
          </tr>
        </table>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td bgcolor="#FF980B">&nbsp;</td>
    </tr>
  </table>
 
</form>
</body>
</html>