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
});