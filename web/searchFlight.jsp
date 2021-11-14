<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



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
        
  <style>
      #my_table
      {
          margin: 15px;
          text-align: center;
          padding:2px;
          width: 730px;;
         background-color: #dddd;
         
          
      }
      #sub_head
      {
      text-align: center;    
      }
      #result_div
      {
         
         margin-left: 27%; 
      }
   
      </style>
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
    PrintWriter pw = response.getWriter();
    pw.write("<br>");
    pw.write("<br>");
    pw.write("<br>");
    pw.write("<br>");
    pw.write("<br>");
    pw.write("<br>");
    pw.write("<br>");
    
String c_from = request.getParameter("c_from");
String c_to = request.getParameter("c_to");
String date = request.getParameter("date");
String adults = request.getParameter("adults");
String children = request.getParameter("children");
String T_class = request.getParameter("t_class");


String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "myproject";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<h1  id="sub_head"> Available Flights</h1>
<div id="result_div">
<table border="1" id="my_table">
<tr id="my_table_row">
<td>Flight number</td>
<td>Flight Agency</td>
<td>Source</td>
<td>Destination</td>
<!--<td>Adults</td>-->
<!--<td>Children</td>-->
<td>Price</td>
<td>Status</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select Flight_no,Flight_name,C_From,C_To,Price from flights where C_From='"+c_from+"' AND C_To='"+c_to+"' AND Tclass='"+T_class+"' ";

//String sql ="select Flight_no,Flight_name,C_From,C_To,Price from flights where C_From='"+c_from+"' AND C_To='"+c_to+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Flight_no") %></td>
<td><%=resultSet.getString("Flight_name") %></td>
<td><%=resultSet.getString("C_From") %></td>
<td><%=resultSet.getString("C_To") %></td>

<!--<td><%//System.out.print(adults);%></td>-->
<!--<td><%//System.out.print(children);%></td>-->

<td><%=resultSet.getString("Price")%></td>
<td><a href="#">Book Now</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</body>
</html>