<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/reset.css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/common.css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/member_a.css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/member_b.css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/layout.css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/login.css" />

    <script src="./js/jquery-3.6.1.js"></script>
    <script src="./js/header.js"></script>
<title>login</title>
</head>
<body>
    <div id="container" class="subPageContainer">
      <div id="contents">
        <!-- 본문 시작 -->

        <!-- //location_wrap -->

        <div class="sub_content">
          <!-- //side_cont -->
          <div class="content_box">
            <div class="member_wrap">
              <div class="member_tit">
                <h2>로그인</h2>
              </div>
              <!-- //member_tit -->
              <div class="member_cont">
                <form
                  id="formLogin"
                  method="post"
                  action="http://nvot.co.kr/member/login_ps.php"
                  novalidate="novalidate"
                >
                  <input type="hidden" id="mode" name="mode" value="login" />
                  <input
                    type="hidden"
                    id="returnUrl"
                    name="returnUrl"
                    value="http%3A%2F%2Fnvot.co.kr%2Fmain%2Findex.php"
                  />
                  <div class="member_login_box">
                    <h3>회원 로그인</h3>
                    <div class="login_input_sec">
                      <div>
                        <input
                          type="text"
                          id="loginId"
                          name="loginId"
                          value="qkralswl07"
                          placeholder="아이디"
                          required="true"
                          aria-required="true"
                        />
                        <input
                          type="password"
                          id="loginPwd"
                          name="loginPwd"
                          value=""
                          placeholder="비밀번호"
                          required="true"
                          aria-required="true"
                        />
                      </div>
                      <button type="submit">로그인</button>
                    </div>
                    <div class="id_chk">
                      <span class="form_element">
                        <input
                          type="checkbox"
                          id="saveId"
                          name="saveId"
                          value="y"
                          checked="true"
                        />
                        <label for="saveId" class="on">아이디 저장</label>
                      </span>
                      <p class="dn js_caution_msg1">
                        아이디, 비밀번호가 일치하지 않습니다. 다시 입력해
                        주세요.
                      </p>
                    </div>
                  </div>
                  <!-- //login_box -->
                  <div class="member_sns_login"></div>
                  <div class="btn_login_box">
                    <ul>
                      <li>
                        <button id="btnJoinMember" class="btn_member_join">
                          회원가입
                        </button>
                      </li>
                      <li>
                        <button id="btnFindId" class="btn_member_white">
                          아이디 찾기
                        </button>
                      </li>
                      <li>
                        <button id="btnFindPwd" class="btn_member_white">
                          비밀번호 찾기
                        </button>
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

          <script
            type="text/javascript"
            src="/data/skin/front/mplshop/js/jquery/jquery.serialize.object.js"
          ></script>
          <script type="text/javascript">
            var $formLogin;
            $(document).ready(function () {
              var order_no_max_length = $("input[name=orderNo]").data(
                "max-length"
              );
              $("#btnJoinMember").click(function (e) {
                e.preventDefault();
                location.href = "../member/join_method.php";
              });
              $("#btnFindId").click(function (e) {
                e.preventDefault();
                location.href = "../member/find_id.php";
              });
              $("#btnFindPwd").click(function (e) {
                e.preventDefault();
                location.href = "../member/find_password.php";
              });

              $("#loginId, #loginPwd").focusin(function () {
                $(".js_caution_msg1", "#formLogin").addClass("dn");
              });

              $formLogin = $("#formLogin");
              $formLogin.validate({
                dialog: false,
                rules: {
                  loginId: {
                    required: true,
                  },
                  loginPwd: {
                    required: true,
                  },
                },
                messages: {
                  loginId: {
                    required: "아이디를 입력해주세요",
                  },
                  loginPwd: {
                    required: "패스워드를 입력해주세요",
                  },
                },
                submitHandler: function (form) {
                  if (window.location.search) {
                    var _tempUrl = window.location.search.substring(1);
                    var _tempVal = _tempUrl.split("=");

                    if (_tempVal[1] == "lnCouponDown") {
                      $("#returnUrl").val(document.referrer);
                    }
                  }
                  form.target = "ifrmProcess";
                  form.submit();
                },
              });

              // 비회원 주문조회 폼 체크
              $("#formOrderLogin").validate({
                rules: {
                  orderNm: "required",
                  orderNo: {
                    required: true,
                    number: true,
                    maxlength: order_no_max_length,
                  },
                },
                messages: {
                  orderNm: {
                    required: "주문자명을 입력해주세요.",
                  },
                  orderNo: {
                    required: "주문번호를 입력해주세요.",
                    number: "숫자로만 입력해주세요.",
                    maxlength:
                      "주문번호는 " + order_no_max_length + "자리입니다.",
                  },
                },
                submitHandler: function (form) {
                  $.post(form.action, $(form).serializeObject()).done(function (
                    data,
                    textStatus,
                    jqXhr
                  ) {
                    console.log(data);
                    if (data.result == 0) {
                      location.replace(
                        "../mypage/order_view.php?orderNo=" + data.orderNo
                      );
                    } else {
                      $(".js_caution_msg2")
                        .empty()
                        .html(
                          "주문자명과 주문번호가 일치하는 주문이 존재하지 않습니다. 다시 입력해 주세요.<br><span>주문번호와 비밀번호를 잊으신 경우, 고객센터로 문의하여 주시기 바랍니다.</span>"
                        );
                    }
                  });
                  return false;
                },
              });
            });
          </script>
        </div>
        <!-- //sub_content -->
      </div>
      <!-- //본문 끝 contents -->
    </div>
</body>
</html>