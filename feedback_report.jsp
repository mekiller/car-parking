<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body,td,th {
	font-weight: normal;
}
.style1 {color: #FFFFFF}
.style2 {color: #00FFFF}
.style10 {font-size: 12px}
.style12 {color: #990000}
.style16 {color: #FF0000}
.style17 {font-size: 14px}
.style18 {font-size: 14}
.style19 {color: #FFFFFF; font-size: 12px; }
#form1 table tr td a {
	font-size: 12px;
}
-->
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.style15 {
	font-size: 16px;
}
.style191 {
	font-size: 11px;
	font-weight: normal;
}
.style20 {
	font-size: 14px;
	font-weight: bold;
}
.style201 {
	font-size: 14px;
	font-weight: bold;
}
.style202 {
	font-size: 14px;
	font-weight: bold;
}
</style>
</head>
<%@ include file="conn.jsp"%>
<body>
</form>
<form id="form1" name="form1" method="post" action="">
  <table width="100%" border="0" align="center" cellpadding="5" cellspacing="5">
    <tr>
      <td bgcolor="#656565"><h1><img src="img/5580-siteheader.jpg" width="940" height="170" /></h1></td>
    </tr>
    <tr>
      <td height="43" valign="top" bgcolor="#CE8516"><a href="admin.jsp"></a></td>
    </tr>
    <tr>
      <td width="996" valign="top"><p>&nbsp;</p>
        <table width="1086" border="0" align="center" cellpadding="5" cellspacing="5">
          <tr>
            <td width="125" align="center"><span class="style20"> Name</span></td>
            <td width="125" align="center"><span class="style201">Phone</span></td>
            <td width="125" align="center"><span class="style20">Email</span></td>
            <td width="125" align="center"><span class="style202">Suggestions Feedback</span></td>
          </tr>
         
           <%
					
String query="select * from feedback";
ResultSet rs=st.executeQuery(query);
				
            while(rs.next())
{
%>
 <tr>
            <td align="center"><span style="font-size:12px"><%=rs.getString(1)%></span></td>
            <td align="center"><span style="font-size:12px"><%=rs.getString(2)%></span></td>
            <td align="center"><span style="font-size:12px"><%=rs.getString(3)%></span></td>
            <td align="center"><span style="font-size:12px"><%=rs.getString(4)%></span></td>
            <%
}
%>
          </tr>
        </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td bgcolor="#CD8415">&nbsp;</td>
    </tr>
  </table>
</form>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
