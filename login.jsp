<html>
<head><style>
.myTextbox{
    font-size: 32px;
    size: 30px;
    text-decoration:none;
}
</style></head>
<body>
<%
String str=request.getParameter("msg");
if(str!=null)
    out.println("<p><font size=32 color=red>"+str+"</font></p>");
%>
<br><br><br><br><br><br><br><br>
<form name="f1" action="validateLogin.jsp">
<table align="center" width="50%">
<tr>
    <td>Email ID:</td><td><input type="text" name="uname" id="uname" class="myTextbox" placeholder="Enter MailId"></td>
</tr>
<tr>
    <td>Password:</td><td><input type="password" name="pwd" id="pwd" class="myTextbox" placeholder="Enter password"></td>
</tr>
<tr>
   <tr></tr>
</tr>
<br>
<br>
<tr>
    <td></td><td><input type="submit" value="Submit"><input type="reset" value="Reset"></td>
</tr>


</table>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<a href="userinput.jsp" class="myTextbox">&nbsp;&nbsp;&nbsp;create account</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="ChangePassword.jsp" class="myTextbox">&nbsp;&nbsp;forgot password</a>

</form></body></html>
