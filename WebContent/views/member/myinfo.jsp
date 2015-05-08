<%@page import="com.sds.icto.mysite.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVo authMember=(MemberVo)session.getAttribute("authMember");
%>
<!doctype html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite/assets/css/user.css" rel="stylesheet" type="text/css">
</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<div id="header">
		<jsp:include page="/views/include/header.jsp" flush="false"/>
		</div>
		<div id="content">
			<div id="user">
				<form id="join-form" name="joinForm" method="post" action="/mysite/member">
				<input type="hidden" name="a" value="update">
				<label class="block-label" for="name">이름</label>
				<input id="name" name="name" type="text" value="<%=authMember.getName()%>">

				<label class="block-label" for="email">이메일</label>
				<input id="email" name="email" type="text" value="<%=authMember.getEmail()%>" disabled="disabled">
				
				<fieldset>
					<legend>성별</legend>
					<label>여</label> <input type="radio" name="gender" value="female" <%= ("female".equals(authMember.getGender())) ? "checked" : "" %>>
					<label>남</label> <input type="radio" name="gender" value="male" <%= ("male".equals(authMember.getGender())) ? "checked" : "" %>>
					<input type="submit" value="수정하기">
				</fieldset>
				</form>
			</div>
		</div>
		<div id="navigation">
			<jsp:include page="/views/include/navigation.jsp"/>
		</div>
		<div id="footer">
			<jsp:include page="/views/include/footer.jsp"/>
		</div>
	</div>
</body>
</html>