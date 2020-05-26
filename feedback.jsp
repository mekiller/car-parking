<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body,td,th {
	font-weight: bold;
	font-size: 12px;
}
.style1 {color: #FFFFFF}
.style2 {color: #00FFFF}
.style10 {
	font-size: 12px;
	font-weight: normal;
}
.style12 {color: #990000}
.style16 {color: #FF0000}
.style17 {font-size: 14px}
.style18 {font-size: 14}
.style19 {color: #FFFFFF; font-size: 12px; }
#form1 table tr td a {
	font-size: 14px;
	color: #FFF;
	font-weight: normal;
}
.style121 {
	font-size: medium;
	font-weight: normal;
}
#form1 table tr td .style17 {
	font-weight: normal;
}
#form1 table tr td .style17 {
}
.style13 {font-size: 24px}
.style14 {font-size: 12px}
.style161 {font-size: 10px}
-->
</style>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-color: #CCC;
}
</style>
</head>

<body>

<form id="form1" name="form1" method="post" action="feedback_code.jsp">
  <table rules="none" width="80%" border="1" align="center" cellpadding="5" cellspacing="5">
    <tr>
      <td align="left" bgcolor="#5F5F5F"><h1><img src="img/5580-siteheader.jpg" width="917" height="117" /></h1></td>
    </tr>
    <tr>
      <td width="1393" valign="top"><p>&nbsp;</p>
        <table  rules="rows" width="429" border="0" align="center" cellpadding="5" cellspacing="5">
        <tr>
          <td width="421" height="36" valign="top" bgcolor="#CCCCCC"><p class="style13">Feedback</p></td>
          </tr>
        <tr>
          <td height="46" valign="top"><p class="style14">Do you have any questions, comments or suggestions? We would be glad to hear   it from you. Your feedback is important and valuable to us. </p></td>
          </tr>
        <tr>
          <td>Name:</td>
          </tr>
        <tr>
          <td><span id="sprytextfield1">
            <input name="t1" type="text" id="t1" size="55" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          </tr>
        <tr>
          <td>Phone:</td>
          </tr>
        <tr>
          <td><span id="sprytextfield2">
            <input name="t2" type="text" id="t2" size="55" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          </tr>
        <tr>
          <td>E-mail ID:</td>
          </tr>
        <tr>
          <td><span id="sprytextfield3">
            <input name="t3" type="text" id="t3" size="55" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          </tr>
        <tr>
          <td>Suggestions / Feedback:</td>
          </tr>
        <tr>
          <td><textarea name="t4" cols="65" rows="6"></textarea>
            <span class="style161">Note: Please provide a valid and active e-mail ID so   that we could get in touch with you.</span></td>
          </tr>
        <tr>
          <td><input type="submit" name="s1" value="Summit" />
            <a href="welcome.jsp">Back</a></td>
          </tr>
      </table>        <p align="justify" class="style17">&nbsp;</p></td>
    </tr>
  </table>
</form>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
</script>
</body>
</html>
