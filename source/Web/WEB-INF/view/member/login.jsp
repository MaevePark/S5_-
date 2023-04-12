<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/reset.css" />
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/common.css" />
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/member_a.css" />
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/member_b.css" />
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/layout.css" />
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/login.css" />

<script src="<%=request.getContextPath()%>/js/jquery-3.6.1.js"></script>
<script src="<%=request.getContextPath()%>/js/header.js"></script>
<script src="<%=request.getContextPath()%>/js/login.js"></script>

<title>로그인</title>

<style>
.mainTopSildeWrap, .mainTopSildeWrap .mainTopSilde .wideImages,
	.mainTopSildeWrap .mainTopSilde .slick-slide {
	height: 675px;
	overflow: hidden;
}

@media screen and (max-width:1240px) {
	.mainTopSildeWrap, .mainTopSildeWrap .mainTopSilde .wideImages,
		.mainTopSildeWrap .mainTopSilde .slick-slide {
		height: 600px;
	}
}

@media screen and (max-width:1140px) {
	.mainTopSildeWrap, .mainTopSildeWrap .mainTopSilde .wideImages,
		.mainTopSildeWrap .mainTopSilde .slick-slide {
		height: 540px;
	}
}

@media screen and (max-width:1024px) {
	.mainTopSildeWrap, .mainTopSildeWrap .mainTopSilde .wideImages,
		.mainTopSildeWrap .mainTopSilde .slick-slide {
		height: 500px;
	}
}

@media screen and (max-width:960px) {
	.mainTopSildeWrap, .mainTopSildeWrap .mainTopSilde .wideImages,
		.mainTopSildeWrap .mainTopSilde .slick-slide {
		height: 420px;
	}
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/view/member/header.jsp"%>
	<div id="container" class="subPageContainer">
		<div id="contents">
			<!-- 본문 시작 -->
			<div class="sub_content">
				<div class="content_box">
					<div class="member_wrap">
						<div class="member_tit">
							<h2>로그인</h2>
						</div>
						<!-- //member_tit -->
						<div class="member_cont">
							<form id="formLogin"
								action="<%=request.getContextPath()%>/login.do" method="post">
								<input type="hidden" id="mode" name="mode" value="login" />
								<!--                   <input
                    type="hidden"
                    id="returnUrl"
                    name="returnUrl"
                    value="http%3A%2F%2Fnvot.co.kr%2Fmain%2Findex.php"
                  /> -->
								<div class="member_login_box">
									<h3>회원 로그인</h3>
									<div class="login_input_sec">
										<div>
											<input type="text" id="loginId" name="loginId" value=""
												placeholder="아이디" aria-required="true" /> <input
												type="password" id="loginPwd" name="loginPwd" value=""
												placeholder="비밀번호" aria-required="true" />
										</div>
										<button type="submit">로그인</button>
									</div>
									<div class="id_chk">
										<span class="form_element"> <input type="checkbox"
											id="saveId" name="saveId" value="y" /> <label for="saveId"
											class="on">아이디 저장</label>
										</span>
										<p class="dn js_caution_msg1">아이디, 비밀번호가 일치하지 않습니다. 다시 입력해
											주세요.</p>
									</div>
								</div>
								<!-- //login_box -->
								<div class="btn_login_box">
									<ul>
										<li>
											<button type="button" id="btnJoinMember" class="btn_member_join"
												onclick="location.href='<%=request.getContextPath()%>/join'">회원가입
											</button>
										</li>
										<li>
											<button id="btnFindId" class="btn_member_white">아이디 찾기</button>
										</li>
										<li>
											<button id="btnFindPwd" class="btn_member_white">비밀번호 찾기</button>
										</li>
									</ul>
								</div>
								<!-- //btn_login_box -->
							</form>
							<!-- //nonmember_join_box -->
						</div>
						<!-- //member_cont -->
					</div>
					<!-- //member_wrap -->
				</div>
				<!-- //content_box -->
			</div>
			<!-- //sub_content -->
		</div>
		<!-- //본문 끝 contents -->
	</div>

	<%@include file="/WEB-INF/view/member/footer.jsp"%>
</body>
</html>