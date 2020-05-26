<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<%@ include file="conn.jsp"%>
<body>

						 
<%


 String a=request.getParameter("text1");
 String b=request.getParameter("text2");
 String ad=request.getParameter("select");
 
 
session.setAttribute("un",a);

 


 //-----------------------------------------------------------------------------------
 if(ad.equals("Admin"))
 {
	 try
	 {
 ResultSet rs=st.executeQuery("select * from admin where usernm='"+a+"' and password='"+b+"'");
 
int i1=0;
	 while(rs.next())
	 { 
	i1++;
	 }
if(i1!=0)
response.sendRedirect("adminpanel.jsp");
else
response.sendRedirect("login.jsp");
 
 }
 catch(Exception et)
 {
	 out.print(et);
 }
 
 }


//---------------------------------------------------------------------------------------------------------------
else  if(ad.equals("User"))
 {
 
try
{

 ResultSet rs=st.executeQuery("select * from reg where usernm='"+a+"' and password='"+b+"'");

 int i=0;
	 while(rs.next())
	 { 
	
		i++;
	
 	}
if(i!=0)
{
	
response.sendRedirect("welcome.jsp");
}
else
response.sendRedirect("login.jsp");
}
catch(Exception ee)
{
out.print(ee);
}
 }

%>
</body>
</html>
