
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>U_Request_SK</title>
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
.style17 {font-size: 14; }
.style19 {
	font-size: 14;
	color: #FF0000;
	font-weight: bold;
}
.style20 {
	color: #FF0000;
	font-weight: bold;
}
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
          <li class="active"><a href="u_DataConsumersMain.jsp"><span>Data Consumers</span></a></li>
          <li><a href="u_DataConsumersLogin.jsp">Logout</a></li>
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
          <h2>Key Requested Status :</h2>
          <p class="infopost">&nbsp;</p>
          <%
String owner = request.getParameter("oname");
String pname = request.getParameter("pname");
String uname=(String)application.getAttribute("uname");
String generate ="Generate Key";

String query111="select * from request  where user='"+uname+"' and fname='"+pname+"' and owner='"+owner+"'"; 
Statement st111=connection.createStatement();
ResultSet rs111=st111.executeQuery(query111);


if ( rs111.next())
{
%>
                              <p class="style27">Request Already Sent To Key Authority !!!  </p>
                              <p><a href="u_DataConsumersMain.jsp" class="style26">BACK</a></p>
                        </div>
                            <%	}
else
{



String query1="insert into request(user,owner,fname,sk) values('"+uname+"','"+owner+"','"+pname+"','"+generate+"')";
connection.createStatement().executeUpdate(query1);

%>
                            <p class="style27">Request Sent To Key Authority!!!  </p>
                            <p><a href="u_DataConsumersMain.jsp" class="style26">BACK</a></p>
                          </div>
                          <span class="style19">
                          <%
}

				
		  %>
          <div class="clr"></div>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
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
