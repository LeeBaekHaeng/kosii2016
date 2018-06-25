<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul>
	<c:forEach items="${selectCmmCodeDetail}" var="result" varStatus="i">
		<li>${i.index},${i.count},${result.code},${result.codeNm}</li>
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

