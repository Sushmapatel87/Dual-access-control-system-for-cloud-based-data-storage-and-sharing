<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>o_UploadPatient</title>
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
.style10 {font-weight: bold}
.style12 {
	color: #FFFFFF;
	font-weight: bold;
}
.style13 {color: #FFFFFF}
-->
</style>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
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
          <li class="active"><a href="o_DataOwnerMain.jsp"><span>Data Owner</span></a></li>
          <li><a href="o_DataOwnerLogin.jsp">Logout</a></li>
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
  <h2><span class="pages">Upload Patient</span></h2>
  <p class="infopost">&nbsp;</p>
  <p class="infopost">&nbsp;</p>
  <form id="form1" name="form1" method="post" action="o_UploadPatient1.jsp">
            <p>&nbsp;</p>
            <table width="553" border="0" align="center">
			
              <tr>
                <td height="42" bgcolor="#FF0000" ><span class="style12">Patient Name :- </span></td>
                <td><input  name="pname" type="text" id="t42"   size="49"/></td>
              </tr>
              <tr>
                <td width="286" height="42" bgcolor="#FF0000" ><span class="style12">File Name :- </span></td>
                <td width="356"><input required="required" name="tt" type="text" id="t42" size="49"/></td>
              </tr>
              <tr>
                <td height="34" bgcolor="#FF0000"><span class="style13 style23 style21"><strong>Enter Disease : </strong></span></td>
                <td><input name="disease" type="text"  size="49"  /></td>
              </tr>
              <tr>
                <td height="34" bgcolor="#FF0000"><span class="style13 style23 style21"><strong>Enter Age : </strong></span></td>
                <td><input name="age" type="text"  size="49"   /></td>
              </tr>
              <tr>
                <td height="34" bgcolor="#FF0000"><span class="style13 style23 style21"><strong>Blood Group : </strong></span></td>
                <td><input name="bloodgroup" type="text"  size="49"   /></td>
              </tr>
              <tr>
                <td height="34" bgcolor="#FF0000"><span class="style13 style23 style21"><strong>Gender : </strong></span></td>
                <td><input name="gender" type="text"  size="49"     /></td>
              </tr>
              <tr>
                <td height="34" bgcolor="#FF0000"><span class="style13 style23 style21"><strong>E-mail : </strong></span></td>
                <td><input name="email" type="text"  size="49"    /></td>
              </tr>
              <tr>
                <td height="34" bgcolor="#FF0000"><span class="style13 style23 style21"><strong>Mobile No  : </strong></span></td>
                <td><input name="mob" type="text"  size="49"    /></td>
              </tr>
			               
              
              <tr>
                <td height="37" bgcolor="#FF0000"><span class="style12">Select File :-</span></td>
                <td><input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
              </tr>
			  	
              <tr>
                <td height="259" bgcolor="#FF0000">&nbsp;</td>
                <td><textarea name="text" id="textarea" cols="50" rows="15"></textarea></td>
              </tr>
              <tr>
                <td><div align="right"></div></td>
                <td><input type="submit" name="Submit" value="Encrypt" /></td>
              </tr>
            </table>
          </form>
  <div class="clr"></div>
  <div class="clr"></div>
</div>
</div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style10">
            <li><a href="o_DataOwnerMain.jsp">Home</a></li>
            <li><a href="o_DataOwnerLogin.jsp">Logout</a></li>
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
