<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud Login</title>
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
          <li><a href="index.html"><span>Home </span></a></li>
          <li><a href="u_DataConsumersLogin.jsp"><span>Data Consumers</span></a></li>
          <li><a href="o_DataOwnerLogin.jsp">Data Owner</a></li>
          <li class="active"><a href="c_CloudLogin.jsp">Cloud Service Provider</a></li>
          
		  <li><a href="d_DomainLogin.jsp">Registry Authority</a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> 
          <div align="justify">
            <p><a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a><a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a></p>
          </div>
        </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Cloud Login :  </span></h2>
          <p class="infopost"><img src="images/Login.png" width="154" height="154" /></p>
          <form action="c_CloudAuthentication.jsp" method="post" id="leavereply">
            <label for="name"><span class="style4"><br />
              Cloud Server Name (required)<br />
            </span></label>
            <span class="style4">
            <input name="userid" type="text" class="box" id="name" value="" />
            <label for="email"><br />
            <br />
              Password (required)</label>
            </span>
            <strong>
            <label for="email"></label>
            </strong>
            <label for="email"><br />
            </label>
            <p>
              <input type="password" id="pass" name="pass" class="box" />
            </p>
            <p>
              <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
              <input type="reset" name="imageField" id="imageField"  class="RESET" />
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          </form>
          <div class="clr"></div>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="index.html">Home</a></strong></li>
            <li><strong><a href="u_DataConsumersLogin.jsp">Data Consumers</a></strong></li>
            <li><strong><a href="o_DataOwnerLogin.jsp">Data Owner </a></strong></li>
            <li><strong><a href="c_CloudLogin.jsp">Cloud Server </a></strong></li>
            <li><strong><a href="d_DomainLogin.jsp">Registry Authority</a></strong></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star"><br />
          </h2>
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
