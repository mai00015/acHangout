<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
<<<<<<< HEAD
	pageEncoding="ISO-8859-1"%>
=======
    pageEncoding="ISO-8859-1"%>
    
    <% if(session.getAttribute("username") == null){ %>
    	%><jsp:forward page="login.jsp"><%
    	}%>
    		
>>>>>>> branch 'testbranch' of https://github.com/leenguyen95/acHangout.git
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a Poll</title>
<<<<<<< HEAD
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
=======
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
>>>>>>> branch 'testbranch' of https://github.com/leenguyen95/acHangout.git
</head>
</head>
<body>
<<<<<<< HEAD
	<div id="content">
		<br />
		<form action="poll" method="post">
			<fieldset id="border" style='margin: 0px 155px; width: 360px;'>
				<legend>
					<b>Create A Poll</b>
				</legend>
				<div>

					<div>Your Question</div>
					<div>
						<textarea maxlength="400" rows="4" cols="4"></textarea>
					</div>
					<div>Question Type</div>
					<div>
						<input type="radio" name="multi" value="multi" checked>
						Multiple Choice
					</div>
					<div>
						<input type="radio" name="shortAnswer" value="shortAnswer">
						Short Answer
					</div>
					<div>
						<input type="radio" name="rank" value="rank"> Ranking
					</div>

				</div>
				<br />
			</fieldset>
		</form>
	</div>
	=======
	<div class="container-fluid">
		<div class="row col-lg-12">

			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
				<br />

				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img
								src="http://azoom-sites.rockthemes.net/abboxed/wp-content/uploads/sites/14/2015/05/abboxed-restaurant-portfolio2.jpg"
								alt="First Slide" width="100%" height="250px" />
						</div>

						<div class="carousel-item">
							<img
								src="http://azoom-sites.rockthemes.net/abboxed/wp-content/uploads/sites/14/2015/05/abboxed-beach-portfolio.jpg"
								alt="Second Slide" width="100%" height="250px" />

							<div class="carousel-caption">
								<h2>Best Caption Title</h2>
								<p>Oh yh it is indeed!!!!!! :D</p>
							</div>
						</div>

						<div class="carousel-item">
							<img
								src="http://azoom-sites.rockthemes.net/abboxed/wp-content/uploads/sites/14/2015/05/abboxed-beach-portfolio2.jpg"
								alt="Third Slide" width="100%" height="250px" />
						</div>
					</div>

					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span class="icon-prev"
						aria-hidden="true"></span> <span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span class="icon-next"
						aria-hidden="true"></span> <span class="sr-only">Next</span>
					</a>

				</div>
			</div>
		</div>
		<div class="row">
			<br />

			<fieldset id="border" style='margin: 0px 155px; width: 360px;'>
				<legend>
					<b>Create A Poll</b>
				</legend>
				<div class="row">
					<div class="col-sm-12"></div>

					<div class="col-sm-12">
						<form id=pollForm action="PollController" method="post">
							<div class="form-group">
								<div>Your Question</div>
								<div>
									<textarea name="q" maxlength="255" rows="5" cols="40"></textarea>
								</div>

								<div>Question Type</div>

								<input type="radio" name="qtype" value="multi" checked>
								Multiple Choice <input type="radio" name="qtype"
									value="shortAnswer"> Short Answer <input type="radio"
									name="qtype" value="rank"> Ranking
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>

				</div>
				<div class="col-sm-12"></div>
				<br />
			</fieldset>

		</div>
	</div>









	<!-- JavaScript to add listeners to qtype buttons. Will send current selection to the controller and page will react appropriately. 
	<script>
var f = document.getElementById("pollForm");
f.addEventListener("focus", myFocusFunction, true);
f.addEventListener("blur", myBlurFunction, true);

function myFocusFunction() {
    document.getElementById("myInput").style.backgroundColor = "yellow";  
}

function myBlurFunction() {
    document.getElementById("myInput").style.backgroundColor = "";  
}
</script> -->
	<script type="text/javascript">
var d = new Date()
document.write("Made by Le Nguyen "+d.getFullYear())
</script>
=======
<div class="jumbotron text-center">
  <h1>Get your question out there</h1>
  <p> Select from the options which type of poll you would like to post and type in your question.</p> 
</div>
  
		<div class="container-fluid">
		<br />
		
			<fieldset id="border" style='margin: 0px 155px; width: 360px;'>
				<legend>
					<b>Create A Poll</b>
				</legend>
				<div class ="row">
						<div class="col-sm-12"></div>
						
						<div class="col-sm-12">
						<form action="poll" method="post">
						<div class="form-group">
						<div>Your Question</div>
						<div><textarea maxlength="255" rows="5" cols="40"></textarea></div>
						
						<div>Question Type</div>
						
						<input type="radio" name="qtype" value="multi" checked> Multiple Choice
  						<input type="radio" name="qtype" value="shortAnswer"> Short Answer
  						<input type="radio" name="qtype" value="rank"> Ranking
  						 <button type="submit" class="btn btn-primary">Submit</button>
  						 </div>
  						</form>
						</div>
						 
						 </div><div class="col-sm-12">
				</div>
				<br /> 
			</fieldset>
		
	</div>
>>>>>>> branch 'testbranch' of https://github.com/leenguyen95/acHangout.git
</body>
</html>