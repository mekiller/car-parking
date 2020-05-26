<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-image: url();
	background-repeat: repeat;
}
body,td,th {
}
</style>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
</head>


<body>

<form id="form1" name="form1" method="post" action="login_code.jsp">
 

  <table width="80%" border="0" align="center" cellpadding="2" cellspacing="2" rules="none">
    <tr>
      <td width="24%" valign="top" bgcolor="#262022"><img src="img/the-car-park.png" width="273" height="160" /></td>
      <td width="76%" height="131" valign="middle" bgcolor="#262022"><h1><em>
        <marquee direction="left">
        </marquee>
      </em><img src="img/carparkbanner.jpg" width="772" height="152" /></h1></td>
    </tr>
    <tr>
      <td height="374" colspan="2" valign="top">
     

   
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td bgcolor="#61604F"><img src="img/663K9l.gif" width="800" height="350" /></td>
          <td valign="top" bgcolor="#61604F"><table  rules="rows"width="299" height="150" border="0" cellpadding="2" cellspacing="2">
            <tr>
              <td height="28" colspan="2" align="center" valign="middle"><h3>Login Here</h3></td>
            </tr>
            <tr>
              <td width="107" height="28"><strong>User Name</strong></td>
              <td width="165"><span id="sprytextfield1">
                <input name="text1" type="text" id="text1" size="22" />
                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
            <tr>
              <td height="28"><strong>Password</strong></td>
              <td><span id="sprytextfield2">
                <input name="text2" type="password" id="text2" size="22" />
                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
            <tr>
              <td height="28"><strong>Select </strong></td>
              <td align="left"><select name="select" id="select">
                <option>User</option>
                <option>Admin</option>
              </select></td>
            </tr>
            <tr>
              <td bgcolor="#5F5F4E">&nbsp;</td>
              <td><input type="submit" name="button" id="button" value="Submit" />
                <a href="NewRegister.jsp">New User</a><br /></td>
            </tr>
            <tr> </tr>
            <tr> </tr>
            <tr> </tr>
            <tr> </tr>
            <tr> </tr>
            <tr> </tr>
          </table></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td colspan="2" align="center" valign="top" bgcolor="#000000"><img src="img/hy.JPG" width="1000" height="242" /></td>
    </tr>
  </table>
  
</form>
<script type="text/javascript">
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
</script>
</body>
</html>