<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${empty sessionScope.name && empty sessionScope.pass}">
	<c:if test="${not empty param.topic}">
		<%
			String topic = request.getParameter("topic");
		%>

		<c:if test="${not empty param.page}">
			<%
				int check = Integer.valueOf(request.getParameter("page"));
							session.setAttribute("directpage", "sub-categories?topic=" + topic + "&page=" + check);
			%>
		</c:if>
		<c:if test="${empty param.page}">
			<%
				session.setAttribute("directpage", "sub-categories?topic=" + topic);
			%>
		</c:if>
	</c:if>
	<jsp:forward page="login.jsp" />
</c:if>

<c:if test="${not empty param.topic}">
	<c:set var="topic" value="${param.topic}" />
</c:if>

<c:if test="${empty param.topic}">
	<jsp:forward page="index.jsp" />
</c:if>

<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AcHangout - Share, learn, laugh, online</title>
<link rel="shortcut icon" type="image/x-icon"
	href="Resources/megaphone.ico">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<!-- I include header and top-menu separately because the other web pages also need to have both of them 
		so don't need to do again one more time
	-->
	<jsp:include page="header.jsp" />

	<jsp:include page="top-menu.html" />
	<br />
	<br />
	<div class="container">
		<div class="row">
			<ul class="breadcrumb">
				<li><a href="index.jsp"><i class="fa fa-home fa-2x"></i></a></li>
				<li class="active">${cat}</li>
			</ul>
		</div>
		<br />
		<div class="row text-center">
			<div class="page-header">
				<h2>${cat}</h2>
			</div>
		</div>
		<br /> <br /> <br /> <br />
	</div>

	<div class="container">
		<div class="row mt">
			<div class="col-sm-9">
				<div class="row">

					<div class="col-sm-12 forum-head lpad">
						<div class="col-sm-6">Sub-category</div>
						<div class="col-sm-3 child">Total Post</div>
						<div class="col-sm-3 child">Last Post</div>

					</div>
					<c:if test="${not empty List}">
						<c:forEach items="${List}" var="ok">
							<div class="col-sm-12 forum-topic pad">
								<div class="col-sm-6 child">
									<a href="display?sub=${ok.getTopic()}&page=1">${ok.getTopic()}</a><br />
									<p style="margin: 0; padding: 0;">${ok.getDescription()}</p>
								</div>
								<div class="col-sm-3 child">${ok.getTotal()}</div>
								<div class="col-sm-3 child">${ok.getDate()}</div>
							</div>
						</c:forEach>
					</c:if>
					<c:if test="${empty List}">
						<div class="col-sm-12 forum-topic pad">
							<h4>Currently, there are no sub-category!!</h4>
						</div>
					</c:if>
				</div>
			</div>
			<div class="col-sm-3" style="padding-left: 65px;">
				<div class="row">
					<div class="well">
						<p style="font-weight: bold;">Main Category</p>
						<hr style="border: 1px solid #ccc;">
						<div class="list-group" style="padding: 0;">
							<a href="sub-categories?topic=food" class="list-group-item">Food</a>
							<a href="sub-categories?topic=program" class="list-group-item">Program</a>
							<a href="sub-categories?topic=media" class="list-group-item">Media</a>
							<a href="sub-categories?topic=sport" class="list-group-item">Sport</a>
							<a href="sub-categories?topic=help" class="list-group-item">Ask
								for help</a> <a href="sub-categories?topic=activity"
								class="list-group-item">Activity</a> <a
								href="sub-categories?topic=book" class="list-group-item">Book</a>
							<a href="sub-categories?topic=funny" class="list-group-item">Funny
								spot</a> <a href="sub-categories?topic=classified"
								class="list-group-item">Classified</a>
						</div>
						<form action="NewTopic.jsp" method="post">
							<div class="btn-group btn-group-md text-center">
								<button type="submit" class="btn btn-primary">New
									Sub-category</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<div class="container text-center">
		<div class="row">
			<div class="col-sm-9">
				<div class="row">
					<ul class="pagination">
						<c:if test="${currentpage > 1}">
							<li><a href="sub-categories?topic=${topic}&page=1">First</a></li>
							<li><a
								href="sub-categories?topic=${topic}&page=${currentpage - 1}">&laquo;</a></li>
						</c:if>

						<c:forEach begin="1" end="${numberofpage}" var="page">
							<c:choose>
								<c:when test="${currentpage eq page }">
									<li class="active"><a
										href="sub-categories?topic=${topic}&page=${currentpage}">${page}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="sub-categories?topic=${topic}&page=${page}">${page}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>

						<c:if test="${currentpage lt numberofpage}">
							<li><a
								href="sub-categories?topic=${topic}&page=${currentpage + 1}">&raquo;</a></li>
							<li><a
								href="sub-categories?topic=${topic}&page=${numberofpage}">Last</a></li>
						</c:if>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<jsp:include page="footer.jsp" />
</body>
</html>