<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller-700.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {font-size: 36px}
.style14 {color: #FFFFFF}
.style15 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform"></div>
      <div class="logo">
        <h1><a href="index.html"><span class="style3">Dual Access Control for Cloud-Based Data Storage and Sharing</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="o_DataOwnerMain.jsp">Data Owner</a></li>
          <li><a href="c_CloudLogin.jsp">Logout</a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> 
          <div align="justify"><a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a><a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a><a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a></div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Patient Details :  </span></h2>
           <table width="573" border="1.5" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
            <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
try 
	{		
		String oname=(String)application.getAttribute("dname");
				%>
            <tr>
              <td width="31" height="48" bgcolor="#FF0000"><div align="center" class="style21 style14"><span class="style23"> ID </span></div></td>
              <td width="91" bgcolor="#FF0000"><div align="center" class="style21 style14"><span class="style23">Patient Reposrt Name </span></div></td>
              <td width="137" bgcolor="#FF0000"><div align="center" class="style21 style14"><span class="style23">Patient Name</span></div></td>
              <td width="107" bgcolor="#FF0000"><div align="center" class="style21 style14"><span class="style23">Date and Time</span></div></td>
              <td width="66" bgcolor="#FF0000"><div align="center" class="style21 style14"><span class="style23">Disease</span></div></td>
			  <td width="127" bgcolor="#FF0000"><div align="center" class="style21 style14"><span class="style23">Age</span></div></td>
			  <td width="127" bgcolor="#FF0000"><div align="center" class="style21 style14"><span class="style23">Blood Group</span></div></td>
            </tr>
            <%

				String query="Select * from pdata where oname='"+oname+"' "; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
				{
					i=rs.getInt(1);
					s2=rs.getString(2); // rname
					s3=rs.getString(7); // Date and Time -enc
					s4=rs.getString(8);// Patient Name
					s5=rs.getString(10);// Disease-enc
					s6=rs.getString(11); // Age
					s7=rs.getString(12); // bg
					
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					String dt = new String(Base64.decode(s3.getBytes()));
					String disease = new String(Base64.decode(s5.getBytes()));
						String bg = new String(Base64.decode(s7.getBytes()));
					
					%>
            <tr>
              <td height="38"><div align="center" class="style15"><%=i%></div></td>
              <td><div align="center" class="style15"><%=s2%></div></td>
              
             
              <td><div align="center" class="style15"><%=s4%><a href="O_View_Patient_Details_More.jsp?pname=<%=s4%>">::View Report</a></div></td>
			  <td><div align="center" class="style15"><%=dt%></div></td>
             

             
              
              <td width="66"><div align="center" class="style15"><%=disease%></div></td>
			    <td width="127"><div align="center" class="style15"><%=s6%></div></td>
				 <td width="127"><div align="center" class="style15"><%=bg%></div></td>
            </tr>
            <%
			  
				}
	connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
</table>
           <p>&nbsp;</p>
           <p><a href="o_DataOwnerMain.jsp">Back</a></p>
           <p>&nbsp;</p>
           <div class="clr"></div>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="c_CloudMain.jsp">Home</a></strong></li>
            <li><strong><a href="c_CloudLogin.jsp">Logout</a></strong></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
