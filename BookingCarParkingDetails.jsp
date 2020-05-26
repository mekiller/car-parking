<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body,td,th {
}
.style1 {
	color: #460A0A
}
#Layer1 {
	position:absolute;
	left:428px;
	top:211px;
	width:492px;
	height:228px;
	z-index:1;
}
.style13 {font-size: 24px}
body {
	background-image: url();
}
#form4 td table tr td table tr td h1 {
	text-align: center;
	color: #55080E;
}
#form4 td table tr td .style1 {
	color: #400809;
}
#form4 table tr td table tr td h1 {
	text-align: center;
	color: #03C;
}
#form4 table tr td table tr td {
}
#form4 table tr td table tr td a {
	font-size: 12px;
}
#form4 table tr td a {
}
.off {border:1px outset;
color:#369;
background:#f9d543; 
}
.on {border:1px outset;
color:#369;
background:#efefef; 
}
h2 {
	color: #FFF;
}
td {
	font-weight: bold;
}
td {
	font-weight: normal;
}
span {
	text-align: left;
}
table {
}
#form4 table tr td table tr td table {
	text-align: center;
}
#form4 table tr td table tr td table tr td p img {
	text-align: center;
}
#form4 table tr td table tr td table tr td #sprytextfield1 {
	text-align: center;
}
#form4 table tr td table tr td table tr td {
}
-->
</style>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
  
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
</head>
<%@ include file="conn.jsp"%>
<body>
<form   id="form4" name="form4" method="post"  action="process.jsp">

<%!
  String  tot="";
%>
  <table  width="80%" height="943" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="521" bgcolor="#000000"><img src="img/the-car-park.png" width="273" height="167" /><br /></td>
      <td width="564" bgcolor="#000000"><table width="54%" height="167" border="1" align="right" cellpadding="5" cellspacing="5" rules="rows">
        <tr>
          <td height="34" colspan="2"><span id="sprytextfield1">
            <input name="text1" type="text" id="text1" value="Car Number" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
        <tr>
          <td width="81" height="34"><span id="sprytextfield2">
            <input name="text2" type="text" id="text2" value="mm/dd/yyyy HH:mm" size="13" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          <td width="209"><span id="sprytextfield3">
            <input name="text3" type="text" id="text3" value="mm/dd/yyyy HH:mm" size="13" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
        <tr>
          <td height="34" colspan="2"><select name="text4" id="text4">
            <option>Spot No</option>
              <%
			  int statussval=0;
			
String query="select * from parkingsloatno where statuss="+statussval+"";
ResultSet rs=st.executeQuery(query);
			
           
		  while(rs.next())
		   
{
	
	
%>
              <option><%=rs.getString(1)%></option>
              <%
}



%>
          </select></td>
</tr>
        <tr>
          <td height="38" colspan="2"><input type="submit" name="button2" id="button2" value="Submit" />
            <a href="welcome.jsp">Back</a><%=session.getAttribute("mg")%></td>
        </tr>
      </table></td>
    </tr>
  <tr>
    <td height="600" colspan="2" valign="top"><table  rules="none" width="100%" border="1" cellpadding="1" cellspacing="1">
      <tr>
        <td height="25" colspan="3" align="right" bgcolor="#E40001">&nbsp;
          <%=session.getAttribute("bd1")%></td>
      </tr>
      <tr>
        <td colspan="3" align="right" bgcolor="#262022"><h2><img src="img/hdd.jpg" width="299" height="60" /></h2></td>
      </tr>
      <tr>
        <td colspan="3"><h2>&nbsp;</h2></td>
      </tr>
      <tr>
        <td width="30%" align="center" valign="top">
          <table  rules="none" width="115" height="46" border="1">
            <tr>
              <td bgcolor="#0E3274">1</td>
            </tr>
            <tr>
              <td><p><img src="img/1.jpg" width="50" height="100" /></p><img src="imaseat/1.jpg" width="50" height="100" /></td>
            </tr>
            <tr>
              <td><a href="BookingHistory.jsp?value=1">Booking History</a></td>
            </tr>
          </table>
          <p><br />
        </p></td>
        <td width="30%" align="center" valign="top">
          <table rules="none" width="115" height="46" border="1">
            <tr>
              <td bgcolor="#0E3274">2</td>
            </tr>
            <tr>
              <td><p><img src="img/1.jpg" width="50" height="100" /></p><img src="imaseat/2.jpg" width="50" height="100" /></td>
            </tr>
            <tr>
              <td><a href="BookingHistory.jsp?value=2">Booking History</a></td>
            </tr>
          </table>
          <p>&nbsp;</p></td>
        <td width="30%" align="center" valign="top"><table rules="none" width="115" height="46" border="1">
          <tr>
            <td bgcolor="#0E3274">3</td>
          </tr>
          <tr>
            <td><p><img src="img/1.jpg" width="50" height="100" /></p><img src="imaseat/3.jpg" width="50" height="100" /></td>
          </tr>
          <tr>
            <td><a href="BookingHistory.jsp?value=3">Booking History</a></td>
          </tr>
        </table>          <p>&nbsp;</p></td>
      </tr>
      <tr>
        <td width="30%" height="298" align="center"><table rules="none" width="115" height="46" border="1">
          <tr>
            <td bgcolor="#0E3274">4</td>
          </tr>
          <tr>
            <td><p><img src="img/1.jpg" width="50" height="100" /></p><img src="imaseat/4.jpg" width="50" height="100" /></td>
          </tr>
          <tr>
            <td><a href="BookingHistory.jsp?value=4">Booking History</a></td>
          </tr>
        </table>          <p>&nbsp;</p></td>
        <td width="30%" align="center"><table rules="none" width="115" height="46" border="1">
          <tr>
            <td bgcolor="#0E3274">5</td>
          </tr>
          <tr>
            <td><p><img src="img/1.jpg" width="50" height="100" /></p><img src="imaseat/5.jpg" width="50" height="100" /></td>
          </tr>
          <tr>
            <td><a href="BookingHistory.jsp?value=5">Booking History</a></td>
          </tr>
        </table>          <p>&nbsp;</p></td>
        <td width="30%" align="center"><table rules="none" width="115" height="46" border="1">
          <tr>
            <td bgcolor="#0E3274">6</td>
          </tr>
          <tr>
            <td><p><img src="img/1.jpg" width="50" height="100" /></p><img src="imaseat/6.jpg" width="50" height="100" /></td>
          </tr>
          <tr>
            <td><a href="BookingHistory.jsp?value=6">Booking History</a></td>
          </tr>
        </table>          <p>&nbsp;</p></td>
      </tr>
      <tr>
        <td height="298" align="center"><table rules="none" width="115" height="46" border="1">
          <tr>
            <td bgcolor="#0E3274">6</td>
          </tr>
          <tr>
            <td><p><img src="img/1.jpg" width="50" height="100" /></p>
              <img src="imaseat/7.jpg" width="50" height="100" /></td>
          </tr>
          <tr>
            <td><a href="BookingHistory.jsp?value=7">Booking History</a></td>
          </tr>
        </table></td>
        <td align="center"><table rules="none" width="115" height="46" border="1">
          <tr>
            <td bgcolor="#0E3274">6</td>
          </tr>
          <tr>
            <td><p><img src="img/1.jpg" width="50" height="100" /></p>
              <img src="imaseat/8.jpg" width="50" height="100" /></td>
          </tr>
          <tr>
            <td><a href="BookingHistory.jsp?value=8">Booking History</a></td>
          </tr>
        </table></td>
        <td align="center"><table rules="none" width="115" height="46" border="1">
          <tr>
            <td bgcolor="#0E3274">6</td>
          </tr>
          <tr>
            <td><p><img src="img/1.jpg" width="50" height="100" /></p>
              <img src="imaseat/9.jpg" width="50" height="100" /></td>
          </tr>
          <tr>
            <td><a href="BookingHistory.jsp?value=9">Booking History</a></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="298" align="center"><table rules="none" width="115" height="46" border="1">
          <tr>
            <td bgcolor="#0E3274">6</td>
          </tr>
          <tr>
            <td><p><img src="img/1.jpg" width="50" height="100" /></p>
              <img src="imaseat/10.jpg" width="50" height="100" /></td>
          </tr>
          <tr>
            <td><a href="BookingHistory.jsp?value=10">Booking History</a></td>
          </tr>
        </table></td>
        <td align="center"><table rules="none" width="115" height="46" border="1">
          <tr>
            <td bgcolor="#0E3274">6</td>
          </tr>
          <tr>
            <td><p><img src="img/1.jpg" width="50" height="100" /></p>
              <img src="imaseat/11.jpg" width="50" height="100" /></td>
          </tr>
          <tr>
            <td><a href="BookingHistory.jsp?value=11">Booking History</a></td>
          </tr>
        </table></td>
        <td align="center"><table rules="none" width="115" height="46" border="1">
          <tr>
            <td bgcolor="#0E3274">6</td>
          </tr>
          <tr>
            <td><p><img src="img/1.jpg" width="50" height="100" /></p>
              <img src="imaseat/12.jpg" width="50" height="100" /></td>
          </tr>
          <tr>
            <td><a href="BookingHistory.jsp?value=12">Booking History</a></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="298" align="center"><table rules="none" width="115" height="46" border="1">
          <tr>
            <td bgcolor="#0E3274">6</td>
          </tr>
          <tr>
            <td><p><img src="img/1.jpg" width="50" height="100" /></p>
              <img src="imaseat/13.jpg" width="50" height="100" /></td>
          </tr>
          <tr>
            <td><a href="BookingHistory.jsp?value=13">Booking History</a></td>
          </tr>
        </table></td>
        <td align="center"><table rules="none" width="115" height="46" border="1">
          <tr>
            <td bgcolor="#0E3274">6</td>
          </tr>
          <tr>
            <td><p><img src="img/1.jpg" width="50" height="100" /></p>
              <img src="imaseat/14.jpg" width="50" height="100" /></td>
          </tr>
          <tr>
            <td><a href="BookingHistory.jsp?value=14">Booking History</a></td>
          </tr>
        </table></td>
        <td align="center"><table rules="none" width="115" height="46" border="1">
          <tr>
            <td bgcolor="#0E3274">6</td>
          </tr>
          <tr>
            <td><p><img src="img/1.jpg" width="50" height="100" /></p>
              <img src="imaseat/15.jpg" width="50" height="100" /></td>
          </tr>
          <tr>
            <td><a href="BookingHistory.jsp?value=15">Booking History</a></td>
          </tr>
        </table></td>
      </tr>
    </table>
     </td>
  </tr>
  <tr>
    <td colspan="2" valign="top">&nbsp;</td>
    </tr>
  </table>

</form>
<script type="text/javascript">
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
</script>
</body>
</html>
