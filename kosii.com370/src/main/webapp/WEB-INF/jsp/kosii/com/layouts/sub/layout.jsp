<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="js/js_kor/menu.js"></script>
<title>한국통계정보원</title>
</head>
<body>
	<!--KosiiWrapper s-->
	<div id="KosiiWrapper">
		<!--Wrap start-->
		<div id="Wrap">
			<!-- skip-navigation S -->
			<ul id="skip-navigation">
				<li><a href="#Gnb">주요메뉴바로가기</a></li>
				<li><a href="#SubCont">컨텐츠바로가기</a></li>
			</ul>
			<!-- skip-navigation E -->
			<!-- header start -->
			<div id="Header">
				











<script type="text/javascript">
function login_check(){

	if ("false" == "true"){
		location.href='/intra/board01_list.do';	
	}else{
		location.href='/intra/login.jsp';
	}
}

</script>
<link href="${pageContext.request.contextPath}/kosii18/css/style.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/kosii18/css/kosii.css" rel="stylesheet" type="text/css" />
 	<h1 id="Logo"><a href="/"><img src="${pageContext.request.contextPath}/kosii18/images/logo_new.gif" alt="한국통계정보원 로고" /></a></h1>
     <ul id="TopMenu">
       <li><a href="/">HOME</a></li>
       
		
       <li><a href="#" onClick="login_check()">인트라넷</a></li>
       <li><a href="http://webmail.kosii.or.kr/intro.php">웹메일</a></li>
       <li><a href="#">사이트맵</a></li>
     </ul> 

				
<script src="/Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type="text/javascript" src="/js/url.js"></script>
<script type="text/javascript" src="/js/common.js"></script>
<script type="text/javascript" src="/js/embed.js"></script>
<script type="text/javascript" src="/js/script.js"></script>
<script type="text/javascript">
	$(function() {
		$("#Gnb li").hover(function() {
			$(this).find('ul').show();
		}, function() {
			$(this).find('ul').hide();
		});
	});
</script>
<br />
<ul id="Gnb">
	<li><a href="/company/sub01.do">정보원소개</a>
		<ul id="GnbMn01">
			<li><a href="/company/sub01.do">인사말</a></li>
			<li><a href="/company/sub02.do">설립목적</a></li>
			<li><a href="/company/sub03.do">연혁</a></li>
			<li><a href="/company/sub07.do">CI</a></li>
			<li><a href="/company/sub04.do">조직 및 인력구성</a></li>
			<li><a href="/company/sub05.do">직원안내</a></li>
			<li><a href="/company/sub06.do">찾아오시는길</a></li>
		</ul></li>
	<li><a href="/busi/sub01.do">주요사업</a>
		<ul id="GnbMn02">
			<li><a href="/busi/sub01.do">주요사업 소개</a></li>
			<li><a href="/busi/sub03.do">국가통계DB 운영·관리</a></li>
			<li><a href="/busi/sub02.do">통계시스템 운영·관리</a></li>
			<li><a href="/busi/sub04.do">국가통계정보 제공·활용</a></li>
			<li><a href="/busi/sub05.do">통계정보화 연구용역</a></li>
			<li><a href="/busi/sub06.do">주요실적</a></li>
		</ul></li>
	<li><a href="/info/notice.do">알림광장</a>
		<ul id="GnbMn03">
			<li><a href="/info/notice.do">공지사항</a></li>
			<li><a href="/info/News.do">새소식</a></li>
			<li><a href="/info/LibBoard.do">자료실</a></li>
			<li><a href="/info/recruit.do">직원채용안내</a></li>
			<li><a href="/info/Gallery.do">포토영상갤러리</a></li>
		</ul></li>
	<li><a href="/info/faq.do">참여광장</a>
		<ul id="GnbMn04">
<!-- 			<li><a href="/info/qna.do">Q&amp;A</a></li> -->
			<li><a href="/info/faq.do">자주하는질문(FAQ)</a></li>
<!-- 			<li><a href="/info/Guest.do">방명록</a></li> -->
		</ul></li>
</ul>
			</div>
			<!-- header end -->
			<!-- Container start -->
			<div id="Container">
				

<div id="Snb">
	<h3><img src="${pageContext.request.contextPath}/kosii18/images/img_left01.gif" alt="통계정보원 소개" /></h3>
	<ul>
		<li><a id="link1" class="select" href="/company/sub01.do">인사말</a></li>
		<li><a id="link2"  href="/company/sub02.do">설립목적</a></li>
		<li><a id="link3"  href="/company/sub03.do">연혁</a></li>
		<li><a id="link3"  href="/company/sub07.do">CI</a></li>
		<li><a id="link4"  href="/company/sub04.do">조직 및 인력구성</a></li>
		<li><a id="link5"  href="/company/sub05.do">직원안내</a></li>
		<li><a id="link6"  href="/company/sub06.do">찾아오시는길</a></li>
	</ul>
</div>
				<!-- ContArea start -->
				<div id="ContArea">
					<p>
						<img src="${pageContext.request.contextPath}/kosii18/images/img_subtop01.gif" alt="국가통계발전에 기여하는 한국통계정보원 신뢰받는 통계정보" />
					</p>
					<!-- cont_Navi start -->
					<div id="cont_Navi">
						<h1>인사말</h1>
						<p>
							<a href="/"><img src="${pageContext.request.contextPath}/kosii18/images/navi_bullet.gif" alt="home" />HOME</a>
							&gt; <a href="/company/sub01.do">통계정보원소개</a> &gt; <a href="/company/sub01.do" class="home">인사말</a>
						</p>
					</div>
					<!-- cont_Navi end -->
					<!-- Contents start -->
					<div id="Contents">
<tiles:insertAttribute name="body" />
					</div>
					<!-- Contents end -->
				</div>
				<!-- ContArea end -->
				<!-- Footer_Area start -->
				<div id="Footer_Area">
					







<script type="text/javascript">
<!--
function fn_goURL(){
	var get_id = document.getElementById('site');
    var result = get_id.options[get_id.selectedIndex].value;
    var openNewWindow = window.open("about:blank");
    openNewWindow.location.href = result;
}
//-->
</script>

<ul class="Fnb">
	<li><a href="/company/sub01.do">소개</a></li>
	<li><a href="/company/sub05.do">직원안내</a></li>
	<li><a href="/company/sub06.do">찾아오시는길</a></li>
	
	
	<li class="Site">
		<label for="site">관련사이트바로가기</label>
	 	<select name="site" onChange="fn_goURL()">
				<option value="http://www.kostat.go.kr/">통계청</option>
				<option value="http://www.kosis.kr/">국가통계포털</option>
				<option value="http://www.index.go.kr/">나라지표</option>
				<option value="http://sgis.kostat.go.kr/">통계지리정보서비스</option>
				<option value="http://codi.stat.go.kr/">통계정책관리시스템</option>
				<option value="http://stat.kosis.kr/nsist/index.do">국가통계통합DB통계DB시스템</option>
				<option value="http://kosis.kr/edu/total/">e-러닝</option>
				<option
					value="http://kostat.go.kr/kssc/main/MainAction.do?method=main&amp;catgrp=kssc/">통계분류시스템</option>
				<option value="http://mdss.kostat.go.kr/mdssext/">마이크로데이터서비스시스템</option>
		</select>
		<a href="#" onclick="fn_goURL()"><img src="${pageContext.request.contextPath}/kosii18/images/btn_move.gif" alt="go" /></a></li>
	</li>
</ul>

<ul class="Copy">
	<li>대전광역시 서구 둔산대로 117번길 18, 6층(만년동, 거상빌딩) (우 35203) | TEL : 070-7709-5822 | FAX : 042-472-5920</li>
	<li>Copyright(c) 2013 한국통계정보원 All rights reserved.</li>
</ul>
				</div>
				<!-- Footer_Area end -->
			</div>
			<!-- Container end -->
		</div>
		<!--Wrap end-->
	</div>
	<!--KosiiWrapper end-->
</body>
</html>
