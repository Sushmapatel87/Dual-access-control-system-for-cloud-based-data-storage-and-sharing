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
<title>Searched Result</title>
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
.style14 {
	color: #FF0000;
	font-weight: bold;
	font-size: 24px;
}
.style15 {color: #FF0000}
.style17 {font-weight: bold}
.style18 {color: #FFFFFF; font-weight: bold; }
-->
</style>
<script type='text/javascript'>

function saveTextAsFile()
{
	var textToWrite = document.getElementById("ta").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = "File.txt";

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
}



</script>
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
          <li class="active"><a href="o_DataOwnerMain.jsp">Data owner </a></li>
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
          <h2><span><span class="style14">Patient Report Details</span> :  </span></h2>
           
		   <%
		   
		   String pname=request.getParameter("pname");
		   String oname=request.getParameter("oname");
		   String tdoor=request.getParameter("tdoor");
		   
		   
		   
		   
		   %>
		   
            <p>
              <form id="form" name="form1" method="post" action="U_Download.jsp">
                            <span class="style21">
                            <label>
                            </span>
                            <div align="center">
                              <table width="539" border="0">
                                <tr>
                                  <td width="166" height="45" bgcolor="#FF0000"><span class="style18">Owner Name </span></td>
                                  <td width="363"><input type="text" name="oname"  value="<%=oname%>" readonly/></td>
                                </tr>
                                <tr>
                                  <td height="44" bgcolor="#FF0000"><span class="style18">Patient Name </span></td>
                                  <td><input type="text" name="pname" value="<%=pname%>" readonly/></td>
                                </tr>
                                <tr>
                                  <td height="44" bgcolor="#FF0000"><span class="style18">Trapdoor</span></td>
                                  <td><textarea name="tdoor" readonly="readonly"><%=tdoor%></textarea></td>
                                </tr>
                                <tr>
                                  <td height="44" bgcolor="#FF0000"><span class="style18">Enter Secret Key </span></td>
                                  <td><input type="text" name="sk" /></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><span class="style17">
                                    <input type="submit" name="Submit" value="Request Report" />
                                  </span></td>
                                </tr>
                              </table>
                              <p align="left" class="style17 style21 style15">&nbsp;</p>
                              <p align="left" class="style17"><br />
                                <br />
                              </p>
                              <p align="left" class="style17">&nbsp;</p>
                              <p align="left" class="style17"><a href="u_DataConsumersMain.jsp">Back</a></p>
             </div>
               	            </label>
          </form>
            </p>
            <p>&nbsp;</p>
            <p><a href="u_Search.jsp">Back</a></p>
           <p>&nbsp;</p>
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
