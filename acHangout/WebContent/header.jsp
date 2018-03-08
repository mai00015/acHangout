<%@ page import="java.io.*,java.util.Locale"%>
<%@ page import="javax.servlet.*,javax.servlet.http.* "%>
<%
	//Get the client's Locale
	Locale locale = request.getLocale();
	String language = locale.getLanguage();
%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<a href="index.jsp"> <img src='Resources/1.png'
		style='float: left;' width='380' height='95'>
	</a>

	<div style='display: none; padding: 10px;'
		id='google_translate_element'></div>

	<div class="topnav">
		<a class="active" href="index.jsp">Home</a> <a href="#about">Profile</a>
		<a href="#contact">Messenger</a> <a href="#contact">Help&nbsp;<i
			class="fa fa-question-circle-o"></i></a> &emsp; <a href="signup.jsp"
			style="float: right">Sign up</a> <a href="login.jsp"
			style="float: right">Login</a> <a href="#" style="float: right"
			onclick="open_translate(this)" title="Google Translate"><i
			class="fa fa-globe"></i></a>

		<div class="search-container">
			<form action="search.jsp">
				&emsp; &emsp; &emsp; &emsp; <input type="text"
					placeholder="Search.." name="search">
				<button type="submit">
					<i class="fa fa-search"></i>
				</button>
			</form>
		</div>
	</div>

	<script type="text/javascript">
		function open_translate(elmnt) {
			var a = document.getElementById("google_translate_element");
			if (a.style.display == "") {
				a.style.display = "none";
				elmnt.innerHTML = "<i class='fa fa-globe'></i>";
			} else {
				a.style.display = "";
				elmnt.innerHTML = "<i class='fa fa-times-circle-o'></i>";
			}
		}

		function googleTranslateElementInit() {
			new google.translate.TranslateElement({
				pageLanguage : '<%=language%>',
				layout : google.translate.TranslateElement.InlineLayout.SIMPLE
			}, 'google_translate_element');
		}
	</script>
	<script type="text/javascript"
		src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit">
		
	</script>

</body>
</html>