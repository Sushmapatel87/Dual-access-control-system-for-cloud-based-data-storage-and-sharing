<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
<%@ include file="connect.jsp" %>
<html><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style>
<body>
<%
int uid = Integer.parseInt(request.getParameter("usid"));

String pname=request.getParameter("pname");
try {
KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA"); 
Cipher encoder = Cipher.getInstance("RSA"); 
KeyPair kp = kg.generateKeyPair(); 
PublicKey pubKey = kp.getPublic(); 
// RSA produces 1024 bits Key
byte[] pub = pubKey.getEncoded();
String s = pub.toString();
String str="Yes";
Statement st1 = connection.createStatement();
String query1 ="update request set sk='"+s+"' where id='"+uid+"' ";
st1.executeUpdate (query1);


String query11 ="update pdata set sk='"+s+"' where patient='"+pname+"' ";
st1.executeUpdate (query11);
connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
response.sendRedirect("D_View_SecretKeyGen.jsp");
%>
</body></html>