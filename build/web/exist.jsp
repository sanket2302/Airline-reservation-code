<%-- 
    Document   : exist
    Created on : Apr 14, 2019, 11:13:10 PM
    Author     : sanket gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html"%> 

<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con =(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/myproject", "root", "");
            PreparedStatement ps = con.prepareStatement("SELECT  * FROM admin WHERE " + "username = ?");
            
            ps.setString(1,request.getParameter("username"));
            
            ResultSet res = ps.executeQuery();
            
            if(res.first()){
                out.print("User already exists");
            }else{
                out.print("User name is valid");
            }
        }catch (Exception e){
            System.out.println(e);  
        }
%>