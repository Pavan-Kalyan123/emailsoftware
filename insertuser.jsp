<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String email=request.getParameter("email");
String pwd=request.getParameter("pwd");
String name=request.getParameter("name");
String type=request.getParameter("type");
String mobile=request.getParameter("mobile");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emailsoftware", "pavan", "kalyan");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into users(emailid,pwd,type,mobile,name)values('"+email+"','"+pwd+"','"+type+"','"+mobile+"','"+name+"')");
        response.sendRedirect("login.jsp?msg='email created Successfully'");
        }
        catch(Exception e)
        {
        out.print(e.getMessage());
        e.printStackTrace();
        }
 %>
