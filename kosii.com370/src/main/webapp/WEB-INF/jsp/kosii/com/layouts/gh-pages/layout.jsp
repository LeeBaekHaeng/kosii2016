<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/kosii18/css/kosii.css" rel="stylesheet" type="text/css" />
<title>한국통계정보원</title>

<script type="text/javascript">
function fn_egov_inqire_notice(nttId, bbsId, bbsTyCode, bbsAttrbCode, authFlag) {
	document.subForm.nttId.value = nttId;
	document.subForm.bbsId.value = bbsId;
	document.subForm.bbsTyCode.value = bbsTyCode;
	document.subForm.bbsAttrbCode.value = bbsAttrbCode;
	document.subForm.authFlag.value = authFlag;
	document.subForm.action = "/info/infoView.do";
	document.subForm.submit();			
}

function fn_goURL(){
	var get_id = document.getElementById('site');
    var result = get_id.options[get_id.selectedIndex].value;
    var openNewWindow = window.open("about:blank");
    openNewWindow.location.href = result;
}

var rotation;
function theRotator() {
	$('div.Popupzone ul li').css({opacity: 0.0});
	
	$('div.Popupzone ul li:first').css({opacity: 1.0});
	
	if($('div.Popupzone ul li').length > 1)
			rotation = setInterval('rotate_next()',5000);
}

function playStopBanner(){
	if($('#playAndStop').attr('src') == '/images/stop.gif'){
		clearInterval(rotation);
		$('#playAndStop').attr('src', '/images/play.gif');
		$('#playAndStop').attr('alt', '재생');
	}else{
		theRotator();
		$('#playAndStop').attr('src', '/images/stop.gif');
		$('#playAndStop').attr('alt', '정지');
	}
}

function nextBanner(){	
	if($('div.Popupzone ul li').length > 1){
		playStopBanner();
		rotate_next();
	}
}

function prevBanner(){
	if($('div.Popupzone ul li').length > 1){
		playStopBanner();
		rotate_prev();
	}	
}

function rotate_prev(){
	var current = ($('div.Popupzone ul li.show') ? $('div.Popupzone ul li.show') : $('div.Popupzone ul li:first'));

	if ( current.length == 0 ) current = $('div.Popupzone ul li:first');

	var prev = ((current.prev().length) ? ((current.prev().hasClass('show')) ? $('div.Popupzone ul li:last') : current.prev()) : $('div.Popupzone ul li:last'));
	
	prev.css({opacity: 0.0}).addClass('show').animate({opacity: 1.0}, 1000);

	current.animate({opacity: 0.0}, 1000).removeClass('show');
}

function rotate_next() {	
	var current = ($('div.Popupzone ul li.show') ? $('div.Popupzone ul li.show') : $('div.Popupzone ul li:first'));

    if ( current.length == 0 ) current = $('div.Popupzone ul li:first');

	var next = ((current.next().length) ? ((current.next().hasClass('show')) ? $('div.Popupzone ul li:first') : current.next()) : $('div.Popupzone ul li:first'));
	
	next.css({opacity: 0.0}).addClass('show').animate({opacity: 1.0}, 2000);

	current.animate({opacity: 0.0}, 1000).removeClass('show');
}

function ready(){
	var length = $('div.Popupzone ul li').length;

	if( length > 1){
		theRotator();
	}
	$('div.Popupzone').fadeIn(1000);
    $('div.Popupzone ul li').fadeIn(1000); // tweek for IE
}
</script>
</head>
<body onload="ready()">
	<form name="subForm" method="post">
		<input type="hidden" name="nttId"/> 
		<input type="hidden" name="bbsId"/> 
		<input type="hidden" name="bbsTyCode"/> 
		<input type="hidden" name="bbsAttrbCode"/> 
		<input type="hidden" name="authFlag"/> 
		<input type="hidden" name="pageIndex" value="1"/>
	</form>
	<!--KosiiMainWrap s-->
	<div id="KosiiMainWrap">
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
<!-- <link href="/css/kosii.css" rel="stylesheet" type="text/css" /> -->
 	<h1 id="Logo"><a href="/"><img src="${pageContext.request.contextPath}/kosii18/images/logo_new.gif" alt="한국통계정보원 로고" /></a></h1>
     <ul id="TopMenu">
       <li><a href="/">HOME</a></li>
       
		
       <li><a href="#" onClick="login_check()">인트라넷</a></li>
       <li><a href="http://webmail.kosii.or.kr/intro.php">웹메일</a></li>
       <li><a href="#">사이트맵</a></li>
	<c:if test="${not empty loginVO.name}">
		<li>${loginVO}${loginVO.name }님 환영합니다. <a href="${pageContext.request.contextPath }/uat/uia/actionLogout.do">로그아웃</a></li>
	</c:if>
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
	<li><a href="${pageContext.request.contextPath}/EgovPageLink.do?link=kosii/com/sub/company/sub01">정보원소개</a>
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
<tiles:insertAttribute name="body" />
			<!-- MainCont start -->
			<div id="MainCont">
				<div class="Popupzone">
					<ul>
						
							<li >
								<a href="http://www.kosii.or.kr/update/CheckList.exe" >
									<img src="/GetImageServlet.do?filePath=/home/hosting_users/kosii/uploads/PBLCTE_201304221109367831" width="304" height="140" alt="2010 경제총조사 패치본 다운로드" />
								</a>
							</li>
						
					</ul>
					<p>
						<a href="#" onclick="prevBanner()">
							<img src="${pageContext.request.contextPath}/kosii18/images/arr_l.gif" alt="이전" />
						</a>
						<a href="#" onclick="playStopBanner()">
							<img id="playAndStop" src="${pageContext.request.contextPath}/kosii18/images/stop.gif" alt="정지" />
						</a>
						<a href="#" onclick="nextBanner()">
							<img src="${pageContext.request.contextPath}/kosii18/images/arr_r.gif" alt="다음" />
						</a>
					</p>
				</div>
				<dl class="Notice">
					<dt>공지사항</dt>
					 
						<dd>
							<a href="#"  title="&#039;18년 통계교육원 외부강사 인력풀 모집계획"
											 onclick="fn_egov_inqire_notice('615', 'BBSMSTR_000000000192', 
											 											'BBST03', 'BBSA03', 
											 											'Y' )" >
								&#039;18년 통계교육원 외부강사 인력풀 모집계획
								
							</a>
						</dd>
					
						<dd>
							<a href="#"  title="제1회 통계 바로쓰기 공모전"
											 onclick="fn_egov_inqire_notice('607', 'BBSMSTR_000000000192', 
											 											'BBST03', 'BBSA03', 
											 											'Y' )" >
								제1회 통계 바로쓰기 공모전
								
							</a>
						</dd>
					
						<dd>
							<a href="#"  title="2016년 한국통계정보원 워크숍 안내"
											 onclick="fn_egov_inqire_notice('605', 'BBSMSTR_000000000192', 
											 											'BBST03', 'BBSA03', 
											 											'Y' )" >
								2016년 한국통계정보원 워크숍 안내
								
							</a>
						</dd>
					
						<dd>
							<a href="#"  title="(재)한국통계정보원 사무실 이전 안내"
											 onclick="fn_egov_inqire_notice('599', 'BBSMSTR_000000000192', 
											 											'BBST03', 'BBSA03', 
											 											'Y' )" >
								(재)한국통계정보원 사무실 이전 안내
								
							</a>
						</dd>
					
						<dd>
							<a href="#"  title="기업통계 활성화 세미나 안내"
											 onclick="fn_egov_inqire_notice('596', 'BBSMSTR_000000000192', 
											 											'BBST03', 'BBSA03', 
											 											'Y' )" >
								기업통계 활성화 세미나 안내
								
							</a>
						</dd>
					
				</dl>

				<dl class="News">
					<dt>직원채용안내</dt>
					
						<dd>
							<a href="#"  title="기간제 근로자 수시모집"
											 onclick="fn_egov_inqire_notice('616', 'BBSMSTR_000000000211', 
											 											'BBST03', 'BBSA03', 
											 											'Y' )" >
								기간제 근로자 수시모집
								
							</a>
						</dd>
					
						<dd>
							<a href="#"  title="SW기술자 신입직원 모집"
											 onclick="fn_egov_inqire_notice('613', 'BBSMSTR_000000000211', 
											 											'BBST03', 'BBSA03', 
											 											'Y' )" >
								SW기술자 신입직원 모집
								
							</a>
						</dd>
					
						<dd>
							<a href="#"  title="한국통계정보원 인턴계약직 채용공고"
											 onclick="fn_egov_inqire_notice('611', 'BBSMSTR_000000000211', 
											 											'BBST03', 'BBSA03', 
											 											'Y' )" >
								한국통계정보원 인턴계약직 채용공고
								
							</a>
						</dd>
					
						<dd>
							<a href="#"  title="기간제근로자 모집(완료)"
											 onclick="fn_egov_inqire_notice('610', 'BBSMSTR_000000000211', 
											 											'BBST03', 'BBSA03', 
											 											'Y' )" >
								기간제근로자 모집(완료)
								
							</a>
						</dd>
					
						<dd>
							<a href="#"  title="기간제근로자 모집(완료)"
											 onclick="fn_egov_inqire_notice('609', 'BBSMSTR_000000000211', 
											 											'BBST03', 'BBSA03', 
											 											'Y' )" >
								기간제근로자 모집(완료)
								
							</a>
						</dd>
					
				</dl>
				<p class="MainTitle">
					<img src="${pageContext.request.contextPath}/kosii18/images/maintitle.jpg" alt="한국통계정보원은 국가통계정보시스템 구축 및 운영 기관입니다." />
				</p>
			</div>
			<!-- MainCont end -->
			<!-- MainBusiness start -->
			<div id="MainBusiness">
				<h3>주요사업소개</h3>
				<dl class="Business">
					<dt>국가통계시스템 운영·관리</dt>
					<dd>국가통계포털(KOSIS), 나라통계시스템 등 통계조사, 자료처리 및 보급, 전산장비, HelpDesk 등을 운영·관리 합니다.</dd>
				</dl>
				<dl class="Business">
					<dt>국가통계DB 운영·관리</dt>
					<dd>각 기관 통계자료를 수집·분석·품질점검·모니터링 등을 통해 높은 품질의 통계정보 이용을 활성화 합니다.</dd>
				</dl>
				<dl class="Business">
					<dt>국가통계정보 제공·활용</dt>
					<dd>사용자 맞춤형 통계자료를 추출·제공하여 각계 각층에서 통계자료를 효율적으로 활용하도록 합니다. </dd>
				</dl>
				<dl class="Business">
					<dt>국가통계정보화 연구용역</dt>
					<dd>국가통계정보시스템 구축, ISP/BPR/PMO 등의 컨설팅과 이를통한 미래발전 모델을 마련 합니다.</dd>
				</dl>
			</div>
			<!-- MainBusiness end -->
			<!-- Footer_Area start -->
			<div id="MainFooter">
				<ul class="Fnb">
					<li><a href="/company/sub01.do">소개</a></li>
					<li><a href="/company/sub05.do">직원안내</a></li>
					<li><a href="/company/sub06.do">찾아오시는길</a></li>
					
					<li class="Site">
					<label for="site">관련사이트바로가기</label> 
					<select name="site" id="site">
							<option value="http://www.kostat.go.kr/">통계청</option>
							<option value="http://www.kosis.kr/">국가통계포털</option>
							<option value="http://www.index.go.kr/">나라지표</option>
							<option value="http://sgis.kostat.go.kr/">통계지리정보서비스</option>
							<option value="http://codi.stat.go.kr/">통계정책관리시스템</option>
							<option value="http://stat.kosis.kr/nsist/index.do">국가통계통합DB통계DB시스템</option>
							<option value="http://kosis.kr/edu/total/">e-러닝</option>
							<option value="http://kostat.go.kr/kssc/main/MainAction.do?method=main&amp;catgrp=kssc/">통계분류시스템</option>
							<option value="http://mdis.kostat.go.kr/index.do">마이크로데이터서비스시스템</option>
					</select>
					<a href="#" onclick="fn_goURL()"><img src="${pageContext.request.contextPath}/kosii18/images/btn_move.gif" alt="go" /></a></li>
				</ul>
				<ul class="Copy">
					<li>대전광역시 서구 둔산대로 117번길 18, 6층(만년동, 거상빌딩) (우 35203) | TEL :
						070-7709-5822 | FAX : 042-472-5920</li>
					<li>Copyright(c) 2013 한국통계정보원 All rights reserved.</li>
				</ul>
			</div>
			<!-- Footer_Area end -->
		</div>
		<!--Wrap end-->
	</div>
	<!--KosiiMainWrap end-->
</body>
</html>
