<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>
	<h1>Hello, world!</h1>

	<ul class="list-group">
		<c:forEach items="${selectCmmCodeDetail}" var="result" varStatus="i">
			<li class="list-group-item">${i.index},${i.count},${result.code},${result.codeNm}</li>
		</c:forEach>
	</ul>

	<ol>
		<c:forEach items="${selectCmmCodeDetails.COM001}" var="result">
			<li>${result.code},${result.codeNm}</li>
		</c:forEach>
	</ol>

	<ol>
		<c:forEach items="${selectCmmCodeDetails.COM003}" var="result">
			<li>${result.code},${result.codeNm}</li>
		</c:forEach>
	</ol>

	<table class="table">
		<thead>
			<tr>
				<th scope="col">index</th>
				<th scope="col">count</th>
				<th scope="col">code</th>
				<th scope="col">codeNm</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${selectCmmCodeDetail}" var="result" varStatus="i">
				<tr>
					<th scope="row">${i.index}</th>
					<td>${i.count}</td>
					<td>${result.code}</td>
					<td>${result.codeNm}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
		crossorigin="anonymous"></script>
</body>
</html>
