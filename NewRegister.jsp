<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-image: url();
}
</style>
</head>
<%@ page  import="java.util.*"%>
<body>
<form id="form1" name="form1" method="post" action="NewRegister_code.jsp">

  <table   width="90%" rules="none"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td bgcolor="#99CCFF"><img src="img/the-car-park.png" width="273" height="167" /><img src="img/banner.jpg" width="800" height="160" /></td>
    </tr>
    <tr>
      <td width="868" align="center" valign="top"><p>&nbsp;</p>
        <table rules="none" width="843" border="1" align="center" cellpadding="8" cellspacing="7">
        <tr>
          <td colspan="2" align="center" bgcolor="#CACBCC"><h2>New User Register</h2></td>
          </tr>
        <tr>
          <td width="164"> Name</td>
          <td width="304"><span id="sprytextfield2">
          <input name="text1" type="text" id="text1" size="33" />
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          </tr>
        <tr>
          <td>Password</td>
          <td><span id="sprytextfield9">
          <input name="text2" type="password" id="text2" size="33" />
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td>Mobile</td>
          <td><span id="sprytextfield4">
          <input name="text3" type="text" id="text3" size="33" />
          <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
        </tr>
        <tr>
          <td>Email Id</td>
          <td><span id="sprytextfield1">
          <input name="text4" type="text" id="text4" size="33" />
          <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
        </tr>
        <tr>
          <td>Full Address</td>
          <td><span id="sprytextfield3">
            <textarea name="text5" cols="99" rows="12" id="text5"></textarea>
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="button" id="button" value="Submit" />
            <a href="login.jsp">Back</a></td>
        </tr>
    </table>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td align="center" valign="top"><img src="img/hdd.jpg" width="1154" height="171" /></td>
    </tr>
  </table>
</form>
<script type="text/javascript">
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "email");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
var sprytextfield9 = new Spry.Widget.ValidationTextField("sprytextfield9");
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4", "phone_number", {format:"phone_custom", pattern:"xxxxxxxxxx"});
</script>
</body>
</html>