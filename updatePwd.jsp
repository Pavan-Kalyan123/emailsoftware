<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String user_id=request.getParameter("uname");
String cpwd=request.getParameter("cpwd");
String npwd=request.getParameter("npwd");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emailsoftware", "pavan", "kalyan");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("update users set pwd='"+npwd+"' where emailid='"+user_id+"'");
        out.println("<center><b>Password Changed Successfully!<br><a href='login.jsp'>login Now</a></b></center>");
        }
        catch(Exception e)
        {
        out.print(e.getMessage());
        e.printStackTrace();
        }
 %>
