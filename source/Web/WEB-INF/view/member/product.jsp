<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/reset.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/common.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/member_a.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/member_b.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/layout.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/index.css" />

<script src="<%=request.getContextPath()%>/js/jquery-3.6.1.js"></script>
<script src="<%=request.getContextPath()%>/js/header.js"></script>

<title>상품상세페이지</title>

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
	<!-- TODO -->
	<div id="container" class="subPageContainer">
		<div id="contents">
			<!-- 본문 시작 -->
			<div class="sub_content">
				<div class="content_box">
					<div class="location_wrap"></div>
					<!-- //location_wrap -->
					<!-- 상품 상단 -->
					<div class="item_photo_info_sec">
						<div class="item_photo_view_box -moveDom">
							<div class="item_photo_view">
								<div class="item_photo_big">
									<span class="img_photo_big"><a href="#lyZoom"
										id="mainImage" class="zoom_layer_open btn_open_layer"><img
											src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/22/11/44/1000001100/1000001100_detail_039.jpg"
											width="700" alt="미니멀웍스 잭 쉘터 플러스 탄" title="" class="middle"></a></span>
									<a href="#lyZoom"
										class="btn_zoom zoom_layer_open btn_open_layer"><img
										src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/icon/goods_icon/icon_zoom.png"
										alt="" title=""></a>
								</div>
								<div id="testZoom" style="display: none">
									<img
										src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/22/11/44/1000001100/1000001100_magnify_096.jpg"
										width="1000" alt="미니멀웍스 잭 쉘터 플러스 탄" title="" class="middle">
								</div>
								<!-- //item_photo_big -->
								<div class="item_photo_slide" style="visibility: visible;">
									<button type="button"
										class="slick_goods_prev slick-arrow slick-hidden"
										aria-disabled="true" tabindex="-1">
										<img
											src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/common/arrow_prev.png"
											alt="이전 상품 이미지" title="">
									</button>
									<ul
										class="slider_wrap slider_goods_nav slick-initialized slick-slider">
										<div aria-live="polite" class="slick-list draggable">
											<div class="slick-track"
												style="opacity: 1; width: 127px; transform: translate3d(0px, 0px, 0px);"
												role="listbox">
												<li class="slick-slide slick-current slick-active"
													data-slick-index="0" aria-hidden="false" tabindex="-1"
													role="option" aria-describedby="slick-slide10"
													style="width: 128px;"><a
													href="javascript:gd_change_image('0', 'detail');"
													tabindex="0"><img
														src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/22/11/44/1000001100/t50_1000001100_detail_039.jpg"
														width="68" alt="미니멀웍스 잭 쉘터 플러스 탄" title="" class="middle"></a></li>
											</div>
										</div>
									</ul>
									<button type="button"
										class="slick_goods_next slick-arrow slick-hidden"
										aria-disabled="true" tabindex="-1">
										<img
											src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/common/arrow_next.png"
											alt="다음 상품 이미지" title="">
									</button>
								</div>
								<!-- //item_photo_slide -->
							</div>
							<!-- //item_photo_view -->
						</div>
						<!-- //item_photo_view_box -->

						<form name="frmView" id="frmView" method="post">
							<input type="hidden" name="mode" value="get_benefit"> <input
								type="hidden" name="scmNo" value="1"> <input
								type="hidden" name="cartMode" value=""> <input
								type="hidden" name="set_goods_price" value="540000"> <input
								type="hidden" id="set_goods_fixedPrice"
								name="set_goods_fixedPrice" value="0.00"> <input
								type="hidden" name="set_goods_mileage" value="0"> <input
								type="hidden" name="set_goods_stock" value="∞"> <input
								type="hidden" name="set_coupon_dc_price" value="540000.00">
							<input type="hidden" id="set_goods_total_price"
								name="set_goods_total_price" value="0"> <input
								type="hidden" id="set_option_price" name="set_option_price"
								value="0"> <input type="hidden"
								id="set_option_text_price" name="set_option_text_price"
								value="0"> <input type="hidden" id="set_add_goods_price"
								name="set_add_goods_price" value="0"> <input
								type="hidden" name="set_total_price" value="540000"> <input
								type="hidden" name="mileageFl" value="c"> <input
								type="hidden" name="mileageGoods" value="0.00"> <input
								type="hidden" name="mileageGoodsUnit" value="percent"> <input
								type="hidden" name="goodsDiscountFl" value="n"> <input
								type="hidden" name="goodsDiscount" value="0.00"> <input
								type="hidden" name="goodsDiscountUnit" value="percent">
							<input type="hidden" name="taxFreeFl" value="t"> <input
								type="hidden" name="taxPercent" value="10.0"> <input
								type="hidden" name="scmNo" value="1"> <input
								type="hidden" name="brandCd" value="002"> <input
								type="hidden" name="cateCd" value="002"> <input
								type="hidden" id="set_dc_price" value="0"> <input
								type="hidden" id="goodsOptionCnt" value="1"> <input
								type="hidden" name="optionFl" value="n"> <input
								type="hidden" name="goodsDeliveryFl" value="y"> <input
								type="hidden" name="sameGoodsDeliveryFl" value="n"> <input
								type="hidden" name="useBundleGoods" value="1">
							<div class="item_info_box">
								<!-- //time_sale -->
								<div class="item_tit_detail_cont">
									<div class="item_detail_tit">
										<h3>미니멀웍스 잭 쉘터 플러스 탄</h3>
										<div class="btn_layer btn_qa_share_box">
											<span class="target_sns_share"><a href="#lySns"
												class="btn_gray_mid"><img class="arrow"
													src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/goods/icon_share.png"
													alt="" title=""></a></span>

											<div id="lySns" class="layer_area" style="display: none;">
												<div class="ly_wrap sns_layer">
													<div class="ly_tit">
														<strong>SNS 공유하기</strong>
													</div>
													<div class="ly_cont">
														<div class="sns_list">
															<ul>
																<li><a
																	href="https://www.facebook.com/sharer/sharer.php?display=popup&amp;redirect_uri=http%3A%2F%2Fwww.facebook.com&amp;u=http%3A%2F%2Fnvot.co.kr%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000001100%26mtn%3D7%255E%257C%255EMD%2BPICK%255E%257C%255En&amp;t=%EB%AF%B8%EB%8B%88%EB%A9%80%EC%9B%8D%EC%8A%A4+%EC%9E%AD+%EC%89%98%ED%84%B0+%ED%94%8C%EB%9F%AC%EC%8A%A4+%ED%83%84"
																	data-width="750" data-height="300" data-sns="facebook"
																	class="btn-social-popup"><img
																		src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/btn/sns-facebook.png"
																		alt="페이스북 공유" title=""><br>
																	<span>페이스북</span></a></li>
																<li><a
																	href="https://twitter.com/intent/tweet?text=%EB%AF%B8%EB%8B%88%EB%A9%80%EC%9B%8D%EC%8A%A4+%EC%9E%AD+%EC%89%98%ED%84%B0+%ED%94%8C%EB%9F%AC%EC%8A%A4+%ED%83%84&amp;url=http%3A%2F%2Fnvot.co.kr%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000001100%26mtn%3D7%255E%257C%255EMD%2BPICK%255E%257C%255En"
																	data-width="500" data-height="250" data-sns="twitter"
																	class="btn-social-popup"><img
																		src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/btn/sns-twitter.png"
																		alt="트위터 공유" title=""><br>
																	<span>트위터</span></a></li>
																<li><a
																	href="https://www.pinterest.com/pin/create/button/?url=http%3A%2F%2Fnvot.co.kr%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000001100%26mtn%3D7%255E%257C%255EMD%2BPICK%255E%257C%255En&amp;description=%5B%EC%BA%A0%ED%8D%BC%EB%93%A4%EC%9D%98+%EB%B0%A9%EC%95%97%EA%B0%84%2C+%EC%97%94%EB%B3%B4%ED%8A%B8%5D+%EB%AF%B8%EB%8B%88%EB%A9%80%EC%9B%8D%EC%8A%A4+%EC%9E%AD+%EC%89%98%ED%84%B0+%ED%94%8C%EB%9F%AC%EC%8A%A4+%ED%83%84&amp;media=https%3A%2F%2Fcdn-pro-web-218-48-godomall.spdycdn.net%2Fbiobkj2_godomall_com%2Fdata%2Fgoods%2F22%2F11%2F44%2F1000001100%2F1000001100_detail_039.jpg"
																	data-width="750" data-height="570" data-sns="pinterest"
																	class="btn-social-popup"><img
																		src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/btn/sns-pinterest.png"
																		alt="핀터레스트 공유" title=""><br>
																	<span>핀터레스트</span></a></li>

																<script type="text/javascript">
																	$(function() {
																		$(
																				".btn-social-popup")
																				.click(
																						function(
																								e) {
																							e
																									.preventDefault();

																							gd_popup({
																								url : $(
																										this)
																										.prop(
																												"href"),
																								target : "_blank",
																								width : $(
																										this)
																										.data(
																												"width"),
																								height : $(
																										this)
																										.data(
																												"height"),
																								resizable : "no",
																								scrollbars : "no"
																							});
																						});
																	});
																</script>


																<li><a href="javascript:shareStory();"
																	id="shareKakaoStoryBtn" data-sns="kakaostory"><img
																		src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/btn/sns-kakaostory.png"
																		alt="카카오스토리 공유" title=""><br>
																	<span>카카오스토리</span></a></li>
																<script type="text/javascript"
																	src="/data/skin/front/mplshop/js/kakao/kakao.min.js"></script>
																<script type="text/javascript">
																	//<![CDATA[
																	Kakao
																			.init("");
																	function shareStory() {

																		Kakao.Story
																				.share({
																					text : "",
																					url : "http://nvot.co.kr/goods/goods_view.php?goodsNo=1000001100&mtn=7%5E%7C%5EMD+PICK%5E%7C%5En"
																				});
																	}
																	//]]>
																</script>

															</ul>
															<div class="sns_copy_url">
																<input type="text"
																	value="http://nvot.co.kr/goods/goods_view.php?goodsNo=1000001100&amp;mtn=7%5E%7C%5EMD+PICK%5E%7C%5En">
																<button type="button" class="gd_clipboard" title="상품주소"
																	data-clipboard-text="http://nvot.co.kr/goods/goods_view.php?goodsNo=1000001100&amp;mtn=7%5E%7C%5EMD+PICK%5E%7C%5En">
																	<em>URL복사</em>
																</button>
															</div>
														</div>
													</div>
													<!-- //ly_cont -->
													<a href="#close" class="ly_close"><img
														src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/common/layer/btn_layer_close.png"
														alt="닫기" title=""></a>
												</div>
												<!-- //ly_wrap -->
											</div>
											<!-- //layer_area -->
										</div>
										<!-- //btn_qa_share_box -->
									</div>
									<div class="item_detail_list">


										<dl class="item_price">
											<dt>판매가</dt>
											<dd>
												<strong><strong>540,000</strong></strong>원
												<!-- 글로벌 참조 화폐 임시 적용 -->
											</dd>
										</dl>
										<dl>
											<dt>구매제한</dt>
											<dd>옵션당 최소 1개</dd>
										</dl>
										<dl class="item_discount_mileage">
											<dt>구매혜택</dt>
											<dd>
												<span class="item_discount dn">할인 : <strong
													class="total_benefit_price"></strong> <strong
													class="benefit_price item_apply"></strong></span> <span
													class="item_mileage">적립 마일리지 : <strong
													class="total_benefit_mileage">+16,200원</strong> <strong
													class="benefit_mileage item_apply">(상품 : 16,200원)</strong></span>
											</dd>
										</dl>
										<dl class="item_delivery">
											<dt>배송비</dt>
											<dd>
												<strong>0원</strong> <input type="hidden"
													name="deliveryCollectFl" value="pre"> <strong>
													/ 주문시결제(선결제)</strong> <span class="btn_layer"> <span
													class="btn_gray_list"><a href="#lyDelivery"
														class="btn_gray_small"><em>조건별배송</em></a></span>
													<div id="lyDelivery" class="layer_area"
														style="display: none;">
														<div class="ly_wrap delivery_layer">
															<div class="ly_tit">금액별배송비</div>
															<div class="ly_cont">
																<div class="delivery_list">
																	<ul>
																		<li>0원 이상 ~ 100,000원 미만 <span> 5,000원 </span>
																		</li>
																		<li>100,000원 이상 <span> 0원 </span>
																		</li>
																	</ul>
																</div>
																<p class="chk_none">배송비 계산 기준 : 판매가 + 옵션가 + 추가상품가 +
																	텍스트옵션가 - 상품할인가 - 상품쿠폰할인가</p>
															</div>
															<!-- //ly_cont -->
															<a href="#close" class="ly_close"><img
																src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/common/layer/btn_layer_close.png"
																alt="닫기" title=""></a>
														</div>
													</div>
												</span>
												<div class="delivery-detail">
													<input type="hidden" name="deliveryMethodFl"
														value="delivery">
													<div class="delivery-division">택배</div>


													<div class="js-deliveryMethodVisitArea dn">방문 수령지 :
														경기도 안양시 동안구 엘에스로 23 JDO빌딩 1층 엔보트</div>
												</div>
											</dd>
										</dl>
										<dl>
											<dt>브랜드</dt>
											<dd>MINIMALWORKS</dd>
										</dl>
										<dl>
											<dt>제조사</dt>
											<dd>제이디아웃도어</dd>
										</dl>
										<dl>
											<dt>원산지</dt>
											<dd>중국</dd>
										</dl>


									</div>
									<!-- //item_detail_list -->
									<div class="item_choice_list">
										<table class="option_display_area" border="0" cellpadding="0"
											cellspacing="0">
											<colgroup>
												<col width="330px">
												<col>
												<col width="80px">
												<col width="">
											</colgroup>
											<tbody id="option_display_item_0">
												<tr class="check optionKey_0">
													<td class="cart_prdt_name"><input type="hidden"
														name="goodsNo[]" value="1000001100"> <input
														type="hidden" name="optionSno[]" value="3193"> <input
														type="hidden" name="goodsPriceSum[]" value="540000">
														<input type="hidden" name="addGoodsPriceSum[]" value="0">
														<input type="hidden" name="couponApplyNo[]" value="">
														<input type="hidden" name="couponSalePriceSum[]" value="">
														<input type="hidden" name="couponAddPriceSum[]" value="">
														<div class="cart_tit_box">
															<strong class="cart_tit"> <span>미니멀웍스 잭
																	쉘터 플러스 탄</span> <span class="cart_btn_box">
																	<button type="button" class="btn_alert_login">
																		<img
																			src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/common/btn/btn_coupon_apply.png"
																			alt="쿠폰적용" title="">
																	</button>
															</span> <span id="option_text_display_0"></span>
															</strong>
														</div> <!-- //cart_tit_box --></td>
													<!-- //cart_prdt_name -->
													<td><span class="count"> <span
															class="goods_qty"> <input type="text"
																name="goodsCnt[]" class="text goodsCnt_0" title="수량"
																value="1" data-key="0" data-value="1" data-stock="0"
																onchange="goodsViewController.input_count_change(this, '1');return false;">
																<span>
																	<button type="button" class="up goods_cnt" title="증가"
																		value="up^|^0">증가</button>
																	<button type="button" class="down goods_cnt" title="감소"
																		value="dn^|^0">감소</button>
															</span>
														</span>
													</span> <!-- //count --></td>
													<td class="item_choice_price"><input type="hidden"
														name="optionPriceSum[]" value="0"> <input
														type="hidden" name="option_price_0" value="0.00">
														<strong class="option_price_display_0">540,000</strong>원</td>
													<!-- //item_choice_price -->
													<td></td>
												</tr>
											</tbody>
										</table>
										<div class="item_price_cont">
											<div class="end_price item_tatal_box">
												<dl class="total_goods">
													<dt>총 상품금액</dt>
													<dd>
														<strong class="goods_total_price">540,000<b>원</b></strong>
													</dd>
												</dl>
												<dl class="total_discount dn">
													<dt>총 할인금액</dt>
													<dd>
														<strong class="total_benefit_price"></strong>
													</dd>
												</dl>
												<dl class="total_amount">
													<dt>총 합계금액</dt>
													<dd>
														<strong class="total_price"> 540,000<b>원</b></strong>
													</dd>
												</dl>
											</div>
											<!-- //item_tatal_box -->
										</div>
										<!-- //item_price_cont -->
									</div>
									<!-- //item_choice_list -->
									<div class="btn_choice_box">
										<div>
											<!-- N:재입고 알림이 있을 때는 restock 클래스를 div에 같이 넣어주세요 -->
											<button id="cartBtn" type="button" class="btn_add_cart">장바구니</button>
											<button id="wishBtn" type="button" class="btn_add_wish">찜하기</button>
											<button type="button" class="btn_add_order">바로 구매</button>
										</div>
										<!-- 네이버 톡톡, 카카오 엘로아이디 -->
										<div class="contactPop">
											<ul>
											</ul>
										</div>
										<!-- //네이버 톡톡, 카카오 엘로아이디 -->
										<!-- 네이버 페이 샘플이미지 -->
										<div class="NaverBtn_area">
											<img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/naverpay.jpg"
												title="">
										</div>
										<!-- 네이버 페이 샘플이미지 -->
										<!-- //btn_choice_box -->
										<div class="pay_box">
											<div class="payco_pay"></div>
											<div class="naver_pay"></div>
										</div>
										<!-- //pay_box -->
									</div>
								</div>
								<!-- //item_tit_detail_cont -->
							</div>
							<!-- //item_info_box -->
						</form>
					</div>
					<!-- //item_photo_info_sec -->
					<!-- //상품 상단 끝 -->
					<div class="detail_explain_box mTop70">
						<div class="s_title">
							<h3>RELATED ITEMS</h3>
							<span>본 상품의 구매자 분들은 아래 상품들도 함께 구매하셨습니다.</span>
						</div>
						<div class="goods_list">
							<div class="goods_list_cont">
								<!-- 추천상품 -->
								<div class="item_slide_horizontal" style="visibility: visible;">
									<ul
										class="slide_horizontal_widget slick-initialized slick-slider">




										<div aria-live="polite" class="slick-list draggable">
											<div class="slick-track"
												style="opacity: 1; width: 1220px; transform: translate3d(0px, 0px, 0px);"
												role="listbox">
												<li class="slick-slide slick-current slick-active"
													style="width: 305px;" data-slick-index="0"
													aria-hidden="false" tabindex="-1" role="option"
													aria-describedby="slick-slide30">
													<div class="item_cont" style="text-align: center;">
														<div class="item_photo_box">
															<a href="../goods/goods_view.php?goodsNo=1000000089"
																tabindex="0"> <img
																src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/20/02/07/1000000089/1000000089_main_05.jpg"
																width="400" alt="미니멀웍스 잭 쉘터 플러스 올리브" title=""
																class="middle">
															</a>
															<div class="item_link">
																<button type="button"
																	class="btn_basket_get btn_add_wish_widget"
																	data-goods-no="1000000089"
																	data-goods-nm="미니멀웍스 잭 쉘터 플러스 올리브"
																	data-goods-price="540000.00"
																	data-goods-image-src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/20/02/07/1000000089/1000000089_main_05.jpg"
																	data-optionfl="n" data-min-order-cnt="1"
																	data-option-sno="" data-goods-image=""
																	data-sales-unit="1" data-fixed-sales="option"
																	data-fixed-order-cnt="option" tabindex="0">
																	<span>WISH</span>
																</button>
																<button type="button" href="#optionViewLayer"
																	class="btn_basket_cart btn_add_cart_widget btn_open_layer"
																	data-mode="cartIn" data-goods-no="1000000089"
																	tabindex="0">
																	<span>CART</span>
																</button>
															</div>
														</div>
														<!-- //item_photo_box -->
														<div class="item_info_cont">
															<div class="color" style="width: 400px"></div>
															<div class="item_tit_box">
																<a href="../goods/goods_view.php?goodsNo=1000000089"
																	tabindex="0"> <strong class="item_name">미니멀웍스
																		잭 쉘터 플러스 올리브</strong>
																</a>
															</div>
															<!-- //item_tit_box -->
															<div class="item_money_box">
																<strong class="item_price">
																	<div class="dcPrice" custom="0.00" price="540000.00"></div>
																	<span style="">540,000원 </span>


																</strong>

															</div>
															<!-- //item_money_box -->
															<!-- //item_number_box -->
															<div class="item_icon_box"></div>
															<!-- //item_icon_box -->
														</div>
														<!-- //item_info_cont -->
													</div> <!-- //item_cont -->
												</li>
												<li class="slick-slide slick-active" style="width: 305px;"
													data-slick-index="1" aria-hidden="false" tabindex="-1"
													role="option" aria-describedby="slick-slide31">
													<div class="item_cont" style="text-align: center;">
														<div class="item_photo_box">
															<a href="../goods/goods_view.php?goodsNo=1000000086"
																tabindex="0"> <img
																src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/20/02/07/1000000086/1000000086_main_034.jpg"
																width="400" alt="미니멀웍스 잭 쉘터 사이드 폴 캡" title=""
																class="middle">
															</a>
															<div class="item_link">
																<button type="button"
																	class="btn_basket_get btn_add_wish_widget"
																	data-goods-no="1000000086"
																	data-goods-nm="미니멀웍스 잭 쉘터 사이드 폴 캡"
																	data-goods-price="3000.00"
																	data-goods-image-src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/20/02/07/1000000086/1000000086_main_034.jpg"
																	data-optionfl="n" data-min-order-cnt="1"
																	data-option-sno="" data-goods-image=""
																	data-sales-unit="1" data-fixed-sales="option"
																	data-fixed-order-cnt="option" tabindex="0">
																	<span>WISH</span>
																</button>
																<button type="button" href="#optionViewLayer"
																	class="btn_basket_cart btn_add_cart_widget btn_open_layer"
																	data-mode="cartIn" data-goods-no="1000000086"
																	tabindex="0">
																	<span>CART</span>
																</button>
															</div>
														</div>
														<!-- //item_photo_box -->
														<div class="item_info_cont">

															<div class="item_tit_box">
																<a href="../goods/goods_view.php?goodsNo=1000000086"
																	tabindex="0"> <strong class="item_name">미니멀웍스
																		잭 쉘터 사이드 폴 캡</strong>
																</a>
															</div>
															<!-- //item_tit_box -->
															<div class="item_money_box">
																<strong class="item_price">
																	<div class="dcPrice" custom="0.00" price="3000.00"></div>
																	<span style="">3,000원 </span>


																</strong>

															</div>
															<!-- //item_money_box -->
															<!-- //item_number_box -->
															<div class="item_icon_box"></div>
															<!-- //item_icon_box -->
														</div>
														<!-- //item_info_cont -->
													</div> <!-- //item_cont -->
												</li>
												<li class="slick-slide slick-active" style="width: 305px;"
													data-slick-index="2" aria-hidden="false" tabindex="-1"
													role="option" aria-describedby="slick-slide32">
													<div class="item_cont" style="text-align: center;">
														<div class="item_photo_box">
															<a href="../goods/goods_view.php?goodsNo=1000000087"
																tabindex="0"> <img
																src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/20/02/07/1000000087/1000000087_main_079.jpg"
																width="400" alt="미니멀웍스 잭 쉘터 플러스 사이드 폴 / 잭 쉘터 미니 사이드 폴"
																title="" class="middle">
															</a>
															<div class="item_link">
																<button type="button"
																	class="btn_basket_get btn_add_wish_widget"
																	data-goods-no="1000000087"
																	data-goods-nm="미니멀웍스 잭 쉘터 플러스 사이드 폴 / 잭 쉘터 미니 사이드 폴"
																	data-goods-price="23000.00"
																	data-goods-image-src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/20/02/07/1000000087/1000000087_main_079.jpg"
																	data-optionfl="n" data-min-order-cnt="1"
																	data-option-sno="" data-goods-image=""
																	data-sales-unit="1" data-fixed-sales="option"
																	data-fixed-order-cnt="option" tabindex="0">
																	<span>WISH</span>
																</button>
																<button type="button" href="#optionViewLayer"
																	class="btn_basket_cart btn_add_cart_widget btn_open_layer"
																	data-mode="cartIn" data-goods-no="1000000087"
																	tabindex="0">
																	<span>CART</span>
																</button>
															</div>
														</div>
														<!-- //item_photo_box -->
														<div class="item_info_cont">

															<div class="item_tit_box">
																<a href="../goods/goods_view.php?goodsNo=1000000087"
																	tabindex="0"> <strong class="item_name">미니멀웍스
																		잭 쉘터 플러스 사이드 폴 / 잭 쉘터 미니 사이드 폴</strong>
																</a>
															</div>
															<!-- //item_tit_box -->
															<div class="item_money_box">
																<strong class="item_price">
																	<div class="dcPrice" custom="0.00" price="23000.00"></div>
																	<span style="">23,000원 </span>


																</strong>

															</div>
															<!-- //item_money_box -->
															<!-- //item_number_box -->
															<div class="item_icon_box"></div>
															<!-- //item_icon_box -->
														</div>
														<!-- //item_info_cont -->
													</div> <!-- //item_cont -->
												</li>
												<li class="slick-slide slick-active" style="width: 305px;"
													data-slick-index="3" aria-hidden="false" tabindex="-1"
													role="option" aria-describedby="slick-slide33">
													<div class="item_cont" style="text-align: center;">
														<div class="item_photo_box">
															<a href="../goods/goods_view.php?goodsNo=1000000088"
																tabindex="0"> <img
																src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/20/02/07/1000000088/1000000088_main_081.jpg"
																width="400" alt="미니멀웍스 잭 쉘터 플러스 이너텐트" title=""
																class="middle">
															</a>
															<div class="item_link">
																<button type="button"
																	class="btn_basket_get btn_add_wish_widget"
																	data-goods-no="1000000088"
																	data-goods-nm="미니멀웍스 잭 쉘터 플러스 이너텐트"
																	data-goods-price="190000.00"
																	data-goods-image-src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/20/02/07/1000000088/1000000088_main_081.jpg"
																	data-optionfl="n" data-min-order-cnt="1"
																	data-option-sno="" data-goods-image=""
																	data-sales-unit="1" data-fixed-sales="option"
																	data-fixed-order-cnt="option" tabindex="0">
																	<span>WISH</span>
																</button>
																<button type="button" href="#optionViewLayer"
																	class="btn_basket_cart btn_add_cart_widget btn_open_layer"
																	data-mode="cartIn" data-goods-no="1000000088"
																	tabindex="0">
																	<span>CART</span>
																</button>
															</div>
														</div>
														<!-- //item_photo_box -->
														<div class="item_info_cont">

															<div class="item_tit_box">
																<a href="../goods/goods_view.php?goodsNo=1000000088"
																	tabindex="0"> <strong class="item_name">미니멀웍스
																		잭 쉘터 플러스 이너텐트</strong>
																</a>
															</div>
															<!-- //item_tit_box -->
															<div class="item_money_box">
																<strong class="item_price">
																	<div class="dcPrice" custom="0.00" price="190000.00"></div>
																	<span style="">190,000원 </span>


																</strong>

															</div>
															<!-- //item_money_box -->
															<!-- //item_number_box -->
															<div class="item_icon_box"></div>
															<!-- //item_icon_box -->
														</div>
														<!-- //item_info_cont -->
													</div> <!-- //item_cont -->
												</li>
											</div>
										</div>
									</ul>
								</div>

								<!-- //item_slide_horizontal -->
								<script type="text/javascript">
								<!--
									$(document)
											.ready(
													function() {

														$(
																'.item_slide_horizontal .slide_horizontal_widget')
																.on(
																		'init',
																		function() {
																			$(
																					'.item_slide_horizontal')
																					.css(
																							{
																								'visibility' : 'visible'
																							});
																		})
																.slick(
																		{
																			draggable : true,
																			autoplay : true,
																			infinite : true,
																			slidesToShow : 5,
																			slidesToScroll : 1,
																			responsive : [
																					{
																						breakpoint : 1240,
																						settings : {
																							slidesToShow : 4
																						}
																					},
																					{
																						breakpoint : 1000,
																						settings : {
																							slidesToShow : 3
																						}
																					},
																					{
																						breakpoint : 760,
																						settings : {
																							slidesToShow : 2
																						}
																					} ]
																		})
																.on(
																		'beforeChange',
																		function() {
																		});
													});
								//-->
								</script>

								<!-- option layer -->
								<div id="optionViewLayer" class="layer_wrap dn"></div>
								<!-- //option layer -->
								<div id="addCartLayer" class="layer_wrap dn">
									<div class="box add_cart_layer"
										style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
										<div class="view">
											<h2>장바구니 담기</h2>
											<div class="scroll_box">
												<p class="success">
													<strong>상품이 장바구니에 담겼습니다.</strong><br>바로 확인하시겠습니까?
												</p>
											</div>
											<div class="btn_box">
												<button class="btn_cancel">
													<span>취소</span>
												</button>
												<button class="btn_confirm btn_move_cart">
													<span>확인</span>
												</button>
											</div>
											<!-- //btn_box -->
											<button title="닫기" class="close layer_close" type="button">닫기</button>
										</div>
									</div>
								</div>
								<div id="addWishLayer" class="layer_wrap dn">
									<div class="box add_wish_layer"
										style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
										<div class="view">
											<h2>찜 리스트 담기</h2>
											<div class="scroll_box">
												<p class="success">
													<strong>상품이 찜 리스트에 담겼습니다.</strong><br>바로 확인하시겠습니까?
												</p>
											</div>
											<div class="btn_box">
												<button class="btn_cancel">
													<span>취소</span>
												</button>
												<button class="btn_confirm btn_move_wish">
													<span>확인</span>
												</button>
											</div>
											<!-- //btn_box -->
											<button title="닫기" class="close layer_close" type="button">닫기</button>
										</div>
									</div>
								</div>
								<!-- //layer_wrap -->

								<!-- //cart template -->
								<script type="text/javascript">
								<!--
									$(document)
											.ready(
													function() {
														$('.item_photo_box')
																.on(
																		'click',
																		'.btn_add_wish_widget',
																		function() {
																			alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
																			document.location.href = "../member/login.php";
																			return false;
																		});

														$('.item_photo_box')
																.on(
																		'click',
																		'.btn_add_cart_widget',
																		function() {
																			if ($(
																					this)
																					.data(
																							'mode') == 'cartIn') {
																				var params = {
																					page : 'goods',
																					type : 'goods',
																					goodsNo : $(
																							this)
																							.data(
																									'goods-no')
																				};

																				$
																						.ajax({
																							method : "POST",
																							cache : false,
																							url : "../goods/layer_option.php",
																							data : params,
																							success : function(
																									data) {

																								$(
																										'#optionViewLayer')
																										.empty()
																										.append(
																												data);
																								$(
																										'#optionViewLayer')
																										.find(
																												'>div')
																										.center();
																								$(
																										window)
																										.resize(
																												function() {
																													$(
																															'#optionViewLayer')
																															.find(
																																	'>div')
																															.center();
																												});
																							},
																							error : function(
																									data) {
																								alert(data.message);
																							}
																						});
																			}
																		});

														$(
																'.layer-cartaddconfirm')
																.click(
																		function() {
																			location.href = '../order/cart.php';
																		});

														$('.btn_move_cart')
																.click(
																		function() {
																			location.href = '../order/cart.php';
																		});

														$('.btn_move_wish')
																.click(
																		function() {
																			location.href = '../mypage/wish_list.php';
																		});

													});

									function gd_goods_option_view_result(params) {
										params += "&mode=cartIn";
										$
												.ajax({
													method : "POST",
													cache : false,
													url : "../order/cart_ps.php",
													data : params,
													success : function(data) {
														$("#optionViewLayer")
																.addClass('dn');
														$("#addCartLayer")
																.removeClass(
																		'dn');
														$('#layerDim')
																.removeClass(
																		'dn');
														$("#addCartLayer")
																.find('> div')
																.center();
														$(window)
																.resize(
																		function() {
																			$(
																					"#addCartLayer")
																					.find(
																							'> div')
																					.center();
																		});
													},
													error : function(data) {
														alert(data.message);
													}
												});
									}
								//-->
								</script>
								<!-- 추천상품 -->
							</div>
						</div>
					</div>
					<!-- 상품상세 -->
					<div class="item_goods_sec">
						<div id="detail">
							<div class="item_goods_tab">
								<ul>
									<li class="on"><a href="#detail">상세정보</a></li>
									<li><a href="#exchange">교환및반품</a></li>
									<li><a href="#reviews">상품후기 <strong>(0)</strong></a></li>
									<li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
								</ul>
							</div>
							<!-- //item_goods_tab -->
							<div class="detail_cont">
								<div class="detail_explain_box">
									<div class="image-manual">
										<!-- 이미지 -->
									</div>
									<div class="txt-manual">
										<!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
										<p style="text-align: center;" align="center">
											<img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220429/987ada156771ce3769973a2b93e4cc3b_143935.jpg"
												title="" alt="987ada156771ce3769973a2b93e4cc3b_143935.jpg"
												class="js-smart-img" style="max-width: 100%;"><br
												style="clear: both;">&nbsp;
										</p>
										<p style="text-align: center;" align="center">
											<img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/01_Tan_165413.jpg"
												title="" alt="01_Tan_165413.jpg" class="js-smart-img"
												style="max-width: 100%;"><br style="clear: both;">
											<img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/02_165413.jpg"
												title="" alt="02_165413.jpg" class="js-smart-img"
												style="max-width: 100%;"><br style="clear: both;">
											<img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/03_165414.jpg"
												title="" alt="03_165414.jpg" class="js-smart-img"
												style="max-width: 100%;"><br style="clear: both;">
											<img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/04_165415.jpg"
												title="" alt="04_165415.jpg" class="js-smart-img"
												style="max-width: 100%;"><br style="clear: both;">
											<img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/05_165416.jpg"
												title="" alt="05_165416.jpg" class="js-smart-img"
												style="max-width: 100%;"><br style="clear: both;">
											<img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/06_165417.jpg"
												title="" alt="06_165417.jpg" class="js-smart-img"
												style="max-width: 100%;"><br style="clear: both;">
											<img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/07_165417.jpg"
												title="" alt="07_165417.jpg" class="js-smart-img"
												style="max-width: 100%;"><br style="clear: both;">
											<img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/08_165418.jpg"
												title="" alt="08_165418.jpg" class="js-smart-img"
												style="max-width: 100%;"><br style="clear: both;">&nbsp;
										</p>
									</div>
								</div>
								<!-- //detail_explain_box -->

							</div>
							<!-- //detail_cont -->
						</div>
						<!-- //#detail -->
						<div id="exchange">
							<div class="item_goods_tab">
								<ul>
									<li><a href="#detail">상세정보</a></li>
									<li class="on"><a href="#exchange">교환및반품</a></li>
									<li><a href="#reviews">상품후기 <strong>(0)</strong></a></li>
									<li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
								</ul>
							</div>
							<!-- //item_goods_tab -->
							<div class="exchange_cont">
								<h3>교환 및 반품안내</h3>
								<div class="admin_msg">
									<p>1. 구매하신 상품의 교환/환불 가능 기간은 7일 이내입니다.</p>
									<p>&nbsp;</p>
									<p>2. 교환/환불 배송비는 다음과 같습니다.</p>
									<p>&nbsp;- 교환 배송비 : 10,000원</p>
									<p>&nbsp; (교환후 최종 결제 금액이 10만원 미만일 경우 최초 배송비 5,000원이 추가로
										발생합니다.)</p>
									<p>&nbsp;- 환불 배송비 : 10,000원</p>
									<p>&nbsp; (부분 환불일 경우 환불 제품가를 제외한 나머지 구입가가 10만원 이상일 경우 환불
										배송비는 5,000원입니다.</p>
									<p>&nbsp;</p>
									<p>3. CJ대한통운 택배외 타 택배사를 이용한 착불 반송 시 배송비 전액은 고객님이 부담하셔야 합니다.</p>
									<p>&nbsp;</p>
									<p>4. 다음의 경우에는 교환/환불 가능 기간임에도 불구하고 교환/환불이 불가할 수 있습니다.</p>
									<p>&nbsp;- 교환.환불하고자 하는 상품이 오염/훼손된 경우</p>
									<p>&nbsp;- 구매내역이 확인되지 않는 경우</p>
									<p>&nbsp;- 상품의 구성품 일부가 훼손되거나 분실된 경우</p>
									<p>&nbsp; (상품에 붙어있는 택을 자르거나 훼손하는 경우, 제품 박스에 직접 테이핑하거나 송장을
										부착한 경우에도 교환/환불이 불가합니다.)</p>
									<p>&nbsp;- 텐트, 타프, 쉘터 등 개봉하여 펼쳐보았을 경우</p>
									<p>&nbsp;</p>
									<p>5. 사은품이 포함된 상품의 교환/환불시 사은품도 함께 보내주셔야하며, 미반납시 교환/환불이
										불가합니다.</p>
									<p>&nbsp;</p>
									<p>6. 맞교환 서비스 처리 안내</p>
									<p>&nbsp;- 주문내역/배송 조회에서 교환 신청시 교환 상품의 금액이 서비스 기준에 해당되면 교환품을
										바로 발송합니다.</p>
									<p>&nbsp;- 한 건의 맞교환 서비스가 진행 중일 경우, 완료되기 전까지 또 다른 추가 요청건은
										맞교환 서비스가 불가합니다.</p>
									<p>&nbsp;- 상품 이상, 오배송 등의 사유로 교환 신청을 한 경우, 반송품의 수거 및
										확인&nbsp;후 교환처리가 진행됩니다.</p>
									<p>&nbsp;- 차액금이 발생할 경우, 결제를 완료하셔야 맞교환처리가 가능합니다.</p>
									<p>&nbsp;- 택배기사 방문시 맞교환을 하지 못했을 경우, 7일 이내에 고객센터로 연락하신 후 다시
										택배 신청을 하고 반송품을 보내주셔야 합니다.</p>
									<p>&nbsp;- 상품 훼손으로 재판매가 불가능한 경우, 7일 이내 반송품을 보내지 않은 경우, 고객님의
										책임으로 교환이 정상적으로 이루어지지 않은 경우 반송품의 추가 결제를 요청할 수 있습니다.&nbsp;</p>
									<p>&nbsp;</p>
								</div>
								<h3>환불안내</h3>
								<div class="admin_msg">- 상품 청약철회 가능기간은 상품 수령일로 부터 7일 이내
									입니다.</div>
								<h3>AS안내</h3>
								<div class="admin_msg">
									<p>&nbsp;</p>
								</div>
								<h3>배송안내</h3>
								<div class="admin_msg">
									<p>- 기본 배송비는 5,000원&nbsp;입니다. (도서, 산간,
										오지&nbsp;일부지역은&nbsp;배송비가&nbsp;추가될&nbsp;수&nbsp;있습니다.)</p>
									<p>- 100,000원이상&nbsp;구매시&nbsp;무료배송입니다.</p>
									<p>- 평일 오후 12시까지 결제 완료 건에 한하여 당일 출고됩니다.</p>
									<p>- 평균&nbsp;배송일은 3일정도 소요됩니다. (연휴 및 공휴일은 기간 계산시 제외하며, 택배사의
										사정에 따라 배송일은 달라질 수 있습니다.)</p>
									<p>- 무통장 입금의 경우 입금 확인 후 배송이 진행됩니다.</p>
									<p>&nbsp;</p>
								</div>
							</div>
							<!-- //exchange_cont -->
						</div>
						<!-- //#exchange -->
						<div id="reviews">
							<div class="item_goods_tab">
								<ul>
									<li><a href="#detail">상세정보</a></li>
									<li><a href="#exchange">교환및반품</a></li>
									<li class="on"><a href="#reviews">상품후기 <strong>(0)</strong></a></li>
									<li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
								</ul>
							</div>
							<!-- //item_goods_tab -->


							<div class="reviews_cont">
								<h3>
									<!-- 상품후기 -->
									&nbsp;
								</h3>
								<div id="ajax-goods-goodsreview-list">
									<div class="reviews_table">
										<table class="reviews_table_type">
											<colgroup>
												<col width="13%">
												<col>
												<col width="18%">
												<col width="13%" class="widthDisplayNone">
											</colgroup>
											<thead>
												<tr>
													<th>평점</th>
													<th>제목</th>
													<th>작성자</th>
													<th class="widthDisplayNone">작성일</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td colspan="4" class="no_data">등록된 상품후기가 없습니다.</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="pagination">
										<ul></ul>
									</div>
								</div>
								<div class="btn_reviews_box">
									<a href="../board/list.php?bdId=goodsreview"
										class="btn_reviews_more">상품후기 전체보기</a> <a
										href="javascript:gd_open_write_popup('goodsreview', '1000001100')"
										class="btn_reviews_write">상품후기 글쓰기</a>
								</div>
								<!-- //btn_reviews_box -->
							</div>
							<!-- //reviews_cont -->
						</div>
						<!-- //#reviews -->
						<div id="qna">
							<div class="item_goods_tab">
								<ul>
									<li><a href="#detail">상세정보</a></li>
									<li><a href="#exchange">교환및반품</a></li>
									<li><a href="#reviews">상품후기 <strong>(0)</strong></a></li>
									<li class="on"><a href="#qna">상품문의 <strong>(0)</strong></a></li>
								</ul>
							</div>
							<!-- //item_goods_tab -->
							<div class="qna_cont">
								<h3>
									<!-- 상품Q&amp;A -->
									&nbsp;
								</h3>
								<div id="ajax-goods-goodsqa-list">
									<div class="qna_table">
										<table class="qna_table_type">
											<colgroup>
												<col width="5%">
												<col>
												<col width="15%">
												<col width="13%" class="widthDisplayNone">
												<col width="15%">
											</colgroup>
											<thead>
												<tr>
													<th>번호</th>
													<th>제목</th>
													<th>작성자</th>
													<th class="widthDisplayNone">작성일</th>
													<th>진행상황</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="no_data" colspan="5">등록된 상품문의가 없습니다.</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="pagination">
										<ul></ul>
									</div>
								</div>
								<div class="btn_qna_box">
									<a href="../board/list.php?bdId=goodsqa" class="btn_qna_more">상품문의
										전체보기</a> <a
										href="javascript:gd_open_write_popup('goodsqa', '1000001100')"
										class="btn_qna_write">상품문의 글쓰기</a>
								</div>
								<!-- //btn_qna_box -->
							</div>
							<!-- //qna_cont -->
						</div>
						<!-- //qna -->
					</div>
					<!-- //item_goods_sec -->
					<!-- //상품상세 끝 -->
				</div>

				<div id="lyZoom" class="layer_wrap zoom_layer dn">
					<span class="img_photo_big" id="magnifyImage"><img
						src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/22/11/44/1000001100/1000001100_magnify_096.jpg"
						width="1000" alt="미니멀웍스 잭 쉘터 플러스 탄" title="" class="middle"></span>
					<!-- //item_photo_big -->
					<div class="item_photo_slide" style="visibility: visible;">
						<button type="button"
							class="slick_goods_prev slick-arrow slick-hidden"
							aria-disabled="true" tabindex="-1">
							<img
								src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/common/btn/btn_vertical_prev.png"
								alt="이전 상품 이미지" title="">
						</button>
						<ul
							class="slider_wrap ly_slider_goods_nav slick-initialized slick-slider slick-vertical">
							<div aria-live="polite" class="slick-list draggable"
								style="height: 480px;">
								<div class="slick-track"
									style="opacity: 1; height: 96px; transform: translate3d(0px, 0px, 0px);"
									role="listbox">
									<li class="slick-slide slick-current slick-active"
										data-slick-index="0" aria-hidden="false" tabindex="-1"
										role="option" aria-describedby="slick-slide20"
										style="width: 0px;"><a
										href="javascript:gd_change_image('0','magnify');" tabindex="0"><img
											src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/22/11/44/1000001100/t50_1000001100_magnify_096.jpg"
											width="68" alt="미니멀웍스 잭 쉘터 플러스 탄" title="" class="middle"></a></li>
								</div>
							</div>
						</ul>
						<button type="button"
							class="slick_goods_next slick-arrow slick-hidden"
							aria-disabled="true" tabindex="-1">
							<img
								src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/common/btn/btn_vertical_next.png"
								alt="다음 상품 이미지" title="">
						</button>
					</div>
					<!-- //ly_cont -->
					<a href="#close" class="ly_close layer_close"><img
						src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/btn_layer_close.png"
						alt="닫기" title=""></a>
				</div>
				<!-- // zoom_layer -->

				<div id="lyPassword"
					class="layer_wrap password_layer js_password_layer dn"
					style="height: 226px">
					<div class="layer_wrap_cont">
						<div class="ly_tit">
							<h4>비밀번호 인증</h4>
						</div>
						<div class="ly_cont">
							<div class="scroll_box">
								<p>글 작성시 설정한 비밀번호를 입력해 주세요.</p>
								<input type="password" name="writerPw" class="text"
									autocomplete="off">
							</div>
							<!-- // -->
							<div class="btn_center_box">
								<button type="button" class="btn_ly_password js_submit">
									<strong>확인</strong>
								</button>
							</div>
						</div>
						<!-- //ly_cont -->
						<a href="#close" class="ly_close layer_close"><img
							src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/common/layer/btn_layer_close.png"
							alt="닫기" title=""></a>
					</div>
					<!-- //layer_wrap_cont -->
				</div>
				<!-- //password_layer -->

				<div id="addCartLayer" class="layer_wrap dn">
					<div class="box add_cart_layer"
						style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
						<div class="view">
							<h2>장바구니 담기</h2>
							<div class="scroll_box">
								<p class="success">
									<strong>상품이 장바구니에 담겼습니다.</strong><br>바로 확인하시겠습니까?
								</p>
							</div>
							<div class="btn_box">
								<button type="button" class="btn_cancel">
									<span>취소</span>
								</button>
								<button type="button" class="btn_confirm btn_move_cart">
									<span>확인</span>
								</button>
							</div>
							<!-- //btn_box -->
							<button title="닫기" class="close layer_close" type="button">닫기</button>
						</div>
					</div>
				</div>
				<!--//addCartLayer -->
				<div id="addWishLayer" class="layer_wrap dn">
					<div class="box add_wish_layer"
						style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
						<div class="view">
							<h2>찜 리스트 담기</h2>
							<div class="scroll_box">
								<p class="success">
									<strong>상품이 찜 리스트에 담겼습니다.</strong><br>바로 확인하시겠습니까?
								</p>
							</div>
							<div class="btn_box">
								<button type="button" class="btn_cancel">
									<span>취소</span>
								</button>
								<button type="button" class="btn_confirm btn_move_wish">
									<span>확인</span>
								</button>
							</div>
							<!-- //btn_box -->
							<button title="닫기" class="close layer_close" type="button">닫기</button>
						</div>
					</div>
				</div>
				<!--//addWishLayer -->
				<!-- 쿠폰 다운받기 레이어 -->
				<div id="lyCouponDown" class="layer_wrap coupon_down_layer dn"
					style="top: 0px; left: 0px;"></div>
				<!--//쿠폰 다운받기 레이어 -->
				<!-- 쿠폰 적용하기 레이어 -->
				<div id="lyCouponApply" class="layer_wrap coupon_apply_layer dn"
					style="top: 0px; left: 0px;"></div>
				<!--//쿠폰 적용하기 레이어 -->
				<!--//일반게시판 레이어 -->
				<div id="lyWritePop" class="layer_wrap board_write_layer dn"></div>
				<!--//플러스리뷰 레이어 -->
				<div id="writePop" class="layer_wrap plus_review_edit_layer dn"></div>

				<script type="text/javascript"
					src="/data/skin/front/mplshop/js/gd_board_goods.js" charset="utf-8"></script>


			</div>
			<!-- //sub_content -->
		</div>
	</div>
	<%@include file="/WEB-INF/view/member/footer.jsp"%>
</body>
</html>