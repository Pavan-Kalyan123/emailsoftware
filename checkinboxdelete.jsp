<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String pi[]=request.getParameterValues("myCheckBox");


try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emailsoftware", "pavan", "kalyan");
           Statement st=conn.createStatement();
           int i;
           int mnext=Integer.parseInt(request.getParameter("mnext"));
           
           if(mnext==1)
           {
           
		   for(int n=0;n<pi.length;n++)
		   {
		   
		    int mid=Integer.parseInt(pi[n]);
		    i=st.executeUpdate("update mails set inbox=0 where mid="+mid);
		   }
		    response.sendRedirect("inbox.jsp");
          }
          else
          {
             for(int n=0;n<pi.length;n++)
             {
             
		  int mid=Integer.parseInt(pi[n]);
		   i=st.executeUpdate("update mails set sentbox=0 where mid="+mid);
	     }
		   response.sendRedirect("SentBox.jsp");
            
          }
        out.println("<center><b>User Deleted Successfully!<br><a href='SentBox.jsp'>Check Now</a></b></center>");
        }
        catch(Exception e)
        {
        out.print(e.getMessage());
        e.printStackTrace();
        }
 %>
