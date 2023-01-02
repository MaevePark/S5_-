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
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/board.css" />

<script src="<%=request.getContextPath()%>/js/jquery-3.6.1.js"></script>
<script src="<%=request.getContextPath()%>/js/header.js"></script>


<title>커뮤니티 메인</title>
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
                <div class="content">
                    <div class="board_zone_sec">
                        <div class="board_zone_tit">
                            <h2>1:1문의</h2>
                        </div>
                        <div class="board_zone_cont">
                            <div class="board_zone_list">
                                <div class="board_list_qa" align="center">
                                    <table class="board_list_table " style="width:100%" "="">
                                        <colgroup>
                                            <col style="width:16%"> <!-- 문의날짜 -->
                                            <col style="width:15%" class="widthDisplayNone"> <!-- 카테고리 -->
                                            <col><!-- 제목 -->
                                            <col style="width:10%" class="widthDisplayNone">  <!-- 작성자 -->
                                            <col style="width:15%"> <!-- 문의상태 -->
                    
                                        </colgroup>
                                        <thead>
                                        <tr>
                                            <th>문의날짜</th>
                                            <th class="widthDisplayNone">카테고리</th>
                                            <th>제목</th>
                                            <th class="widthDisplayNone">작성자</th>
                                            <th>상태</th>
                                        </tr>
                                        </thead>
                                        <!-- 게시글 목록 -->
                                        <tbody>
                                        <tr style="height:50px">
                                            <td> 2022.11.27 </td>
                                            <td class="widthDisplayNone">
                    [주문/결제]						</td>
                                            <td class="board_tit">
                                                
                                                <a href="javascript:gd_btn_view('qa',650 ,'c')">
                                                    <img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/board/skin/qa/img/icon/icon_board_secret.png" align="absmiddle" title="">
                                                    <strong>하남점 관련</strong>
                                                </a>
                                            </td>
                                            <td class="widthDisplayNone"> 배호정 </td>
                                            <td> 답변완료 </td>
                                        </tr>
                                        <tr style="height:50px">
                                            <td> 2022.12.14 </td>
                                            <td class="widthDisplayNone">
                    [배송]						</td>
                                            <td class="board_tit">
                                                
                                                <a href="javascript:gd_btn_view('qa',657 ,'n')">
                                                    <img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/board/skin/qa/img/icon/icon_board_secret.png" align="absmiddle" title="">
                                                    <strong>배송문의드려요</strong>
                                                </a>    
                                            </td>
                                            <td class="widthDisplayNone"> 윤철웅 </td>
                                            <td> 답변완료 </td>
                                        </tr>
                                        <tr style="height:50px">
                                            <td> 2022.12.13 </td>
                                            <td class="widthDisplayNone">
                    [반품/환불/교환/AS]						</td>
                                            <td class="board_tit">
                                                
                                                <a href="javascript:gd_btn_view('qa',656 ,'n')">
                                                    <img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/board/skin/qa/img/icon/icon_board_secret.png" align="absmiddle" title="">
                                                    <strong>환불물건 하나만가저가셨어요</strong>
                                                </a>    
                                            </td>
                                            <td class="widthDisplayNone"> 최수진 </td>
                                            <td> 답변완료 </td>
                                        </tr>
                                        <tr style="height:50px">
                                            <td> 2022.12.07 </td>
                                            <td class="widthDisplayNone">
                    [반품/환불/교환/AS]						</td>
                                            <td class="board_tit">
                                                
                                                <a href="javascript:gd_btn_view('qa',655 ,'n')">
                                                    <img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/board/skin/qa/img/icon/icon_board_secret.png" align="absmiddle" title="">
                                                    <strong>다른물건으로 보내셨어요.</strong>
                                                    <img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/board/skin/qa/img/icon/icon_board_attach_file.png" alt="파일첨부 있음" title="">
                                                </a>    
                                            </td>
                                            <td class="widthDisplayNone"> 최수진 </td>
                                            <td> 답변완료 </td>
                                        </tr>
                                        <tr style="height:50px">
                                            <td> 2022.12.02 </td>
                                            <td class="widthDisplayNone">
                    [반품/환불/교환/AS]						</td>
                                            <td class="board_tit">
                                                
                                                <a href="javascript:gd_btn_view('qa',654 ,'n')">
                                                    <img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/board/skin/qa/img/icon/icon_board_secret.png" align="absmiddle" title="">
                                                    <strong>알베르게 이너텐트 지퍼 이상</strong>
                                                    <img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/board/skin/qa/img/icon/icon_board_attach_img.png" alt="이미지첨부 있음" title="">
                                                </a> 
                                            </td>
                                            <td class="widthDisplayNone"> 한동훈 </td>
                                            <td> 답변완료 </td>
                                        </tr>                    
                                        </tbody>
                                    </table>
                                </div>
                                <!-- //board_list_qa -->
                                <div class="pagination">
                                    <ul><li class="on"><span>1</span></li>
                                        <li><a href="./list.php?page=2&amp;bdId=qa">2</a></li>
                                        <li><a href="./list.php?page=3&amp;bdId=qa">3</a></li>
                                        <li><a href="./list.php?page=4&amp;bdId=qa">4</a></li>
                                        <li><a href="./list.php?page=5&amp;bdId=qa">5</a></li>
                                        <li class="btn_page btn_page_next"><a aria-label="Next" href="./list.php?page=11&amp;bdId=qa"><img src="/admin/gd_share/img/icon_arrow_page_r.png" class="img-page-arrow" title="">다음</a></li><li class="btn_page btn_page_last"><a aria-label="Last" href="./list.php?page=42&amp;bdId=qa"><img src="/admin/gd_share/img/icon_arrow_page_rr.png" class="img-page-arrow" title="">맨뒤</a></li></ul></div>
                                <!-- //pagination -->
                            </div>
                            <!-- //board_zone_list -->
                            
                            <div class="btn_right_box">
                            	<a  href="${pageContext.request.contextPath }/boardWrite">
                            		<button type="button" class="btn_write"><strong>1:1 문의하기</strong></button>
                            	</a>
                                
                            </div>
                        </div>
                        <!-- //board_zone_cont -->  
                    </div>
                    <!-- //board_zone_sec -->
                        <!-- 비회원 게시글 비밀번호 인증 -->
                        <form id="frmWritePassword">
                            <div id="lyPassword" class="dn layer_wrap password_layer" style="height: 226px">
                                <div class="layer_wrap_cont">
                                    <div class="ly_tit">
                                        <h4>비밀번호 인증</h4>
                                    </div>
                                    <div class="ly_cont">
                                        <div class="scroll_box">
                                            <p>비밀번호를 입력해 주세요.</p>
                                            <input type="password" name="writerPw" class="text">
                                        </div>
                                        <!-- // -->
                                        <div class="btn_center_box">
                                            <button type="button" class="btn_ly_password js_submit"><strong>확인</strong></button>
                                        </div>
                                    </div>
                                    <!-- //ly_cont -->
                                    <a href="#close" class="ly_close layer_close"><img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/common/layer/btn_layer_close.png" alt="닫기" title=""></a>
                                </div>
                                <!-- //layer_wrap_cont -->
                            </div>
                            <!-- //layer_wrap -->
                        </form>
                    <div id="layerDim" class="dn">&nbsp;</div>
                </div>
                <!-- //content -->
            </div>
            <!-- //sub_content -->
        </div>
  </div>
  <%@include file="/WEB-INF/view/member/footer.jsp"%>
</body>
</html>