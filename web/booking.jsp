 <%@page contentType="text/html" import="java.util.*" %>
<%= new java.util.Date() %>

<html>
    <head>
        <title>Book Here</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<link href="https://fonts.googleapis.com/css?family=PT+Sans:400" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />


  <link href="CDN/bootstrap.min.css" rel="stylesheet" type="text/css"/>
  <link href="CDN/font-awesome.min.css" rel="stylesheet" type="text/css"/>
  <script src="CDN/jquery.min.js" type="text/javascript"></script>
  <script src="CDN/bootstrap.min.js" type="text/javascript"></script>
  <link href="style.css" rel="stylesheet"/>
        
    </head>
    <body>
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
      <li><a href="booking.jsp">Book Now</a></li>
      <li><a href="message.html">Contact us</a></li>
      <li><a href="createAccount.html">Login/Sign up</a></li> 
    </ul>

      
  </div>  
  </div>
</nav>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div id="booking" class="section"> 
            
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
                                            <form action="searchFlight.jsp">
                                                    <div class="form-group">
                                                            <div class="form-checkbox">

                                                                    <label for="one-way">
                                                                            <input type="radio" id="one-way" name="flight-type">
                                                                            <span></span>One way
                                                                    </label>

                                                            </div>
                                                    </div>
                                                    <div class="row">
                                                            <div class="col-md-6">
                                                                    <div class="form-group">
                                                                            <span class="form-label">Source</span>
                                                                            <input class="form-control" type="text" placeholder="City" name="c_from">
                                                                    </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                    <div class="form-group">
                                                                            <span class="form-label">Destination</span>
                                                                            <input class="form-control" type="text" placeholder="City" name="c_to">
                                                                    </div>
                                                            </div>
                                                    </div>
                                                    <div class="row">
                                                            <div class="col-md-3">
                                                                    <div class="form-group">
                                                                            <span class="form-label">Departing</span>
                                                                            <input class="form-control" type="date" required name="date">
                                                                    </div>
                                                            </div>

                                                            <div class="col-md-2">
                                                                    <div class="form-group">
                                                                            <span class="form-label">Adults (18+)</span>
                                                                            <input class="form-control" type="number" placeholder="Adults" name="adults">


                                                                            <span class="select-arrow"></span>
                                                                    </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                    <div class="form-group">
                                                                            <span class="form-label">Children (0-17)</span>
                                                                            <input class="form-control" type="number" placeholder="Children" name="children">

                                                                            <span class="select-arrow"></span>
                                                                    </div>
                                                            </div>
                                                    </div>
                                                    <div class="row">
                                                            <div class="col-md-3">
                                                                    <div class="form-group">
                                                                            <span class="form-label">Travel class</span>
                                                                            <select class="form-control" name="t_class">
                                                                                    <option>Economy class</option>
                                                                                    <option>Business class</option>
                                                                                    <option>First class</option>
                                                                            </select>
                                                                            <span class="select-arrow"></span>
                                                                    </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                    <div class="form-btn">
                                                                            <button class="submit-btn">Show flights</button>
                                                                    </div>
                                                            </div>
                                                    </div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
        <footer class="container-fluid text-center">
  <div class="row">
    <div class="col-sm-4 ">
      <h2>Contact us</h2>
      <p><i class="fa fa-map-marker"> 56, Sliver Ox colony, Indore</i></p>
      <h4>Mob: 8103 890 118</h4>
      <h4>PIN: 456001</h4>
    </div>
    
    <div class="col-sm-4 ">
      <h2>Connect</h2>
      <a href="https://www.facebook.com" class="fa fa-facebook"></a>
      <a href="https://www.twitter.com" class="fa fa-twitter"></a>
      <a href="https://www.google.com" class="fa fa-google"></a>
      <a href="https://www.linkedin.com" class="fa fa-linkedin"></a>
    </div>
    
    <div class="col-sm-4 ">
      <p>This Website is crafted by</p>
      <hr>
      <center><h3>Sanket Gupta</h3></center>
    </div>
    
  </div>
 
</footer>
    </body>
</html>
