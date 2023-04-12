DESC MEMBER;
INSERT INTO MEMBER(MEMBER_ID, MEMBER_PWD,MEMBER_NAME,MEMBER_EMAIL,MEMBER_CELLPHONE,MEMBER_TEL,
MEMBER_ADDRESS_POST,MEMBER_ADDRESS_1,MEMBER_ADDRESS_2)
VALUES ('user1','user1', '박민지', 'aaa1@gmail.com', '01000000000', '020000000', '우편번호','주소1','주소2')
;

DESC BOARD_CATEGORY;
INSERT INTO BOARD_CATEGORY (BOARD_CATEGORY_CODE,BOARD_CATEGORY_NAME)
VALUES ((SELECT NVL(MAX(BOARD_CATEGORY_CODE),0)+1 FROM BOARD_CATEGORY),'문의내용')
;

DESC PRODUCT;
set define off;
--off 로 유지
--상품 1
INSERT INTO PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_DETAIL)
VALUES ((select nvl(max(product_id),0)+1 from product),'미니멀웍스 빌런 랜턴',240000,'
<div class="detail_explain_box">
                <div class="image-manual"><!-- 이미지 --></div>
                <div class="txt-manual">
                    <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                    <p style="text-align: center;" align="center"><img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220429/987ada156771ce3769973a2b93e4cc3b_143935.jpg" title="" alt="987ada156771ce3769973a2b93e4cc3b_143935.jpg" class="js-smart-img" style="max-width: 100%;"><br style="clear:both;">&nbsp;</p>
                    <p><img title="" alt="5d75c918439bd6db09374e3fdab6c0eb_114909.jpg" class="js-smart-img" src="https://cdn-pro-web-218-48.cdn-nhncommerce.com/biobkj2_godomall_com/data/goods/22/05/20/1000000998/1000000998_detail_056.jpg" style="max-width: 100%;"></p><p><img title="" alt="591e8bd81a8955b620b33213dd4d20b0_114928.jpg" class="js-smart-img" src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220519/591e8bd81a8955b620b33213dd4d20b0_114928.jpg" style="max-width: 100%;"></p><p><img title="" alt="aa005656e4cb13938f951d9c6d981590_114941.jpg" class="js-smart-img" src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220519/aa005656e4cb13938f951d9c6d981590_114941.jpg" style="max-width: 100%;"></p><p><img title="" alt="ee3013041fe7eaa143b31875f6a58dd1_114953.jpg" class="js-smart-img" src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220519/ee3013041fe7eaa143b31875f6a58dd1_114953.jpg" style="max-width: 100%;"><br style="clear: both;"><br style="clear: both;"><br style="clear: both;"><br style="clear: both;">&nbsp;</p>
                </div>
            </div>
');
--상품 2
INSERT INTO PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_DETAIL)
VALUES ((select nvl(max(product_id),0)+1 from product),'미니멀웍스 잭 쉘터 플러스 탄',540000,'
<div class="detail_explain_box">
                <div class="image-manual"><!-- 이미지 --></div>
                <div class="txt-manual">
                    <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                    <p style="text-align: center;" align="center"><img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220429/987ada156771ce3769973a2b93e4cc3b_143935.jpg" title="" alt="987ada156771ce3769973a2b93e4cc3b_143935.jpg" class="js-smart-img" style="max-width: 100%;"><br style="clear:both;">&nbsp;</p>
                    <p style="text-align: center; " align="center"><img src="https://cdn-pro-web-218-48.cdn-nhncommerce.com/biobkj2_godomall_com/data/goods/22/11/44/1000001100/1000001100_main_061.jpg" title="" alt="01_Tan_165413.jpg" class="js-smart-img" style="max-width: 100%;"><br style="clear:both;"><img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/02_165413.jpg" title="" alt="02_165413.jpg" class="js-smart-img" style="max-width: 100%;"><br style="clear:both;"><img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/03_165414.jpg" title="" alt="03_165414.jpg" class="js-smart-img" style="max-width: 100%;"><br style="clear:both;"><img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/04_165415.jpg" title="" alt="04_165415.jpg" class="js-smart-img" style="max-width: 100%;"><br style="clear:both;"><img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/05_165416.jpg" title="" alt="05_165416.jpg" class="js-smart-img" style="max-width: 100%;"><br style="clear:both;"><img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/06_165417.jpg" title="" alt="06_165417.jpg" class="js-smart-img" style="max-width: 100%;"><br style="clear:both;"><img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/07_165417.jpg" title="" alt="07_165417.jpg" class="js-smart-img" style="max-width: 100%;"><br style="clear:both;"><img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/221103/08_165418.jpg" title="" alt="08_165418.jpg" class="js-smart-img" style="max-width: 100%;"><br style="clear:both;">&nbsp;</p>
                </div>
            </div>
');
--상품 3
INSERT INTO PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_DETAIL)
VALUES ((select nvl(max(product_id),0)+1 from product),'토요토미 기어미션 브라운 세트(상부망+가방)',620000,'
<div class="detail_explain_box">
                <div class="image-manual"><!-- 이미지 --></div>
                <div class="txt-manual">
                    <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                    <p style="text-align: center;" align="center"><img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220429/987ada156771ce3769973a2b93e4cc3b_143935.jpg" title="" alt="987ada156771ce3769973a2b93e4cc3b_143935.jpg" class="js-smart-img" style="max-width: 100%;"><br style="clear:both;">&nbsp;</p>
                    <p><img src="https://cdn-pro-web-218-48.cdn-nhncommerce.com/biobkj2_godomall_com/data/goods/22/10/42/1000001094/1000001094_main_010.png" title="" alt="8fd40d03418a15967a37079ff3741335_145018.jpg" class="js-smart-img" style="max-width: 100%;"><br style="clear:both;">&nbsp;</p>
                </div>
            </div>
');
--상품 4
INSERT INTO PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_DETAIL)
VALUES ((select nvl(max(product_id),0)+1 from product),'미니멀웍스 랜드마크',1380000,'
<div class="detail_explain_box">
                <div class="image-manual"><!-- 이미지 --></div>
                <div class="txt-manual">
                    <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                    <p style="text-align: center;" align="center"><img src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220429/987ada156771ce3769973a2b93e4cc3b_143935.jpg" title="" alt="987ada156771ce3769973a2b93e4cc3b_143935.jpg" class="js-smart-img" style="max-width: 100%;"><br style="clear:both;">&nbsp;</p>
                    <p align="center" style="text-align: center;"><img title="" alt="01_100628.jpg" class="js-smart-img" src="https://cdn-pro-web-218-48.cdn-nhncommerce.com/biobkj2_godomall_com/data/goods/22/09/39/1000001073/1000001073_main_047.jpg" style="max-width: 100%;"><img title="" alt="02_100638.jpg" class="js-smart-img" src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220928/02_100638.jpg" style="max-width: 100%;"><br style="clear: both;"><img title="" alt="03_100651.jpg" class="js-smart-img" src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220928/03_100651.jpg" style="max-width: 100%;"><img title="" alt="04_100831.jpg" class="js-smart-img" src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220928/04_100831.jpg" style="max-width: 100%;"><br style="clear: both;"><img title="" alt="05_100840.jpg" class="js-smart-img" src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220928/05_100840.jpg" style="max-width: 100%;"><br style="clear: both;"><img title="" alt="06_100848.jpg" class="js-smart-img" src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220928/06_100848.jpg" style="max-width: 100%;"><br style="clear: both;"><img title="" alt="07_100856.jpg" class="js-smart-img" src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220928/07_100856.jpg" style="max-width: 100%;"><br style="clear: both;"><img title="" alt="08_100903.jpg" class="js-smart-img" src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/editor/goods/220928/08_100903.jpg" style="max-width: 100%;"><br style="clear: both;"><br style="clear: both;"><br style="clear: both;">&nbsp;</p>
                </div>
            </div>
');

--상품 이미지 1-1
INSERT INTO PRODUCT_IMAGE (PRODUCT_IMAGE_CODE,PRODUCT_CODE)
VALUES ('https://cdn-pro-web-218-48.cdn-nhncommerce.com/biobkj2_godomall_com/data/goods/22/05/20/1000000998/1000000998_detail_056.jpg',  (select nvl(max(product_id),0) from product))
;
--상품 이미지 2-1
INSERT INTO PRODUCT_IMAGE (PRODUCT_IMAGE_CODE,PRODUCT_CODE)
VALUES ('https://cdn-pro-web-218-48.cdn-nhncommerce.com/biobkj2_godomall_com/data/goods/22/11/44/1000001100/1000001100_main_061.jpg',  (select nvl(max(product_id),0) from product))
;
--상품 이미지 3-1
INSERT INTO PRODUCT_IMAGE (PRODUCT_IMAGE_CODE,PRODUCT_CODE)
VALUES ('https://cdn-pro-web-218-48.cdn-nhncommerce.com/biobkj2_godomall_com/data/goods/22/10/42/1000001094/1000001094_main_010.png',  (select nvl(max(product_id),0) from product))
;
--상품 이미지 4-1
INSERT INTO PRODUCT_IMAGE (PRODUCT_IMAGE_CODE,PRODUCT_CODE)
VALUES ('https://cdn-pro-web-218-48.cdn-nhncommerce.com/biobkj2_godomall_com/data/goods/22/09/39/1000001073/1000001073_main_047.jpg',  (select nvl(max(product_id),0) from product))
;

commit; 
--꼭!

--조회
select * from member;
select * from BOARD_CATEGORY;
select * from BOARD;
select * from BOARD_FILE;
select * from PRODUCT;
select * from PRODUCT_IMAGE;

--행 삭제
delete from PRODUCT_IMAGE
where PRODUCT_CODE = 4;
