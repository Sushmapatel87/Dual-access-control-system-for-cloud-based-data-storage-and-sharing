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
<title>C_View_Attacker_Details</title>
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
          <li class="active"><a href="c_CloudMain.jsp">Cloud Service Provider</a></li>
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
          <h2><span>View Attacker Details</span></h2>
           <table width="573" border="1.5" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
            <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
try 
	{		
		
				%>
            <tr>
          
              <td width="91" height="51" bgcolor="#FF0000"><div align="center" class="style21 style14"><span class="style23">Attacker Name </span></div></td>
              <td width="137" bgcolor="#FF0000"><div align="center" class="style21 style14"><span class="style23">Patient Name</span></div></td>
              <td width="107" bgcolor="#FF0000"><div align="center" class="style21 style14"><span class="style23">Secret Key Used</span></div></td>
              <td width="66" bgcolor="#FF0000"><div align="center" class="style21 style14"><span class="style23">Date and Time</span></div></td>

            </tr>
            <%

				String query="Select * from attacker "; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
				{
					
					s1=rs.getString(1);
					s2=rs.getString(2); 
					s3=rs.getString(3);
					s4=rs.getString(4);
					
					
					
					
					%>
            <tr>
             
              <td height="46"><div align="center" class="style15"><%=s1%></div></td>
              <td><div align="center" class="style15"><%=s2%></div></td>
			  <td><div align="center" class="style15"><%=s3%></div></td>
			  			  <td><div align="center" class="style15"><%=s4%></div></td>
             
			    
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
           <p><a href="c_CloudMain.jsp">Back</a></p>
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
