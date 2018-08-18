<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="row profile_row_pic">
		<img src="${sessionScope.memberSimpleVO.memberPic }" class="profile_pic">
	</div>
	<div class="row profile_info">
		<div class="profile_text_name">${sessionScope.memberSimpleVO.memberName }</div>
		<form action="home.do" method="post">
			<input type="hidden" name="job" value="logout">
			<button type="submit" class="btn_logout">로그아웃</button>
		</form>
	</div>
	<div class="row profile_row">
		<div class="col-xs-4 profile_col">
			<label class="profile_label">알림</label>
		</div>

		<div class="col-xs-4 profile_col">
			<label class="profile_label">나의 지원</label>
		</div>

		<div class="col-xs-4 profile_col">
			<label class="profile_label">나의 팀</label>
		</div>
	</div>
	<div class="row profile_row">
		<div class="col-xs-4 profile_col">
			<button type="button" class="btn btn-md btn_profile">0</button>
		</div>
		<div class="col-xs-4 profile_col">
			<form action="myApplication.do" method="post">
				<input type="hidden" name="job" value="myApplication">
				<input type="hidden" name="memberId" value="${sessionScope.memberSimpleVO.memberId }">
				<button type="submit" id="my_application" class="btn btn-md btn_profile">${myApplicationCnt }</button>
			</form>
		</div>
		<div class="col-xs-4 profile_col">
			<form action="myTeam.do" method="post">
				<input type="hidden" name="job" value="myTeam">
				<input type="hidden" name="memberId" value="${sessionScope.memberSimpleVO.memberId }">
				<button type="submit" class="btn btn-md btn_profile">
					<c:if test="${fn:length(myTeamList) > 10 }" >
						10+
					</c:if>
					<c:if test="${fn:length(myTeamList) <= 10 }" >
						${fn:length(myTeamList) }
					</c:if>
				</button>
			</form>
		</div>
	</div>
	<div class="row profile_row profile_row_btn">
		<form action="polog.do" method="post">
			<input type="hidden" name="memberId" value="${sessionScope.memberSimpleVO.memberId }">
			<button type="submit" class="btn btn-md btn_submit">나의 폴로그</button>
		</form>
	</div>
</body>
</html>