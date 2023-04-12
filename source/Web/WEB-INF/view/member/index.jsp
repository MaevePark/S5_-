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

<title>메인페이지</title>
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
	<div id="container">
		<div id="contents">
			<!-- 본문 시작 -->
			<div class="sub_content">
				<div class="mainContainer mTop50_">
					<div class="mainTopLeftBanner">
						<ul>
							<li><a
								href="http://nvot.co.kr/goods/goods_view.php?goodsNo=1000000998"><img
									src="https://cdn-pro-web-218-48.cdn-nhncommerce.com/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/f73d62a65481253d412d64792c808a8a_10908.jpg"
									alt="HOT" title=""></a></li>
						</ul>
					</div>
					<div class="mainTopRightBanner">
						<ul>
							<li><a
								href="http://nvot.co.kr/goods/goods_view.php?goodsNo=1000000916"><img
										src="https://cdn-pro-web-218-48.cdn-nhncommerce.com/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/af2c63f711fb8729a270d13b5d817bfd_30039.jpg"
										alt="RESTOCK" title=""></a></li>
							<li><a
								href="http://nvot.co.kr/goods/goods_list.php?cateCd=011"><img
									src="https://cdn-pro-web-218-48.cdn-nhncommerce.com/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/be786bf34ba0f2de7fcfa2bb6517b9e0_70770.jpg"
									alt="PROMOTION" title=""></a></li>
						</ul>
					</div>
				</div>
				<!-- MD PICK 진열 영역 -->
				<div class="main_goods_cont">
					<div class="goods_list main_wrap_7">
						<div class="goods_list_tit">
							<h3>MD PICK</h3>
							<h4>엔보트의 MD 추천 상품</h4>
						</div>
						<!-- 상품페이지 이동 영역 -->
						<div class="goods_list_cont goods_content_7">
							<div class="item_gallery_type">
								<ul>
									<!--상품 목록 DB 가져오기-->
									<c:forEach items="${productlist }" var="product">
										<li style="width: 25%;">
											<div class="item_cont">
												<p class="mpl_best">BEST 1</p>
												<div class="item_photo_box">
													<a href="${pageContext.request.contextPath}/product"> <img
														src="${product.product_image_list[0].product_image_code }"
														width="400" alt="골제로 라이트 하우스 마이크로 플래쉬 랜턴" title=""
														class="middle">
													</a>
													<div class="item_link">
														<button type="button"
															class="btn_basket_get btn_add_wish_7"
															data-goods-no="1000001119"
															data-goods-nm="골제로 라이트 하우스 마이크로 플래쉬 랜턴"
															data-goods-price="53000.00"
															data-goods-image-src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/22/11/48/1000001119/1000001119_main_080.jpg"
															data-optionfl="n" data-min-order-cnt="1"
															data-option-sno="" data-goods-image=""
															data-sales-unit="1" data-fixed-sales="option"
															data-fixed-order-cnt="option">
															<span>WISH</span>
														</button>
														<button type="button" href="#optionViewLayer"
															class="btn_basket_cart btn_add_cart_7 btn_open_layer"
															data-mode="cartIn" data-goods-no="1000001119">
															<span>CART</span>
														</button>
													</div>
												</div>
												<!-- //item_photo_box -->
												<div class="item_info_cont">
													<div class="item_tit_box">
														<a
															href="../goods/goods_view.php?goodsNo=1000001119&amp;mtn=7%5E%7C%5EMD+PICK%5E%7C%5En">
															<strong class="item_name">
																${product.product_name}</strong>
														</a>
													</div>
													<!-- //item_tit_box -->
													<div class="item_money_box">
														<strong class="item_price">
															<span style="">${product.product_price } 원 </span>
														</strong> <span class="item_mileage"> <img
															src="https://cdn-pro-web-218-48.cdn-nhncommerce.com/biobkj2_godomall_com/data/skin/front/mplshop/img/icon/goods_icon/icon_mileage.png"
															alt="마일리지" title=""> ${product.product_price/10 } 원
														</span>
													</div>
													<!-- //item_money_box -->
													<!-- //item_number_box -->
													<div class="item_icon_box">
														<img
															src="https://cdn-pro-web-218-48.cdn-nhncommerce.com/biobkj2_godomall_com/data/icon/goods_icon/good_icon_best.gif"
															alt="베스트상품" title="" class="middle">
													</div>
													<!-- //item_icon_box -->
												</div>
												<!-- //item_info_cont -->
											</div> 
											<!-- //item_cont -->
										</li>
									</c:forEach>
								</ul>
							</div>
							<!-- //item_gallery_type -->
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
						</div>
					</div>
				</div>
			</div>
			<!-- //sub_content -->
		</div>
		<!-- //본문 끝 contents -->
	</div>
	<%@include file="/WEB-INF/view/member/footer.jsp"%>
</body>
</html>