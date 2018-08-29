<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>한국통계정보원</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="http://kosii.or.kr/include/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="http://kosii.or.kr/js/url.js"></script>
<script language="JavaScript" src="http://kosii.or.kr/js/common.js"></script>
<script language="JavaScript" src="http://kosii.or.kr/js/embed.js"></script>
<script language="JavaScript" src="http://kosii.or.kr/js/script.js"></script>
<script src="http://kosii.or.kr/js/javascript.js"></script>
<script src="http://kosii.or.kr/js/flash.js"></script>
<script src="http://kosii.or.kr/js/D_menulink.js"></script>
<script src="http://kosii.or.kr/js/onload.js"></script>
<script src="http://kosii.or.kr/js/url.js"></script>
<script src="http://kosii.or.kr/js/jshash-2.2/sha256.js"/></script>

<script type="text/javaScript" language="javascript">

function checkLogin(userSe) {
    // 일반회원
    if (userSe == "GNR") {
        document.loginForm.rdoSlctUsr[0].checked = true;
        document.loginForm.rdoSlctUsr[1].checked = false;
        document.loginForm.rdoSlctUsr[2].checked = false;
        document.loginForm.userSe.value = "GNR";
    // 기업회원
    } else if (userSe == "ENT") {
        document.loginForm.rdoSlctUsr[0].checked = false;
        document.loginForm.rdoSlctUsr[1].checked = true;
        document.loginForm.rdoSlctUsr[2].checked = false;
        document.loginForm.userSe.value = "ENT";
    // 업무사용자
    } else if (userSe == "USR") {
        document.loginForm.rdoSlctUsr[0].checked = false;
        document.loginForm.rdoSlctUsr[1].checked = false;
        document.loginForm.rdoSlctUsr[2].checked = true;
        document.loginForm.userSe.value = "USR";
    }
}

function actionLogin() {

    if (document.loginForm.id.value =="") {
        alert("아이디를 입력하세요");
    } else if (document.loginForm.password.value =="") {
        alert("비밀번호를 입력하세요");
    } else {
        document.loginForm.action="<c:url value='/uat/uia/actionLogin.do'/>";
        //document.loginForm.j_username.value = document.loginForm.userSe.value + document.loginForm.username.value;
        //document.loginForm.action="<c:url value='/j_spring_security_check'/>";
        document.loginForm.submit();
    }
}

function actionCrtfctLogin() {
    document.defaultForm.action="<c:url value='/uat/uia/actionCrtfctLogin.do'/>";
    document.defaultForm.submit();
}

function goFindId() {
    document.defaultForm.action="<c:url value='/uat/uia/egovIdPasswordSearch.do'/>";
    document.defaultForm.submit();
}

function goRegiUsr() {

	var useMemberManage = '${useMemberManage}';

	if(useMemberManage != 'true'){
		alert("사용자 관리 컴포넌트가 설치되어 있지 않습니다. \n관리자에게 문의하세요.");
		return false;
	}

    var userSe = document.loginForm.userSe.value;
    // 일반회원
    if (userSe == "GNR") {
        document.loginForm.action="<c:url value='/uss/umt/EgovStplatCnfirmMber.do'/>";
        document.loginForm.submit();
    // 기업회원
    } else if (userSe == "ENT") {
        document.loginForm.action="<c:url value='/uss/umt/EgovStplatCnfirmEntrprs.do'/>";
        document.loginForm.submit();
    // 업무사용자
    } else if (userSe == "USR") {
        alert("업무사용자는 별도의 회원가입이 필요하지 않습니다.");
    }
}

function goGpkiIssu() {
    document.defaultForm.action="<c:url value='/uat/uia/egovGpkiIssu.do'/>";
    document.defaultForm.submit();
}

function setCookie (name, value, expires) {
    document.cookie = name + "=" + escape (value) + "; path=/; expires=" + expires.toGMTString();
}

function getCookie(Name) {
    var search = Name + "=";
    if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면
        offset = document.cookie.indexOf(search);
        if (offset != -1) { // 쿠키가 존재하면
            offset += search.length;
            // set index of beginning of value
            end = document.cookie.indexOf(";", offset);
            // 쿠키 값의 마지막 위치 인덱스 번호 설정
            if (end == -1)
                end = document.cookie.length;
            return unescape(document.cookie.substring(offset, end));
        }
    }
    return "";
}

function saveid(form) {
    var expdate = new Date();
    // 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
    if (form.checkId.checked)
        expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
    else
        expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
    setCookie("saveid", form.id.value, expdate);
}

function getid(form) {
    form.checkId.checked = ((form.id.value = getCookie("saveid")) != "");
}

function fnInit() {
	/* if (document.getElementById('loginForm').message.value != null) {
	    var message = document.getElementById('loginForm').message.value;
	} */
    /* if (${message} != "") {
        alert(${message});
    } */

    getid(document.loginForm);
    // 포커스
    //document.loginForm.rdoSlctUsr.focus();
}

</script>

</head>

<body>

<!--로그인체크-->
<script>
function login_chk()
{
		if(member_login.id.value=="")
		{
			alert("아이디를 입력하세요.");
			member_login.id.focus();
			return false;
		}
	
		if(member_login.password.value=="")
		{
			alert("패스워드를 입력하세요.");
			member_login.password.focus();
			return false;
		}else{
			member_login.password.value=b64_sha256(member_login.password.value)+'=';
		}
}
</script>
          <form name="loginForm" action ="<c:url value='/uat/uia/actionLogin.do'/>" method="post">
			<div style="visibility:hidden;display:none;">
			<input name="iptSubmit1" type="submit" value="전송" title="전송">
			</div>
            <input type="hidden" id="message" name="message" value="<c:out value='${message}'/>">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" background="http://kosii.or.kr/intra/images/bg.gif"><table width="1000" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="755" valign="top" background="http://kosii.or.kr/intra/images/con_bg.gif">
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="627" height="345">&nbsp;</td>
            <td align="left">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td width="206" height="24" align="left"><label>
<!--             	<input type="text" size="24" name='id' TABINDEX="1"/> -->
            	<input type="text" name="id" id="id" tabindex="1" maxlength="10" size="24"/>
            </label></td>
<!--             <td rowspan="4" align="left" valign="top"><input type="image" src="http://kosii.or.kr/intra/images/login_btn.gif" TABINDEX="3"/></td> -->
            <td rowspan="4" align="left" valign="top"><a href="#LINK" onClick="actionLogin()" tabindex="3"><img src="http://kosii.or.kr/intra/images/login_btn.gif"></a></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="10" colspan="2"></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="24" align="left">
<!--             	<input name='password' type="password"  size="26"  TABINDEX="2"/>             -->
            	<input type="password" name="password" id="password" maxlength="12" tabindex="2" onKeyDown="javascript:if (event.keyCode == 13) { actionLogin(); }" size="26"/>
            	</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="5">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="24" colspan="3"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="618">&nbsp;</td>
              </tr>
            </table></td>
            </tr>
        </table> 
        </td>
      </tr>
    </table></td>
  </tr>
</table>
            <input name="userSe" type="hidden" value="GNR"/>
            <input name="j_username" type="hidden"/>
<%--             <input type="hidden" name="returnURL" value="${pageContext.request.contextPath}/main.do"/> --%>
</form>    		    
 
</body>

</html>
