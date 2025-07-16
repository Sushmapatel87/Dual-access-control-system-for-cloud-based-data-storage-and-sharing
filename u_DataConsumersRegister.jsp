<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Consumers Register</title>
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
.style4 {
	color: #FF0000;
	font-weight: bold;
}
.style5 {font-weight: bold}
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
          <li ><a href="index.html"><span>Home </span></a></li>
          <li class="active"><a href="u_DataConsumersLogin.jsp"><span>Data Consumers</span></a></li>
          <li><a href="o_DataOwnerLogin.jsp">Data Owner</a></li>
          <li><a href="c_CloudLogin.jsp">Cloud Service Provider</a></li>
   		  <li><a href="d_DomainLogin.jsp">Registry Authority</a></li>
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
          <h2><span>Data Consumers Register :  </span></h2>
          <form action="URegister.jsp" method="post" id="" enctype="multipart/form-data">
            <label for="name"><br />
            <img src="images/Register.png" width="300" height="163" /><br />
            <br />
              <span class="style4">Data Consumers Name (required)<br />
            </span></label>
            <p class="style4">
              <input id="name" name="userid" class="text" />
            </p>
            <span class="style4">
            <label for="password">Password (required)<br />
            </label>
            </span>
            <p class="style4">
              <input type="password" id="password" name="pass" class="text" />
              <br />
              <br />
              <span class="style4">
              <label for="email">Email Address (required)<br />
              </label>
              </span>
              <input id="email" name="email" class="text" />
            </p>
            
            <span class="style4">
            <label for="mobile">Mobile Number (required)<br />
            </label>
            </span>
            <p class="style4">
              <input id="mobile" name="mobile" class="text" />
            </p>
            <span class="style4">
            <label for="address">Your Address<br />
            </label>
            </span>
            <p class="style4">
              <textarea name="address" cols="50" id="address"></textarea>
            </p>
            <span class="style4">
            <label for="dob">Date of Birth (required)<br />
            </label>
            </span>
            <p class="style4">
              <input id="dob" name="dob" class="text" />
            </p>
            <span class="style4">
            <label for="gender">Select Gender (required)<br />
            </label>
            </span>
            <p class="style4">
              <select id="s1" name="gender" class="text">
                <option>-Select-</option>
                <option>Male</option>
                <option>Female</option>
              </select>
            </p>
            <span class="style4">
            <label for="pincode">Enter Pincode (required)<br />
            </label>
            </span>
            <p class="style4">
              <input id="pincode" name="pincode" class="text" />
            </p>
            <span class="style4">
            <label for="location">Enter Location (required)<br />
            </label>
            </span>
            <p class="style4">
              <input id="loc" name="location" class="text" />
            </p>
            <span class="style4">
            <label for="pic">Select Profile Picture (required)</label>
            </span>
            <strong>
            <label for="pic"></label>
            </strong>
            <label for="pic"><br />
            </label>
            <p>
              <input type="file" id="pic" name="pic" class="text" />
            </p>
            <p>
              <input name="submit" type="submit" value="REGISTER" />
            </p>
          </form>
          <p align="right"><a href="u_DataConsumersLogin.jsp">Back</a></p>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style5">
            <li><a href="index.html">Home</a></li>
            <li><a href="u_DataConsumersLogin.jsp">Data Consumers</a></li>
            <li><a href="o_DataOwnerLogin.jsp">Data Owner </a></li>
            <li><a href="c_CloudLogin.jsp">Cloud Server</a></li>
            <li><a href="d_DomainLogin.jsp">Registry Authority</a></li>
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
