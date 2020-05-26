<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>Untitled Document</title>
</head>

<%@ include file="conn1.jsp"%>
<%@ page import="java.io.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%@ include file="sound.jsp"%>

<body>

					 
<%

String cn=request.getParameter("text1");
String dateStart=request.getParameter("text2");
String dateStop=request.getParameter("text3");
int  SpotNo=Integer.parseInt(request.getParameter("text4"));

session.setAttribute("sn",SpotNo);

	long diffHours=0 ;
	
	//-------------------------------------------------------------------------------------------------
	 try
	 {
		 Statement st=con.createStatement();
		  Statement st1=con.createStatement();
		 
		 //SELECT * FROM bookingcar  WHERE ('10/23/2018 06:31' NOT BETWEEN '10/23/2018 07:30' AND '10/23/2018 09:30') AND ('10/23/2018 07:35' NOT BETWEEN '10/23/2018 07:30' AND '10/23/2018 09:30') AND parkingspotno='1'
	String 	checkintime;
	String 	checkoutout;
ResultSet rs1=st.executeQuery("select * from bookingcar where parkingspotno='"+SpotNo+"'");
 int i1=11,c1=0;

	 while(rs1.next())
	 { 
checkintime=rs1.getString(3);
checkoutout=rs1.getString(4);
	 
		 c1++;
		 
 ResultSet rs=st1.executeQuery("SELECT * FROM bookingcar  WHERE ('"+dateStart+"' NOT BETWEEN '"+checkintime+"' AND '"+checkoutout+"') AND ('"+dateStop+"' NOT BETWEEN'"+checkintime+"' AND '"+checkoutout+"') AND parkingspotno="+SpotNo+"");
 
 i1=0;
 
	 while(rs.next())
	 { 
	i1++;
	 }
 
	 }
	 
		
	out.print(c1);
	
	
if(i1==0)
{
	//out.print("--"+i1);
session.setAttribute("bd1","Spot All Ready Booked");
response.sendRedirect("BookingCarParkingDetails.jsp");
}

else
{
	
//-----------------------------------------time diffrence--------------------------------------------------


		//HH converts hour in 24 hours format (0-23), day calculation
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy HH:mm");

		Date d1 = null;
		Date d2 = null;

		
			d1 = format.parse(dateStart);
			d2 = format.parse(dateStop);

			//in milliseconds
			long diff = d2.getTime() - d1.getTime();
			 diffHours = diff / (60 * 60 * 1000) ;
			// out.print(diffHours + " hours, ");
		
	

//==================================Read System Date===================================================================================

		
	//	Date date = new Date();  
		
		//String startd=format.format(date);  
		
		//endd=format.format(date);  
		
  // out.println(format.format(date));  
 // int s=dateStart.compareTo(startd);
  

//================================================================================================================================


	 File ee = new File("../../../Tomcat9/webapps/Car Parking System/b.jpg"); 
  // File eee = new File("CarParkingSystem_pcinterface/imaseat/"+a+".jpg"); 
   
      File eee = new File("../../../Tomcat9/webapps/Car Parking System/imaseat/"+SpotNo+".jpg"); 
         
        FileInputStream eeee = new FileInputStream(ee); 
        FileOutputStream eeeee = new FileOutputStream(eee); 
 
        System.out.println(ee.length());
         
         
       
        int currentbyte = eeee.read();
        while (currentbyte != -1) 
        {
        eeeee.write (currentbyte);
        currentbyte = eeee.read();
        }
        
    
     eeee.close(); 
        eeeee.close(); 
    
    
       

//--------------------------------------------------------------------------------------------------------------------------------

	long   price=diffHours*5;
	String mgg="Your Parking Price Is "+price;
	session.setAttribute("mg",mgg);
	
	
	
	String un=session.getAttribute("un").toString();

	int stts=0;
	
st.executeUpdate("insert into bookingcar values('"+un+"','"+cn+"','"+dateStart+"','"+dateStop+"',"+SpotNo+",'"+price+"','"+diffHours+"','"+stts+"')");

session.setAttribute("bd1","."); 




response.sendRedirect("BookingCarParkingDetails.jsp");
}
	 
	
	 }
catch(Exception et) 
{

	
out.print(et);
	
}


//response.sendRedirect("index.jsp");


%>
</body>
</html>
