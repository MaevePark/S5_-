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
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/index.css" />

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
              <li>
                <a
                  href="http://nvot.co.kr/goods/goods_view.php?goodsNo=1000000998"
                  ><img
                    src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/f73d62a65481253d412d64792c808a8a_10908.jpg"
                    alt="HOT"
                    title=""
                /></a>
              </li>
            </ul>
          </div>
          <div class="mainTopRightBanner">
            <ul>
              <li>
                <a
                  href="http://nvot.co.kr/goods/goods_view.php?goodsNo=1000000916"
                  ><img
                    src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/af2c63f711fb8729a270d13b5d817bfd_30039.jpg"
                    alt="RESTOCK"
                    title=""
                /></a>
              </li>
              <li>
                <a href="http://nvot.co.kr/goods/goods_list.php?cateCd=011"
                  ><img
                    src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/be786bf34ba0f2de7fcfa2bb6517b9e0_70770.jpg"
                    alt="PROMOTION"
                    title=""
                /></a>
              </li>
            </ul>
          </div>
        </div>
       <!-- MD PICK 진열 영역 -->
        <div class="main_goods_cont">
          <div class="goods_list main_wrap_7">
            <div class="goods_list_tit">
              <h3>MD PICK</h3>
              <h4>엔보트의 MD 추천 상품</h4>
              <div class="btn_goods_more">
                <a
                  href="../goods/goods_main.php?sno=7"
                  class="btn_goods_view_more"
                  >MORE +</a
                >
              </div>
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
													<a
														href="../goods/goods_view.php?goodsNo=1000001119&amp;mtn=7%5E%7C%5EMD+PICK%5E%7C%5En">
														<img
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
															<div class="dcPrice" custom="0.00" price="53000.00"></div>
															<span style="">${product.product_price } </span>
														</strong> <span class="item_mileage"> <img
															src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/icon/goods_icon/icon_mileage.png"
															alt="마일리지" title=""> ${product.product_price/10 }원
														</span>
													</div>
													<!-- //item_money_box -->
													<!-- //item_number_box -->
													<div class="item_icon_box">
														<img
															src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/icon/goods_icon/good_icon_best.gif"
															alt="베스트상품" title="" class="middle">
													</div>
													<!-- //item_icon_box -->
												</div>
												<!-- //item_info_cont -->
											</div> <!-- //item_cont -->
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
            <div class="btn_goods_down_more">
              <button class="btn_goods_view_down_more" data-page="2">
                MORE VIEW +
              </button>
            </div>
          </div>
        </div>
        <!-- BEST PRODUCTS 진열 영역 -->
       <div class="mainContainer mTop50">
          <div class="mainBannerBottom">
            <!-- 좌측 큰이미지 영역 -->
            <div class="divideContent">
              <ul>
                <li>
                  <a
                    href="http://nvot.co.kr/goods/goods_view.php?goodsNo=1000000049"
                    ><img
                      src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/acc96b964e040d6cbf646b470fe498ce_34873.jpg"
                      alt="미니멀웍스 파프리카"
                      title=""
                  /></a>
                </li>
              </ul>
            </div>
            <div class="divideContent">
              <!-- 우측 상단 2단배너 영역 -->
              <ul class="cols2">
                <li>
                  <a
                    href="http://nvot.co.kr/goods/goods_view.php?goodsNo=1000000025"
                    ><img
                      src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/f04b226a667e3abf6d4f1a73d7f135e7_42493.jpg"
                      alt="트레블첵 콤피 체어"
                      title=""
                  /></a>
                </li>
                <li>
                  <a
                    href="http://nvot.co.kr/goods/goods_search.php?keyword=%EB%B6%88%EC%B9%B8&amp;recentCount=10"
                    ><img
                      src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/f805c36888b754e128c49a5bd5ae6b40_81677.jpg"
                      alt="미니멀웍스 불칸"
                      title=""
                  /></a>
                </li>
              </ul>
              <!-- 우측 하단 1단배너 영역 -->
              <ul>
                <li>
                  <a
                    href="http://nvot.co.kr/goods/goods_view.php?goodsNo=1000000415"
                    ><img
                      src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/fa776bd94e6b9b86bb3438a10eb19268_18356.jpg"
                      alt="미니멀웍스 파이어 해머"
                      title=""
                  /></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="mainContainer mTop20">
          <div class="mainBanner">
            <ul class="cols2_top">
              <li>
                <a href="http://nvot.co.kr/service/company.php"
                  ><img
                    src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/7c32923eb4e10f92224eba90bb8f5245_22716.jpg"
                    alt="."
                    title=""
                /></a>
              </li>
              <li>
                <a href="http://nvot.co.kr/goods/brand.php"
                  ><img
                    src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/4ee41c7496b7734a0aea868603dc3a90_44466.jpg"
                    alt="."
                    title=""
                /></a>
              </li>
            </ul>
          </div>
        </div>
        <div class="mainContainerHidden mainBgContent2 mTop30">
          <div class="mainContainer mTop30">
            <div class="mainTitle">
              <h2 class="titleTop">
                JD Outdoor Youtube<a
                  href="../board/list.php?bdId=movie"
                  class="plusMore"
                  >MORE +</a
                >
              </h2>
              <h3 class="titleBottom">
                제이디아웃도어 유튜브 소식을 보실 수 있습니다
              </h3>
            </div>
          </div>
          <div class="mainContainer780">
            <div class="mainSildeWrap mTop40">
              <div
                class="slideContainer MovieSlider slick-initialized slick-slider slick-dotted"
                role="toolbar"
              >
                <button
                  type="button"
                  data-role="none"
                  class="slick-prev slick-arrow"
                  aria-label="Previous"
                  role="button"
                  style="display: block"
                >
                  Previous
                </button>
                <div
                  aria-live="polite"
                  class="slick-list draggable"
                  style="padding: 0px"
                >
                  <div
                    class="slick-track"
                    style="
                      opacity: 1;
                      width: 5810px;
                      transform: translate3d(-1660px, 0px, 0px);
                    "
                    role="listbox"
                  >
                    <div
                      class="bannerImage slick-slide slick-cloned"
                      data-slick-index="-2"
                      aria-hidden="true"
                      style="width: 830px"
                      tabindex="-1"
                    >
                      <span
                        ><a
                          href="https://www.youtube.com/embed/pgq2G6Su5ME"
                          tabindex="-1"
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/193e9e833fff40abb040e7a4161cad4f_35559.jpg"
                            alt="."
                            title="" /></a
                      ></span>
                    </div>
                    <div
                      class="bannerImage slick-slide slick-cloned"
                      data-slick-index="-1"
                      aria-hidden="true"
                      style="width: 830px"
                      tabindex="-1"
                    >
                      <span
                        ><a
                          href="https://www.youtube.com/embed/1GT7pjrTKUU"
                          tabindex="-1"
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/d1a1b19bf32a061bc1a82800c8faaa02_50559.jpg"
                            alt="."
                            title="" /></a
                      ></span>
                    </div>
                    <div
                      class="bannerImage slick-slide slick-current slick-active slick-center"
                      data-slick-index="0"
                      aria-hidden="false"
                      style="width: 830px"
                      tabindex="-1"
                      role="option"
                      aria-describedby="slick-slide20"
                    >
                      <span
                        ><a
                          href="https://www.youtube.com/embed/Vng_NZLxduU"
                          tabindex="0"
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/c6336325b25d04dfb29bc6a51a34914c_31644.jpg"
                            alt="."
                            title="" /></a
                      ></span>
                    </div>
                    <div
                      class="bannerImage slick-slide"
                      data-slick-index="1"
                      aria-hidden="true"
                      style="width: 830px"
                      tabindex="-1"
                      role="option"
                      aria-describedby="slick-slide21"
                    >
                      <span
                        ><a
                          href="https://www.youtube.com/embed/pgq2G6Su5ME"
                          tabindex="-1"
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/193e9e833fff40abb040e7a4161cad4f_35559.jpg"
                            alt="."
                            title="" /></a
                      ></span>
                    </div>
                    <div
                      class="bannerImage slick-slide"
                      data-slick-index="2"
                      aria-hidden="true"
                      style="width: 830px"
                      tabindex="-1"
                      role="option"
                      aria-describedby="slick-slide22"
                    >
                      <span
                        ><a
                          href="https://www.youtube.com/embed/1GT7pjrTKUU"
                          tabindex="-1"
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/d1a1b19bf32a061bc1a82800c8faaa02_50559.jpg"
                            alt="."
                            title="" /></a
                      ></span>
                    </div>
                    <div
                      class="bannerImage slick-slide slick-cloned slick-center"
                      data-slick-index="3"
                      aria-hidden="true"
                      style="width: 830px"
                      tabindex="-1"
                    >
                      <span
                        ><a
                          href="https://www.youtube.com/embed/Vng_NZLxduU"
                          tabindex="-1"
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/c6336325b25d04dfb29bc6a51a34914c_31644.jpg"
                            alt="."
                            title="" /></a
                      ></span>
                    </div>
                    <div
                      class="bannerImage slick-slide slick-cloned"
                      data-slick-index="4"
                      aria-hidden="true"
                      style="width: 830px"
                      tabindex="-1"
                    >
                      <span
                        ><a
                          href="https://www.youtube.com/embed/pgq2G6Su5ME"
                          tabindex="-1"
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/193e9e833fff40abb040e7a4161cad4f_35559.jpg"
                            alt="."
                            title="" /></a
                      ></span>
                    </div>
                  </div>
                </div>
                <button
                  type="button"
                  data-role="none"
                  class="slick-next slick-arrow"
                  aria-label="Next"
                  role="button"
                  style="display: block"
                >
                  Next
                </button>
                <ul class="slick-dots" style="display: block" role="tablist">
                  <li
                    class="slick-active"
                    aria-hidden="false"
                    role="presentation"
                    aria-selected="true"
                    aria-controls="navigation20"
                    id="slick-slide20"
                  >
                    <button
                      type="button"
                      data-role="none"
                      role="button"
                      tabindex="0"
                    >
                      1
                    </button>
                  </li>
                  <li
                    aria-hidden="true"
                    role="presentation"
                    aria-selected="false"
                    aria-controls="navigation21"
                    id="slick-slide21"
                    class=""
                  >
                    <button
                      type="button"
                      data-role="none"
                      role="button"
                      tabindex="0"
                    >
                      2
                    </button>
                  </li>
                  <li
                    aria-hidden="true"
                    role="presentation"
                    aria-selected="false"
                    aria-controls="navigation22"
                    id="slick-slide22"
                    class=""
                  >
                    <button
                      type="button"
                      data-role="none"
                      role="button"
                      tabindex="0"
                    >
                      3
                    </button>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="mainContainerHidden mTop70 mBot20 displaynone">
          <div class="mainContainer">
            <div class="mainTitle">
              <h2 class="titleTop">
                REVIEW<a
                  href="../board/list.php?bdId=goodsreview"
                  class="plusMore"
                  >MORE +</a
                >
              </h2>
              <h3 class="titleBottom">상품후기를 확인해보세요.</h3>
            </div>
            <div class="mainSildeWrap mTop40">
              <link
                type="text/css"
                rel="stylesheet"
                href="/data/skin/front/mplshop/_mplshop/css/masonry.css?ts=1581043070"
              />

              <script
                type="text/javascript"
                src="/data/skin/front/mplshop/_mplshop/js/masonry.pkgd.min.js?ts=1581043073"
              ></script>
              <script
                type="text/javascript"
                src="/data/skin/front/mplshop/_mplshop/js/imagesloaded.pkgd.js?ts=1581043072"
              ></script>
              <script
                type="text/javascript"
                src="/data/skin/front/mplshop/_mplshop/js/lightbox-plus-jquery.min.js?ts=1581043073"
              ></script>
              <script
                type="text/javascript"
                src="/data/skin/front/mplshop/_mplshop/js/lookbook.js?ts=1581043073"
              ></script>
              <div
                class="reviewListContainer masonry grid effect-1"
                id="grid"
                style="position: relative; height: 0px"
              >
                <ul
                  class="reviewWrap item w15"
                  style="
                    position: absolute;
                    transition-property: opacity, transform;
                    transition-duration: 0.4s;
                    transition-delay: 0ms;
                  "
                >
                  <li
                    class="reviewImage reviewBtnViewPop"
                    style="
                      background: url('https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/22/07/29/1000001044/1000001044_main_08.jpg')
                        no-repeat;
                      background-size: cover;
                      background-position: 50% 50%;
                    "
                    data-bdid="goodsreview"
                    data-sno="80"
                    data-auth="y"
                    data-notice="n"
                  ></li>
                  <li class="reviewInfo">
                    <a
                      class="reviewSubject reviewBtnViewPop"
                      data-bdid="goodsreview"
                      data-sno="80"
                      data-auth="y"
                      data-notice="n"
                      >겨울엔 옴니죠</a
                    >
                    <a class="reviewContent"
                      >빠른배송과 좋은 제품 너무 좋아요</a
                    >
                    <a class="rating_star">
                      <span style="width: 100%">별 다섯개중 다섯개</span>
                    </a>
                    <div class="board_name_day">
                      <span class="board_name">장준*</span>
                      <span class="board_day">2022.11.21</span>
                    </div>
                    <div class="prdGoods">
                      <a href="../goods/goods_view.php?goodsNo=1000001044">
                        <span
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/22/07/29/1000001044/1000001044_main_08.jpg"
                            width="38px"
                            height="38px"
                            title=""
                          />
                          토요토미 옴니230 세트 화이트(상부망+전용가방)</span
                        >
                      </a>
                    </div>
                  </li>
                </ul>
                <ul
                  class="reviewWrap item w15"
                  style="
                    position: absolute;
                    transition-property: opacity, transform;
                    transition-duration: 0.4s;
                    transition-delay: 0ms;
                  "
                >
                  <li
                    class="reviewImage reviewBtnViewPop"
                    style="
                      background: url('https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/21/04/14/1000000574/1000000574_main_010.jpg')
                        no-repeat;
                      background-size: cover;
                      background-position: 50% 50%;
                    "
                    data-bdid="goodsreview"
                    data-sno="79"
                    data-auth="y"
                    data-notice="n"
                  ></li>
                  <li class="reviewInfo">
                    <a
                      class="reviewSubject reviewBtnViewPop"
                      data-bdid="goodsreview"
                      data-sno="79"
                      data-auth="y"
                      data-notice="n"
                      >만족</a
                    >
                    <a class="reviewContent"
                      >3계절 딱 좋은거같아요사이즈도 미니멀해서 기존 침낭에서
                      침이 확...</a
                    >
                    <a class="rating_star">
                      <span style="width: 100%">별 다섯개중 다섯개</span>
                    </a>
                    <div class="board_name_day">
                      <span class="board_name">박미*</span>
                      <span class="board_day">2022.10.05</span>
                    </div>
                    <div class="prdGoods">
                      <a href="../goods/goods_view.php?goodsNo=1000000574">
                        <span
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/21/04/14/1000000574/1000000574_main_010.jpg"
                            width="38px"
                            height="38px"
                            title=""
                          />
                          미니멀웍스 카멜레온 350 2.0</span
                        >
                      </a>
                    </div>
                  </li>
                </ul>
                <ul
                  class="reviewWrap item w15"
                  style="
                    position: absolute;
                    transition-property: opacity, transform;
                    transition-duration: 0.4s;
                    transition-delay: 0ms;
                  "
                >
                  <li
                    class="reviewImage reviewBtnViewPop"
                    style="
                      background: url('https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/21/04/14/1000000574/1000000574_main_010.jpg')
                        no-repeat;
                      background-size: cover;
                      background-position: 50% 50%;
                    "
                    data-bdid="goodsreview"
                    data-sno="78"
                    data-auth="y"
                    data-notice="n"
                  ></li>
                  <li class="reviewInfo">
                    <a
                      class="reviewSubject reviewBtnViewPop"
                      data-bdid="goodsreview"
                      data-sno="78"
                      data-auth="y"
                      data-notice="n"
                      >진작살걸후회해요 ㅎㅎ</a
                    >
                    <a class="reviewContent"
                      >3계절 딱 좋은거같아요사이즈도 미니멀해서 기존 침낭에서
                      침이 확...</a
                    >
                    <a class="rating_star">
                      <span style="width: 100%">별 다섯개중 다섯개</span>
                    </a>
                    <div class="board_name_day">
                      <span class="board_name">박미*</span>
                      <span class="board_day">2022.10.05</span>
                    </div>
                    <div class="prdGoods">
                      <a href="../goods/goods_view.php?goodsNo=1000000574">
                        <span
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/21/04/14/1000000574/1000000574_main_010.jpg"
                            width="38px"
                            height="38px"
                            title=""
                          />
                          미니멀웍스 카멜레온 350 2.0</span
                        >
                      </a>
                    </div>
                  </li>
                </ul>
                <ul
                  class="reviewWrap item w15"
                  style="
                    position: absolute;
                    transition-property: opacity, transform;
                    transition-duration: 0.4s;
                    transition-delay: 0ms;
                  "
                >
                  <li
                    class="reviewImage reviewBtnViewPop"
                    style="
                      background: url('https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/20/02/06/1000000049/1000000049_main_066.jpg')
                        no-repeat;
                      background-size: cover;
                      background-position: 50% 50%;
                    "
                    data-bdid="goodsreview"
                    data-sno="77"
                    data-auth="n"
                    data-notice="n"
                  ></li>
                  <li class="reviewInfo">
                    <a
                      class="reviewSubject reviewBtnViewPop"
                      data-bdid="goodsreview"
                      data-sno="77"
                      data-auth="n"
                      data-notice="n"
                      >올리브 파프리카</a
                    >
                    <a class="reviewContent">비밀글 입니다.</a>
                    <a class="rating_star">
                      <span style="width: 100%">별 다섯개중 다섯개</span>
                    </a>
                    <div class="board_name_day">
                      <span class="board_name">박상*</span>
                      <span class="board_day">2022.09.02</span>
                    </div>
                    <div class="prdGoods">
                      <a href="../goods/goods_view.php?goodsNo=1000000049">
                        <span
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/20/02/06/1000000049/1000000049_main_066.jpg"
                            width="38px"
                            height="38px"
                            title=""
                          />
                          미니멀웍스 파프리카</span
                        >
                      </a>
                    </div>
                  </li>
                </ul>
                <ul
                  class="reviewWrap item w15"
                  style="
                    position: absolute;
                    transition-property: opacity, transform;
                    transition-duration: 0.4s;
                    transition-delay: 0ms;
                  "
                >
                  <li
                    class="reviewImage reviewBtnViewPop"
                    style="
                      background: url('https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/21/07/29/1000000840/1000000840_main_033.jpg')
                        no-repeat;
                      background-size: cover;
                      background-position: 50% 50%;
                    "
                    data-bdid="goodsreview"
                    data-sno="76"
                    data-auth="y"
                    data-notice="n"
                  ></li>
                  <li class="reviewInfo">
                    <a
                      class="reviewSubject reviewBtnViewPop"
                      data-bdid="goodsreview"
                      data-sno="76"
                      data-auth="y"
                      data-notice="n"
                      >강력 추천합니다.</a
                    >
                    <a class="reviewContent"
                      >미니멀 캠핑이나 간편하게 야외활동시 크기나 용량면에서
                      딱입니다타...</a
                    >
                    <a class="rating_star">
                      <span style="width: 100%">별 다섯개중 다섯개</span>
                    </a>
                    <div class="board_name_day">
                      <span class="board_name">김신*</span>
                      <span class="board_day">2022.08.01</span>
                    </div>
                    <div class="prdGoods">
                      <a href="../goods/goods_view.php?goodsNo=1000000840">
                        <span
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/21/07/29/1000000840/1000000840_main_033.jpg"
                            width="38px"
                            height="38px"
                            title=""
                          />
                          스탠리 아이스플로우 차박용 진공 저그 1.9리터</span
                        >
                      </a>
                    </div>
                  </li>
                </ul>
                <ul
                  class="reviewWrap item w15"
                  style="
                    position: absolute;
                    transition-property: opacity, transform;
                    transition-duration: 0.4s;
                    transition-delay: 0ms;
                  "
                >
                  <li
                    class="reviewImage reviewBtnViewPop"
                    style="
                      background: url('https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/21/06/26/1000000811/1000000811_main_010.jpg')
                        no-repeat;
                      background-size: cover;
                      background-position: 50% 50%;
                    "
                    data-bdid="goodsreview"
                    data-sno="75"
                    data-auth="y"
                    data-notice="n"
                  ></li>
                  <li class="reviewInfo">
                    <a
                      class="reviewSubject reviewBtnViewPop"
                      data-bdid="goodsreview"
                      data-sno="75"
                      data-auth="y"
                      data-notice="n"
                      >가볍습니다</a
                    >
                    <a class="reviewContent"
                      >실타프용으로 구입했어요일단 정말 가볍네요내구성은
                      사용해 봐야 할...</a
                    >
                    <a class="rating_star">
                      <span style="width: 60%">별 다섯개중 다섯개</span>
                    </a>
                    <div class="board_name_day">
                      <span class="board_name">김재*</span>
                      <span class="board_day">2022.03.26</span>
                    </div>
                    <div class="prdGoods">
                      <a href="../goods/goods_view.php?goodsNo=1000000811">
                        <span
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/21/06/26/1000000811/1000000811_main_010.jpg"
                            width="38px"
                            height="38px"
                            title=""
                          />
                          미니멀웍스 피노키오 에어</span
                        >
                      </a>
                    </div>
                  </li>
                </ul>
                <ul
                  class="reviewWrap item w15"
                  style="
                    position: absolute;
                    transition-property: opacity, transform;
                    transition-duration: 0.4s;
                    transition-delay: 0ms;
                  "
                >
                  <li
                    class="reviewImage reviewBtnViewPop"
                    style="
                      background: url('https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/20/02/07/1000000114/1000000114_main_05.jpg')
                        no-repeat;
                      background-size: cover;
                      background-position: 50% 50%;
                    "
                    data-bdid="goodsreview"
                    data-sno="74"
                    data-auth="y"
                    data-notice="n"
                  ></li>
                  <li class="reviewInfo">
                    <a
                      class="reviewSubject reviewBtnViewPop"
                      data-bdid="goodsreview"
                      data-sno="74"
                      data-auth="y"
                      data-notice="n"
                      >기다리던 박스!</a
                    >
                    <a class="reviewContent"
                      >원버너가 올라가는 상판과 함께 드디어 구매했어요 오랜
                      기다림 끝...</a
                    >
                    <a class="rating_star">
                      <span style="width: 100%">별 다섯개중 다섯개</span>
                    </a>
                    <div class="board_name_day">
                      <span class="board_name">김재*</span>
                      <span class="board_day">2021.11.29</span>
                    </div>
                    <div class="prdGoods">
                      <a href="../goods/goods_view.php?goodsNo=1000000114">
                        <span
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/20/02/07/1000000114/1000000114_main_05.jpg"
                            width="38px"
                            height="38px"
                            title=""
                          />
                          미니멀웍스 알루미늄 컨테이너 U50</span
                        >
                      </a>
                    </div>
                  </li>
                </ul>
                <ul
                  class="reviewWrap item w15"
                  style="
                    position: absolute;
                    transition-property: opacity, transform;
                    transition-duration: 0.4s;
                    transition-delay: 0ms;
                  "
                >
                  <li
                    class="reviewImage reviewBtnViewPop"
                    style="
                      background: url('https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/21/03/09/1000000517/1000000517_main_016.jpg')
                        no-repeat;
                      background-size: cover;
                      background-position: 50% 50%;
                    "
                    data-bdid="goodsreview"
                    data-sno="73"
                    data-auth="y"
                    data-notice="n"
                  ></li>
                  <li class="reviewInfo">
                    <a
                      class="reviewSubject reviewBtnViewPop"
                      data-bdid="goodsreview"
                      data-sno="73"
                      data-auth="y"
                      data-notice="n"
                      >배송 정말 빠릅니다</a
                    >
                    <a class="reviewContent"
                      >배송 정말 빠르구요^^항상 캠핑용품은 엔보트에서
                      구매합니다마이티...</a
                    >
                    <a class="rating_star">
                      <span style="width: 100%">별 다섯개중 다섯개</span>
                    </a>
                    <div class="board_name_day">
                      <span class="board_name">백지*</span>
                      <span class="board_day">2021.10.28</span>
                    </div>
                    <div class="prdGoods">
                      <a href="../goods/goods_view.php?goodsNo=1000000517">
                        <span
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/21/03/09/1000000517/1000000517_main_016.jpg"
                            width="38px"
                            height="38px"
                            title=""
                          />
                          미니멀웍스 마이티 랜턴</span
                        >
                      </a>
                    </div>
                  </li>
                </ul>
                <ul
                  class="reviewWrap item w15"
                  style="
                    position: absolute;
                    transition-property: opacity, transform;
                    transition-duration: 0.4s;
                    transition-delay: 0ms;
                  "
                >
                  <li
                    class="reviewImage reviewBtnViewPop"
                    style="
                      background: url('https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/21/01/04/1000000501/1000000501_main_094.jpg')
                        no-repeat;
                      background-size: cover;
                      background-position: 50% 50%;
                    "
                    data-bdid="goodsreview"
                    data-sno="72"
                    data-auth="y"
                    data-notice="n"
                  ></li>
                  <li class="reviewInfo">
                    <a
                      class="reviewSubject reviewBtnViewPop"
                      data-bdid="goodsreview"
                      data-sno="72"
                      data-auth="y"
                      data-notice="n"
                      >배송빨라요</a
                    >
                    <a class="reviewContent"
                      >배송 빨라서 좋아요 가스는 원래 안넣어서 보내는게
                      맞으시죠???</a
                    >
                    <a class="rating_star">
                      <span style="width: 100%">별 다섯개중 다섯개</span>
                    </a>
                    <div class="board_name_day">
                      <span class="board_name">신진*</span>
                      <span class="board_day">2021.10.16</span>
                    </div>
                    <div class="prdGoods">
                      <a href="../goods/goods_view.php?goodsNo=1000000501">
                        <span
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/21/01/04/1000000501/1000000501_main_094.jpg"
                            width="38px"
                            height="38px"
                            title=""
                          />
                          소토 ST-486한정판( 마이크로 토치 )</span
                        >
                      </a>
                    </div>
                  </li>
                </ul>
                <ul
                  class="reviewWrap item w15"
                  style="
                    position: absolute;
                    transition-property: opacity, transform;
                    transition-duration: 0.4s;
                    transition-delay: 0ms;
                  "
                >
                  <li
                    class="reviewImage reviewBtnViewPop"
                    style="
                      background: url('https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/20/02/06/1000000051/1000000051_main_078.jpg')
                        no-repeat;
                      background-size: cover;
                      background-position: 50% 50%;
                    "
                    data-bdid="goodsreview"
                    data-sno="71"
                    data-auth="y"
                    data-notice="n"
                  ></li>
                  <li class="reviewInfo">
                    <a
                      class="reviewSubject reviewBtnViewPop"
                      data-bdid="goodsreview"
                      data-sno="71"
                      data-auth="y"
                      data-notice="n"
                      >캠핑용품을 거의 미니멀웍스 제품으로 교체중입니...</a
                    >
                    <a class="reviewContent"
                      >비슷한 제품이 있는데 추가로
                      구입합니다.미니멀웍스라서요</a
                    >
                    <a class="rating_star">
                      <span style="width: 100%">별 다섯개중 다섯개</span>
                    </a>
                    <div class="board_name_day">
                      <span class="board_name">박창*</span>
                      <span class="board_day">2021.10.15</span>
                    </div>
                    <div class="prdGoods">
                      <a href="../goods/goods_view.php?goodsNo=1000000051">
                        <span
                          ><img
                            src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/goods/20/02/06/1000000051/1000000051_main_078.jpg"
                            width="38px"
                            height="38px"
                            title=""
                          />
                          미니멀웍스 파티오 매트</span
                        >
                      </a>
                    </div>
                  </li>
                </ul>
              </div>
              <div id="reviewDetailLayer" class="dn">
                <div class="detailLayerClose"></div>
                <div class="js_detail"></div>
              </div>
              <div id="reviewLayerDim" class="dn">&nbsp;</div>
              <div
                id="lyPassword"
                class="layer_wrap password_layer js_password_layer dn"
                style="height: 223px"
              >
                <div class="layer_wrap_cont">
                  <div class="ly_tit">
                    <h4>비밀번호 인증</h4>
                  </div>
                  <div class="ly_cont">
                    <div class="scroll_box">
                      <p>글 작성시 설정한 비밀번호를 입력해 주세요.</p>
                      <input
                        type="password"
                        name="writerPw"
                        class="text"
                        autocomplete="off"
                      />
                    </div>
                    <!-- // -->
                    <div class="btn_center_box">
                      <button type="button" class="btn_ly_password js_submit">
                        <strong>확인</strong>
                      </button>
                    </div>
                  </div>
                  <!-- //ly_cont -->
                  <a href="#close" class="ly_close review_layer_close"
                    ><img
                      src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/common/layer/btn_layer_close.png"
                      alt="닫기"
                      title=""
                  /></a>
                </div>
                <!-- //layer_wrap_cont -->
              </div>
              <!-- //password_layer -->
              <div
                id="lyPassword"
                class="layer_wrap password_layer js_password_layer2 dn"
                style="height: 223px"
              >
                <div class="layer_wrap_cont">
                  <div class="ly_tit">
                    <h4>비밀번호 인증</h4>
                  </div>
                  <div class="ly_cont">
                    <div class="scroll_box">
                      <p>글 작성시 설정한 비밀번호를 입력해 주세요.</p>
                      <input
                        type="password"
                        name="writerPw"
                        class="text"
                        autocomplete="off"
                      />
                    </div>
                    <!-- // -->
                    <div class="btn_center_box">
                      <button type="button" class="btn_ly_password js_submit">
                        <strong>확인</strong>
                      </button>
                    </div>
                  </div>
                  <!-- //ly_cont -->
                  <a href="#close" class="ly_close review_layer_close"
                    ><img
                      src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/common/layer/btn_layer_close.png"
                      alt="닫기"
                      title=""
                  /></a>
                </div>
                <!-- //layer_wrap_cont -->
              </div>
              <!-- //password_layer -->

              <link
                type="text/css"
                rel="stylesheet"
                href="/data/skin/front/mplshop/_mplshop/css/reviewLayer.css"
              />
              <script
                type="text/javascript"
                src="/data/skin/front/mplshop/_mplshop/js/reviewLayer.js"
              ></script>
            </div>
          </div>
        </div>
        <!-- 인스타그램 진열 영역 -->
        <div class="mainContainer mTop70">
          <div class="instagramWidget">
            <h1 class="title">
              <a href="https://www.instagram.com/nvot_anyang/" target="_blank"
                >INSTARGRAM @nvot_anyang</a
              ><a
                href="https://www.instagram.com/nvot_anyang/"
                target="_blank"
                class="instaMore"
                >MORE +</a
              >
            </h1>
            <!-- 스냅위젯 소스 교체  -->
            <script src="https://snapwidget.com/js/snapwidget.js"></script>
            <iframe
              src="https://snapwidget.com/embed/788796"
              class="snapwidget-widget"
              allowtransparency="true"
              frameborder="0"
              scrolling="no"
              style="
                border: none;
                overflow: hidden;
                width: 100%;
                height: 249px;
              "
              id="iFrameResizer0"
            ></iframe>
            <!-- 스냅위젯 소스 교체  -->
          </div>
        </div>
        <!-- 메인 인스타그램 끝 -->
      </div>
      <!-- //sub_content -->
    </div>
    <!-- //본문 끝 contents -->
  </div>
  <%@include file="/WEB-INF/view/member/footer.jsp"%>
</body>
</html>