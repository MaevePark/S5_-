<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="header_warp">
	<div class="topBanner">
		<div class="topBannerDirectionNav" style="display: none">
			<div class="inner">
				<span class="prevBtn"></span><span class="nextBtn"></span>
			</div>
		</div>
		<div class="topBannerImageContainer"
			style="overflow: hidden; position: relative; margin-top: 0px">
			<ul class="topBannerImage"
				style="height: 400%; position: absolute; width: 100%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px); margin-top: 0px;"></ul>
		</div>
	</div>
	<div id="header">
		<div class="headerTop">
			<div class="topFixd">
				<div class="inner">
					<a href="../main/index.php" class="goHome">Home</a>
					<div class="headerSns">
						<a href="https://www.instagram.com/nvot_anyang/" target="_blank"><img
							src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/sns/sns_st_04.png"
							alt="인스타그램" title="" /></a> <a
							href="https://www.instagram.com/nvot_goyang/" target="_blank"><img
							src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/sns/sns_st_04.png"
							alt="인스타그램" title="" /></a> <a
							href="https://www.instagram.com/nvot_hanam/" target="_blank"><img
							src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/sns/sns_st_04.png"
							alt="인스타그램" title="" /></a> <a
							href="https://www.instagram.com/nvotcity_yeouido/"
							target="_blank"><img
							src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/sns/sns_st_04.png"
							alt="인스타그램" title="" /></a> <a
							href="https://www.instagram.com/nvot_mia/" target="_blank"><img
							src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/sns/sns_st_04.png"
							alt="인스타그램" title="" /></a> <a
							href="https://www.instagram.com/nvotcity_tradecenter/"
							target="_blank"><img
							src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/sns/sns_st_04.png"
							alt="인스타그램" title="" /></a> <a
							href="https://www.instagram.com/nvotcity_pangyo/" target="_blank"><img
							src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/sns/sns_st_04.png"
							alt="인스타그램" title="" /></a> <a
							href="https://www.instagram.com/nvot_osan/" target="_blank"><img
							src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/sns/sns_st_04.png"
							alt="인스타그램" title="" /></a> <a
							href="https://www.instagram.com/nvot_incheon/" target="_blank"><img
							src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/sns/sns_st_04.png"
							alt="인스타그램" title="" /></a>
						<a
							href="https://www.youtube.com/channel/UCChcXRAWtm_PRAGc0TfKeXA?view_as=subscriber"
							target="_blank"><img
							src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/sns/sns_st_08.png"
							alt="유튜브" title="" /></a>
					</div>
					
					
					
					<!-- 상단 로그인 영역 수정부분 -->
					<div class="headerMember">
						<ul>
					<c:choose>
						<c:when test="${empty loginSsInfo}">
						<li><a href="${pageContext.request.contextPath}/login">로그인</a></li>
						<li><a href="${pageContext.request.contextPath}/join">회원가입</a></li>
						</c:when>
						<c:otherwise>
						${loginSsInfo.mname}
						<li><a href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
						</c:otherwise>
					</c:choose>
					
					
					
							<li class="displayLI"><a href="/">장바구니 <span
									id="cartCnt"><strong>0</strong></span>
							</a></li>
							<li><a href="/">주문조회
							</a></li>
							<li><a href="/">마이페이지
									<div class="lineBg"></div>
							</a></li>
							<li class="displayLI"><a href="#none"
								onclick="javascript:addfavorites('nvot.co.kr','캠퍼들의 방앗간, 엔보트');">즐겨찾기
									<div class="lineBg"></div>
							</a></li>
							<li class="headerCs"><a href="${pageContext.request.contextPath}/board">커뮤니티
							</a>
								<div class="headerCsBoard">
									<ul>
										<li><a href="../board/list.php?bdId=notice">공지사항</a></li>
										<li><a href="../board/list.php?bdId=event">이벤트</a></li>
										<li><a href="../board/list.php?bdId=goodsqa">상품문의</a></li>
										<li><a href="../board/list.php?bdId=goodsreview">상품후기</a>
										</li>
										<li><a href="../board/list.php?bdId=lookbook">룩북</a></li>
										<li><a href="../service/faq.php">자주하는질문</a></li>
										<li><a href="${pageContext.request.contextPath}/boardWrite">1:1문의하기</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="headerContent">
			<div class="inner">
				<div class="headerBanner">
					<div
						class="slider-wrap slider-banner-511517418 slick-initialized slick-slider">
						<div aria-live="polite" class="slick-list" style="height: 110px">
							<div class="slick-track" style="opacity: 1; width: 5000px"
								role="listbox">
								<div class="slick-slide slick-current slick-active"
									data-slick-index="0" aria-hidden="false"
									style="position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;"
									tabindex="-1" role="option" aria-describedby="slick-slide30">
									<a
										href="http://nvot.co.kr/main/html.php?htmid=service/company2.html"
										tabindex="0"><img
										src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/slider_511517418/df01c110e50353b2650ea1e6fce0cdd3_35890.jpg"
										alt="본문 슬라이드 배너" title="" /></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="headerLogo">
					<div class="m_out">
						<a href="${pageContext.request.contextPath}/main"><img
							src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/76d9b45d23c48401f8a914cc9b035dbf_66272.png"
							alt="logo" title="" /></a>
					</div>
					<div class="m_over">
						<a href="${pageContext.request.contextPath}/main"><img
							src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/banner/149467a986169e7238fbd5d39ab48cca_46154.png"
							alt="logo" title="" /></a>
					</div>
					<div class="asideBtn">
						<span id="allMenuIcon"></span>
					</div>
					<div class="headerSearchButton">
						<span id="searchIcon"></span>
					</div>
					<div class="headerBasket">
						<a href="../order/cart.php"><span id="cartCnt"><strong>0</strong></span></a>
					</div>
				</div>
			</div>
		</div>
		<div class="headerGnb">
			<div class="topFixd">
				<div class="inner">
					<div class="categoryAll">
						<div class="gnbAllBtn">
							<a href="#none" class="menuActive"> <span></span> <span></span>
								<span></span>
							</a>
						</div>
					</div>
					<div class="categorySlide">
						<div class="gnbMenuBox">
							<button type="button" class="gnbPrev" aria-label="Previous"
								disabled="disabled">Previous</button>
							<ul class="menuCategory" style="overflow: visible">
								<li class="originCategory"><a
									href="../goods/goods_list.php?cateCd=011">PROMOTION</a></li>
								<li class="originCategory"><a
									href="../goods/goods_list.php?cateCd=001">TENT &amp; TARP</a>
									<div class="subCategory depth1">
										<ul>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=001001">TENT</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=001002">TARP</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=001003">TENT &amp;
													TARP ACC</a></li>
										</ul>
										<div class="categoryBanner">
											<a href="#"><img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/category/qhi_navi_over2.jpg"
												alt="" /></a>
										</div>
									</div>
									<button class="categoryMore"></button></li>
								<li class="originCategory"><a
									href="../goods/goods_list.php?cateCd=002">SHELTER</a>
									<div class="subCategory depth1">
										<ul>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=002001">SHELTER</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=002002">SHELER ACC</a></li>
										</ul>
										<div class="categoryBanner">
											<a href="#"><img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/category/qhi_navi_over3.jpg"
												alt="" /></a>
										</div>
									</div>
									<button class="categoryMore"></button></li>
								<li class="originCategory"><a
									href="../goods/goods_list.php?cateCd=003">FURNITURE</a>
									<div class="subCategory depth1">
										<ul>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=003001">TABLE</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=003004">CHAIR</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=003005">COT</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=003002">STORAGE</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=003003">ETC</a></li>
										</ul>
										<div class="categoryBanner">
											<a href="#"><img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/category/qhi_navi_over4.jpg"
												alt="" /></a>
										</div>
									</div>
									<button class="categoryMore"></button></li>
								<li class="originCategory hasChild"><a
									href="../goods/goods_list.php?cateCd=004">SLEEPING BAG</a>
									<div class="subCategory depth1">
										<div class="categoryBanner">
											<a href="#"><img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/category/qhi_navi_over5.jpg"
												alt="" /></a>
										</div>
									</div></li>
								<li class="originCategory"><a
									href="../goods/goods_list.php?cateCd=005">TABLEWARE</a>
									<div class="subCategory depth1">
										<ul>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=005001">CUP</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=005002">COOKWARE</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=005003">ETC</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=005004">COOLERS</a></li>
										</ul>
										<div class="categoryBanner">
											<a href="#"><img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/category/qhi_navi_over6.jpg"
												alt="" /></a>
										</div>
									</div>
									<button class="categoryMore"></button></li>
								<li class="originCategory"><a
									href="../goods/goods_list.php?cateCd=006">LANTERN &amp;
										STOVE</a>
									<div class="subCategory depth1">
										<ul>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=006001">LANTERN</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=006002">STOVE</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=006003">FIRE PITS</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=006004">ACC</a></li>
										</ul>
										<div class="categoryBanner">
											<a href="#"><img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/category/qhi_navi_over7.jpg"
												alt="" /></a>
										</div>
									</div>
									<button class="categoryMore"></button></li>
								<li class="originCategory"><a
									href="../goods/goods_list.php?cateCd=007">APPAREL</a>
									<div class="subCategory depth1">
										<ul>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=007001">OUTER</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=007002">TOP</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=007003">VEST</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=007004">BOTTOM</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=007005">ONE-PIECE</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=007007">SET</a></li>
											<li class=" "><a
												href="../goods/goods_list.php?cateCd=007006">ACC</a></li>
										</ul>
										<div class="categoryBanner">
											<a href="#"><img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/category/qhi_navi_over8.jpg"
												alt="" /></a>
										</div>
									</div>
									<button class="categoryMore"></button></li>
								<li class="originCategory hasChild"><a
									href="../goods/goods_list.php?cateCd=008">MAT</a>
									<div class="subCategory depth1">
										<div class="categoryBanner">
											<a href="#"><img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/category/qhi_navi_over9.jpg"
												alt="" /></a>
										</div>
									</div></li>
								<li class="originCategory hasChild"><a
									href="../goods/goods_list.php?cateCd=009">BAG</a>
									<div class="subCategory depth1">
										<div class="categoryBanner">
											<a href="#"><img
												src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/_mplshop/images/category/qhi_navi_over10.jpg"
												alt="" /></a>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
