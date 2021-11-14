<%-- 
    Document   : test
    Created on : Apr 25, 2019, 6:02:27 PM
    Author     : sanket gupta
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.Exception.*"%>


<!DOCTYPE html>

    <head>
        
        <title>Available Flights</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


  <link href="CDN/bootstrap.min.css" rel="stylesheet" type="text/css"/>
  <link href="CDN/font-awesome.min.css" rel="stylesheet" type="text/css"/>
  <script src="CDN/jquery.min.js" type="text/javascript"></script>
  <script src="CDN/bootstrap.min.js" type="text/javascript"></script>
  <link href="style.css" rel="stylesheet"/>
        
    </head>
    
                <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">

      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-main">
        <span class="sr-only">toggle navigation </span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><img src="img\recycle.png">
      </a>
    </div>
  <div class="collapse navbar-collapse" id="navbar-collapse-main">
    <ul class="nav navbar-nav navbar-right">
      <li><a class="active" href="index.html"><span class="glyphicon glyphicon-home"></span></a></li>
      <li><a href="booking.html">Book Now</a></li>
      <li><a href="AboutUs.html">About us</a></li>
      <li><a href="message.html">Contact us</a></li>
      <li><a href="Login.html">Login/Sign up</a></li>
    </ul>

  </div>  
  </div>
</nav>
   
   <%
 try
{
                String c_from = request.getParameter("c_from");
                String c_to = request.getParameter("c_to");
                String date = request.getParameter("date");
                String adults = request.getParameter("adults");
                String children = request.getParameter("children");
                String T_class = request.getParameter("t_class");
        
                PrintWriter pw=response.getWriter();
                response.setContentType("text/html");
                Class.forName("com.mysql.jdbc.Driver");            // load the drivers
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myproject" , "root" , "");
                pw.println("<br>");
                pw.println("<br>");
                pw.println("<br>");
                pw.println("<br>");
                pw.println("<br>");
                pw.println("<br>");
                pw.println("<br>");
                pw.println("Hello skdjnfskdjnf sdfnds nfsndj kldkfjn snf ");
                
                String selectSQL = "SELECT Flight_no,Flight_name,C_From,C_To,Price from flights where C_from=c_from && c_to=c_to && Tclass= T_class";
                Statement statement = con.createStatement();
                ResultSet rs = statement.executeQuery(selectSQL );
                
                while(rs.next())
                {
                    %>
                      <tr>
                          <td><%=rs.getInt("Flight_no")%></td>
                          <td><%=rs.getString("Flight_Name")%></td>
                          <td><%=rs.getString("C_From")%></td>
                          <td><%=rs.getString("C_To")%></td>
                          <td><%=rs.getInt("Price")%></td>
                      </tr>
                      <%
                      }
rs.close();
con.close();
           
              }

    catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
   %>     
      
    

