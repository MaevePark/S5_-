<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>


</head>
<body>
   <div id="contents">
      <!-- 본문 시작 -->
      <!-- //location_wrap -->
      <div class="sub_content">
        <!-- //side_cont -->
        <div class="content_box">
          <div class="join_base_wrap">
            <div class="member_tit">
              <h2>회원가입</h2>
              <ol>
                <li>
                  <span>01</span> 약관동의<span
                    ><img
                      src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/member/icon_join_step_off.png"
                      alt=""
                      title=""
                  /></span>
                </li>
                <li class="page_on">
                  <span>02</span> 정보입력<span
                    ><img
                      src="https://cdn-pro-web-218-48-godomall.spdycdn.net/biobkj2_godomall_com/data/skin/front/mplshop/img/member/icon_join_step_on.png"
                      alt=""
                      title=""
                  /></span>
                </li>
                <li><span>03</span> 가입완료</li>
              </ol>
            </div>
            <!-- //member_tit -->
            <div class="member_cont">
              <form
                id="formJoin"
                name="formJoin"
                action="http://nvot.co.kr/member/member_ps.php"
                method="post"
                novalidate="novalidate"
              >
                <input type="hidden" name="rncheck" value="none" />
                <input type="hidden" name="dupeinfo" value="" />
                <input type="hidden" name="pakey" value="" />
                <input type="hidden" name="foreigner" value="" />
                <input type="hidden" name="adultFl" value="" />
                <input type="hidden" name="mode" value="join" />

                <!-- 회원가입/정보 기본정보 -->
                <div class="base_info_box">
                  <h3>기본정보</h3>
                  <span class="important"
                    >표시는 반드시 입력하셔야 하는 항목입니다.</span
                  >
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
                              <input
                                type="text"
                                id="memId"
                                name="memId"
                                data-pattern="gdMemberId"
                              />
                            </div>
                          </td>
                        </tr>
                        <tr class="">
                          <th><span class="important">비밀번호</span></th>
                          <td class="member_password">
                            <div class="member_warning">
                              <input
                                type="password"
                                id="newPassword"
                                name="memPw"
                                autocomplete="off"
                                placeholder=""
                              />
                            </div>
                          </td>
                        </tr>
                        <tr class="">
                          <th><span class="important">비밀번호 확인</span></th>
                          <td>
                            <div class="member_warning">
                              <input
                                type="password"
                                class="check-id"
                                name="memPwRe"
                                autocomplete="off"
                              />
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <th><span class="important">이름</span></th>
                          <td>
                            <div class="member_warning">
                              <input
                                type="text"
                                name="memNm"
                                data-pattern="gdMemberNmGlobal"
                                value=""
                                maxlength="30"
                              />
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <th><span>이메일</span></th>
                          <td class="member_email">
                            <div class="member_warning">
                              <input
                                type="text"
                                name="email"
                                id="email"
                                value=""
                                tabindex="-1"
                              />
                              <select
                                id="emailDomain"
                                name="emailDomain"
                                class="chosen-select"
                              >
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
                              <input
                                type="checkbox"
                                id="maillingFl"
                                name="maillingFl"
                                value="y"
                              />
                              <label for="maillingFl" class="check_s"
                                >정보/이벤트 메일 수신에 동의합니다.</label
                              >
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <th><span class="important">휴대폰번호</span></th>
                          <td class="member_address">
                            <div class="address_postcode">
                              <input
                                type="text"
                                id="cellPhone"
                                name="cellPhone"
                                maxlength="12"
                                placeholder="- 없이 입력하세요."
                                data-pattern="gdNum"
                                value=""
                              />
                            </div>
                            <div class="form_element">
                              <input
                                type="checkbox"
                                id="smsFl"
                                name="smsFl"
                                value="y"
                              />
                              <label for="smsFl" class="check_s"
                                >정보/이벤트 SMS 수신에 동의합니다.</label
                              >
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <th><span>전화번호</span></th>
                          <td>
                            <div class="member_warning">
                              <input
                                type="text"
                                id="phone"
                                name="phone"
                                maxlength="12"
                                placeholder="- 없이 입력하세요."
                                data-pattern="gdNum"
                                value=""
                              />
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <th><span class="important">주소</span></th>
                          <td class="member_address">
                            <div class="address_postcode">
                              <input
                                type="text"
                                name="zonecode"
                                readonly="readonly"
                                value=""
                              />
                              <button
                                type="button"
                                id="btnPostcode"
                                class="btn_post_search"
                              >
                                우편번호검색
                              </button>
                              <input type="hidden" name="zipcode" value="" />
                            </div>
                            <div class="address_input">
                              <div class="member_warning">
                                <input
                                  type="text"
                                  name="address"
                                  readonly="readonly"
                                  value=""
                                />
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
                <!-- //base_info_box --><!-- 회원가입/정보 기본정보 -->
                <!-- 회원가입/정보 사업자정보 --><!-- 회원가입/정보 사업자정보 -->
                <!-- 회원가입/정보 부가정보 -->
                <div class="addition_info_box">
                  <h3>부가 정보</h3>
                  <div class="addition_info_sec">
                    <table border="0" cellpadding="0" cellspacing="0">
                      <colgroup>
                        <col width="25%" />
                        <col width="75%" />
                      </colgroup>
                      <tbody>
                        <tr>
                          <th><span class="important">생일</span></th>
                          <td class="member_birthday">
                            <div class="member_warning"></div>
                            <div class="member_warning">
                              <select
                                class="chosen-single"
                                id="birthYear"
                                name="birthYear"
                                style="width: 100px"
                              >
                                <option value="">년</option>
                                <option value="2022">2022</option>
                                <option value="2021">2021</option>
                                <option value="2020">2020</option>
                                <option value="2019">2019</option>
                                <option value="2018">2018</option>
                                <option value="2017">2017</option>
                                <option value="2016">2016</option>
                                <option value="2015">2015</option>
                                <option value="2014">2014</option>
                                <option value="2013">2013</option>
                                <option value="2012">2012</option>
                                <option value="2011">2011</option>
                                <option value="2010">2010</option>
                                <option value="2009">2009</option>
                                <option value="2008">2008</option>
                                <option value="2007">2007</option>
                                <option value="2006">2006</option>
                                <option value="2005">2005</option>
                                <option value="2004">2004</option>
                                <option value="2003">2003</option>
                                <option value="2002">2002</option>
                                <option value="2001">2001</option>
                                <option value="2000">2000</option>
                                <option value="1999">1999</option>
                                <option value="1998">1998</option>
                                <option value="1997">1997</option>
                                <option value="1996">1996</option>
                                <option value="1995">1995</option>
                                <option value="1994">1994</option>
                                <option value="1993">1993</option>
                                <option value="1992">1992</option>
                                <option value="1991">1991</option>
                                <option value="1990">1990</option>
                                <option value="1989">1989</option>
                                <option value="1988">1988</option>
                                <option value="1987">1987</option>
                                <option value="1986">1986</option>
                                <option value="1985">1985</option>
                                <option value="1984">1984</option>
                                <option value="1983">1983</option>
                                <option value="1982">1982</option>
                                <option value="1981">1981</option>
                                <option value="1980">1980</option>
                                <option value="1979">1979</option>
                                <option value="1978">1978</option>
                                <option value="1977">1977</option>
                                <option value="1976">1976</option>
                                <option value="1975">1975</option>
                                <option value="1974">1974</option>
                                <option value="1973">1973</option>
                                <option value="1972">1972</option>
                                <option value="1971">1971</option>
                                <option value="1970">1970</option>
                                <option value="1969">1969</option>
                                <option value="1968">1968</option>
                                <option value="1967">1967</option>
                                <option value="1966">1966</option>
                                <option value="1965">1965</option>
                                <option value="1964">1964</option>
                                <option value="1963">1963</option>
                                <option value="1962">1962</option>
                                <option value="1961">1961</option>
                                <option value="1960">1960</option>
                                <option value="1959">1959</option>
                                <option value="1958">1958</option>
                                <option value="1957">1957</option>
                                <option value="1956">1956</option>
                                <option value="1955">1955</option>
                                <option value="1954">1954</option>
                                <option value="1953">1953</option>
                                <option value="1952">1952</option>
                                <option value="1951">1951</option>
                                <option value="1950">1950</option>
                                <option value="1949">1949</option>
                                <option value="1948">1948</option>
                                <option value="1947">1947</option>
                                <option value="1946">1946</option>
                                <option value="1945">1945</option>
                                <option value="1944">1944</option>
                                <option value="1943">1943</option>
                                <option value="1942">1942</option>
                                <option value="1941">1941</option>
                                <option value="1940">1940</option>
                                <option value="1939">1939</option>
                                <option value="1938">1938</option>
                                <option value="1937">1937</option>
                                <option value="1936">1936</option>
                                <option value="1935">1935</option>
                                <option value="1934">1934</option>
                                <option value="1933">1933</option>
                                <option value="1932">1932</option>
                                <option value="1931">1931</option>
                                <option value="1930">1930</option>
                                <option value="1929">1929</option>
                                <option value="1928">1928</option>
                                <option value="1927">1927</option>
                                <option value="1926">1926</option>
                                <option value="1925">1925</option>
                                <option value="1924">1924</option>
                                <option value="1923">1923</option>
                                <option value="1922">1922</option>
                                <option value="1921">1921</option>
                                <option value="1920">1920</option>
                                <option value="1919">1919</option>
                                <option value="1918">1918</option>
                                <option value="1917">1917</option>
                                <option value="1916">1916</option>
                                <option value="1915">1915</option>
                                <option value="1914">1914</option>
                                <option value="1913">1913</option>
                                <option value="1912">1912</option>
                                <option value="1911">1911</option>
                                <option value="1910">1910</option>
                                <option value="1909">1909</option>
                                <option value="1908">1908</option>
                                <option value="1907">1907</option>
                                <option value="1906">1906</option>
                                <option value="1905">1905</option>
                                <option value="1904">1904</option>
                                <option value="1903">1903</option>
                                <option value="1902">1902</option>
                                <option value="1901">1901</option>
                                <option value="1900">1900</option>
                              </select>
                            </div>
                            <div class="member_warning">
                              <select
                                class="chosen-single"
                                id="birthMonth"
                                name="birthMonth"
                                style="width: 80px"
                              >
                                <option value="">월</option>
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                              </select>
                            </div>
                            <div class="member_warning">
                              <select
                                class="chosen-single"
                                id="birthDay"
                                name="birthDay"
                                style="width: 80px"
                              >
                                <option value="">일</option>
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                                <option value="21">21</option>
                                <option value="22">22</option>
                                <option value="23">23</option>
                                <option value="24">24</option>
                                <option value="25">25</option>
                                <option value="26">26</option>
                                <option value="27">27</option>
                                <option value="28">28</option>
                                <option value="29">29</option>
                                <option value="30">30</option>
                                <option value="31">31</option>
                              </select>
                            </div>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <!-- //addition_info_sec -->
                </div>
                <!-- //addition_info_box -->

                <!-- 회원가입/정보 부가정보 -->

                <div class="btn_center_box">
                  <button
                    type="button"
                    id="btnCancel"
                    class="btn_member_cancel"
                  >
                    취소
                  </button>
                  <button
                    type="button"
                    class="btn_comfirm js_btn_join"
                    value="회원가입"
                  >
                    회원가입
                  </button>
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

          $(document).ready(function () {
            var $formJoin = $("#formJoin");

            $(":text:first", $formJoin).focus();

            $("#btnCancel", $formJoin).click(function (e) {
              e.preventDefault();
              top.location.href = "/";
            });

            if ($(".js_datepicker").length) {
              $(".js_datepicker").datetimepicker({
                locale: "ko",
                format: "YYYY-MM-DD",
                dayViewHeaderFormat: "YYYY MM",
                viewMode: "days",
                ignoreReadonly: true,
                debug: false,
                keepOpen: false,
              });
            }

            $("#btnPostcode").click(function (e) {
              e.preventDefault();
              $("#address-error, #addressSub-error").remove();
              $(":text[name=address], :text[name=addressSub]").removeClass(
                "text_warning"
              );
              gd_postcode_search("zonecode", "address", "zipcode");
            });

            $("#btnCompanyPostcode").click(function (e) {
              e.preventDefault();
              $("#comAddress-error, #comAddressSub-error").remove();
              $(
                ":text[name=comAddress], :text[name=comAddressSub]"
              ).removeClass("text_warning");
              gd_postcode_search("comZonecode", "comAddress", "comZipcode");
            });

            function sendDateData(year, month, type) {
              var dayType = "";
              var params = {
                year: year,
                month: month,
              };
              $.ajax("../share/date_select_json.php", {
                data: params,
                method: "POST",
                success: function (data) {
                  if (data != "" && data != null) {
                    if (type == "marry") {
                      dayType = "marriDay";
                    } else {
                      dayType = "birthDay";
                    }
                    $("#" + dayType).empty();
                    $("#" + dayType).append(data);
                  }
                },
              });
            }

            $("#birthYear").change(function () {
              var birthMonthVal = $("#birthMonth").val();
              if (birthMonthVal != "") {
                sendDateData(
                  $("#birthYear").val(),
                  $("#birthMonth").val(),
                  "birth"
                );
              }
            });
            $("#birthMonth").change(function () {
              var birthYearVal = $("#birthYear").val();
              if (birthYearVal != "") {
                sendDateData(
                  $("#birthYear").val(),
                  $("#birthMonth").val(),
                  "birth"
                );
              }
            });

            gd_select_email_domain("email");

            gd_member2.init($formJoin);

            $(".js_btn_join").click({ form: $formJoin }, gd_member2.save);
          });

          /**
           * 회원가입시 Exception 발생하는 경우 회원가입 버튼 복원
           */
          function callback_not_disabled() {
            $(".js_btn_join").prop("disabled", false);
            $(".js_btn_join em").html("회원가입");
          }
        </script>
      </div>
      <!-- //sub_content -->
    </div>

</body>
</html>