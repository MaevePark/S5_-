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
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/join.css" />

<script src="<%=request.getContextPath()%>/js/jquery-3.6.1.js"></script>
<script src="<%=request.getContextPath()%>/js/header.js"></script>

<title>회원가입</title>

</head>
<body>
	<%@include file="/WEB-INF/view/member/header.jsp"%>
	<div id="container" class="subPageContainer">
		<div id="contents">
			<!-- 본문 시작 -->
			<div class="sub_content">
				<!-- //side_cont -->
				<div class="content_box">
					<div class="join_base_wrap">
						<div class="member_tit">
							<h2>회원가입</h2>
							<ol>
								<li><span>01</span> 약관동의<span><img
										src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/member/icon_join_step_off.png"
										alt="" title="" /></span></li>
								<li class="page_on"><span>02</span> 정보입력<span><img
										src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/member/icon_join_step_on.png"
										alt="" title="" /></span></li>
								<li><span>03</span> 가입완료</li>
							</ol>
						</div>
						<!-- //member_tit -->
						<div class="member_cont">
							<form id="formJoin" name="formJoin"
								action="http://nvot.co.kr/member/member_ps.php" method="post"
								novalidate="novalidate">
								<input type="hidden" name="rncheck" value="none" /> <input
									type="hidden" name="dupeinfo" value="" /> <input type="hidden"
									name="pakey" value="" /> <input type="hidden" name="foreigner"
									value="" /> <input type="hidden" name="adultFl" value="" /> <input
									type="hidden" name="mode" value="join" />
	
								<!-- 회원가입/정보 기본정보 -->
								<div class="base_info_box">
									<h3>기본정보</h3>
									<span class="important">표시는 반드시
										입력하셔야 하는 항목입니다.</span>
									<div class="base_info_sec">
										<table border="0" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="25%" />
												<col width="75%" />
											</colgroup>
											<tbody>
												<tr>
													<th><span class="important">아이디</span></th>
													<td>
														<div class="member_warning">
															<input type="text" id="memId" name="memId"
																data-pattern="gdMemberId" />
														</div>
													</td>
												</tr>
												<tr class="">
													<th><span class="important">비밀번호</span></th>
													<td class="member_password">
														<div class="member_warning">
															<input type="password" id="newPassword" name="memPw"
																autocomplete="off" placeholder="" />
														</div>
													</td>
												</tr>
												<tr class="">
													<th><span class="important">비밀번호 확인</span></th>
													<td>
														<div class="member_warning">
															<input type="password" class="check-id" name="memPwRe"
																autocomplete="off" />
														</div>
													</td>
												</tr>
												<tr>
													<th><span class="important">이름</span></th>
													<td>
														<div class="member_warning">
															<input type="text" name="memNm"
																data-pattern="gdMemberNmGlobal" value="" maxlength="30" />
														</div>
													</td>
												</tr>
												<tr>
													<th><span>이메일</span></th>
													<td class="member_email">
														<div class="member_warning">
															<input type="text" name="email" id="email" value=""
																tabindex="-1" /> <select
																id="emailDomain" name="emailDomain" class="chosen-select">
																<option value="self">직접입력</option>
																<option value="naver.com">naver.com</option>
																<option value="hanmail.net">hanmail.net</option>
																<option value="daum.net">daum.net</option>
																<option value="nate.com">nate.com</option>
																<option value="hotmail.com">hotmail.com</option>
																<option value="gmail.com">gmail.com</option>
																<option value="icloud.com">icloud.com</option>
															</select>
														</div>
														<div class="member_warning js_email"></div>
														<div class="form_element">
															<input type="checkbox" id="maillingFl" name="maillingFl"
																value="y" /> <label
																for="maillingFl" class="check_s">정보/이벤트
																메일 수신에 동의합니다.</label>
														</div>
													</td>
												</tr>
												<tr>
													<th><span class="important">휴대폰번호</span></th>
													<td class="member_address">
														<div class="address_postcode">
															<input type="text" id="cellPhone" name="cellPhone"
																maxlength="12" placeholder="- 없이 입력하세요."
																data-pattern="gdNum" value="" />
														</div>
														<div class="form_element">
															<input type="checkbox" id="smsFl" name="smsFl" value="y" />
															<label for="smsFl" class="check_s">정보/이벤트
																SMS 수신에 동의합니다.</label>
														</div>
													</td>
												</tr>
												<tr>
													<th><span>전화번호</span></th>
													<td>
														<div class="member_warning">
															<input type="text" id="phone" name="phone" maxlength="12"
																placeholder="- 없이 입력하세요." data-pattern="gdNum" value="" />
														</div>
													</td>
												</tr>
												<tr>
													<th><span class="important">주소</span></th>
													<td class="member_address">
														<div class="address_postcode">
															<input type="text" name="zonecode" readonly="readonly"
																value="" />
															<button type="button" id="btnPostcode"
																class="btn_post_search">
																우편번호검색</button>
															<input type="hidden" name="zipcode" value="" />
														</div>
														<div class="address_input">
															<div class="member_warning">
																<input type="text" name="address" readonly="readonly"
																	value="" />
															</div>
															<div class="member_warning js_address_sub">
																<input type="text" name="addressSub" value="" />
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<!-- //base_info_sec -->
								</div>
								<!-- //base_info_box -->
								<!-- 회원가입/정보 기본정보 -->
								<!-- 회원가입/정보 사업자정보 -->
								<!-- 회원가입/정보 사업자정보 -->
								<!-- 회원가입/정보 부가정보 -->
								<!-- 회원가입/정보 부가정보 -->
	
								<div class="btn_center_box">
									<button type="button" id="btnCancel" class="btn_member_cancel">
										취소</button>
									<button type="button" class="btn_comfirm js_btn_join"
										value="회원가입">회원가입</button>
								</div>
								<!-- //btn_center_box -->
							</form>
						</div>
						<!-- //member_cont -->
					</div>
					<!-- //join_base_wrap -->
				</div>
				<!-- //content_box -->
				<script type="text/javascript">
					var paycoProfile = [];
					var naverProfile = [];
					var thirdPartyProfile = Array;
					var kakaoProfile = [];
	
					$(document)
							.ready(
									function() {
										var $formJoin = $("#formJoin");
	
										$(":text:first", $formJoin).focus();
	
										$("#btnCancel", $formJoin).click(
												function(e) {
													e.preventDefault();
													top.location.href = "/";
												});
	
										if ($(".js_datepicker").length) {
											$(".js_datepicker").datetimepicker({
												locale : "ko",
												format : "YYYY-MM-DD",
												dayViewHeaderFormat : "YYYY MM",
												viewMode : "days",
												ignoreReadonly : true,
												debug : false,
												keepOpen : false,
											});
										}
	
										$("#btnPostcode")
												.click(
														function(e) {
															e.preventDefault();
															$(
																	"#address-error, #addressSub-error")
																	.remove();
															$(
																	":text[name=address], :text[name=addressSub]")
																	.removeClass(
																			"text_warning");
															gd_postcode_search(
																	"zonecode",
																	"address",
																	"zipcode");
														});
	
										$("#btnCompanyPostcode")
												.click(
														function(e) {
															e.preventDefault();
															$(
																	"#comAddress-error, #comAddressSub-error")
																	.remove();
															$(
																	":text[name=comAddress], :text[name=comAddressSub]")
																	.removeClass(
																			"text_warning");
															gd_postcode_search(
																	"comZonecode",
																	"comAddress",
																	"comZipcode");
														});
	
										function sendDateData(year, month, type) {
											var dayType = "";
											var params = {
												year : year,
												month : month,
											};
											$
													.ajax(
															"../share/date_select_json.php",
															{
																data : params,
																method : "POST",
																success : function(
																		data) {
																	if (data != ""
																			&& data != null) {
																		if (type == "marry") {
																			dayType = "marriDay";
																		} else {
																			dayType = "birthDay";
																		}
																		$(
																				"#"
																						+ dayType)
																				.empty();
																		$(
																				"#"
																						+ dayType)
																				.append(
																						data);
																	}
																},
															});
										}
	
										$("#birthYear").change(
												function() {
													var birthMonthVal = $(
															"#birthMonth").val();
													if (birthMonthVal != "") {
														sendDateData(
																$("#birthYear")
																		.val(),
																$("#birthMonth")
																		.val(),
																"birth");
													}
												});
										$("#birthMonth").change(
												function() {
													var birthYearVal = $(
															"#birthYear").val();
													if (birthYearVal != "") {
														sendDateData(
																$("#birthYear")
																		.val(),
																$("#birthMonth")
																		.val(),
																"birth");
													}
												});
	
										gd_select_email_domain("email");
	
										gd_member2.init($formJoin);
	
										$(".js_btn_join").click({
											form : $formJoin
										}, gd_member2.save);
									});

					function callback_not_disabled() {
						$(".js_btn_join").prop("disabled", false);
						$(".js_btn_join em").html("회원가입");
					}
				</script>
			</div>
			<!-- //sub_content -->
		</div>
	</div>
	<%@include file="/WEB-INF/view/member/footer.jsp"%>
</body>
</html>