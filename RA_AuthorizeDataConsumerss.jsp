<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Registry Authority </title>
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
.style21 {font-size: 14px}
.style24 {color: #FFFF00}
.style25 {
	font-size: 14px;
	color: #FFFF00;
	font-weight: bold;
}
.style27 {color: #FF0000; font-weight: bold; }
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
		  <li class="active"><a href="d_DomainMain.jsp">Registry authority</a></li>
          <li><a href="d_DomainLogin.jsp">Logout</a></li>
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
          <h2><span>View Authorize Data Consumerss   : </span></h2>
          <p>&nbsp;</p>
          <table width="500" border="1.5" cellpadding="0" cellspacing="0"  align="center">
            <tr>
              <td width="76" height="30" bgcolor="#FF0000"><div align="center" class="style21 style24"><strong>Data Consumers ID </strong></div></td>
              <td width="135" bgcolor="#FF0000"><div align="center" class="style25">Data Consumerss Name </div></td>
              <td width="161" bgcolor="#FF0000"><div align="center" class="style25"> Status </div></td>
              <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
	
      	try 
	{
        	String s="null";
      		String query="select * from user"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s5=rs.getString(13);
		%>
            </tr>
            <tr>
              <td height="28" bgcolor="#FFFFFF"><div align="center" class="style27"><%=i%></div></td>
              <td bgcolor="#FFFFFF"><div align="center" class="style27"><a href="d_DataConsumersDetails.jsp?name=<%=s2%>"><%=s2%></a></div></td>
              <%	
			if(s5.equalsIgnoreCase("Waiting"))
			{
			
		%>
              <td bgcolor="#FFFFFF"><div class="style27">
                  <div align="center"><a href="d_StatusDataConsumers.jsp?id=<%=i%>"><%=s5%></a></div>
              </div></td>
              <%
		
			}else
			{
		%>
              <td width="21" bgcolor="#FFFFFF"><div class="style27">
                  <div align="center"><%=s5%></div>
              </div></td>
            </tr>
            <%
			  }
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
          <p align="right"><a href="d_DomainMain.jsp">	Back</a></p>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="d_DomainMain.jsp">Home</a></strong></li>
            <li><strong><a href="d_DomainLogin.jsp">Logout</a></strong></li>
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
