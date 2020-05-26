<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>Untitled Document</title>
</head>

<%@ include file="conn.jsp"%>
<%@ page import="java.io.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<body>
					 
<%

	try
	{
		
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy HH:mm");
		Date date = new Date();  
		String sysdate=format.format(date);  
		
		//String query="select * from bookingcar  GROUP BY parkingspotno HAVING COUNT(*) = 2";
		String query="select * from bookingcar";
		ResultSet rs=st.executeQuery(query);
		int i=1;

		String checkout="";	
		int parkingspotno=0;	
            while(rs.next())
			{
				checkout=rs.getString(4);
				
				 int compare=checkout.compareTo(sysdate);
		
				if(compare!=1)
				{
					
				st.executeUpdate("delete  from bookingcar where checkoutout='"+checkout+"'");
					
					//out.print(parkingspotno);
					
				}
				
			}
				
//===============================================remove====================================================================================			

		ResultSet rs1=st.executeQuery("select * from bookingcar");
		
		int fl=0;
		
								while(i<=15)
								{
								
								//out.println(fl);
								while(rs1.next())
										{
							
											parkingspotno=rs1.getInt(5);
											
											if(i==parkingspotno)
												{
												fl=1;
												}
												
												
												
										}
										
											if(fl==0)
											{
												//out.println(i);
												File f = new File("../../../Tomcat9/webapps/Car Parking System/imaseat/"+i+".jpg"); 
													f.delete();
											}
										fl=0;
										i++;
										rs1.beforeFirst();
								}
							
							
							
					

						
			
			
 //================================================end remove===================================================================================

 


}
catch(Exception et) 
{

	
//out.print(et);
	
}

	//response.sendRedirect("index.jsp");


%>
</body>
</html>
