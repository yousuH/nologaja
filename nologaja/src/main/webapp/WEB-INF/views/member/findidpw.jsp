<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/login.css">
<meta charset="UTF-8">
</head>
<body>
	<div class="login_wrap">
            <div class="login_form-wrap">
                <div class="login_button-wrap">
                    <div id="login_btn"></div>
                    <button type="button" class="login_togglebtn" onclick="login_buyer()">일반회원</button>
                    <button type="button" class="login_togglebtn" onclick="login_seller()">판매회원</button>
                </div>
                <form id="login_buyer" action="buyerfindid.do" method="post" class="login_input-group">
                    <input type="text" class="login_input-field" name="uname" id="uname" placeholder="이름 입력" required>
                    <input type="email" class="login_input-field" name="uemail" id="uemail" placeholder="이메일 입력" required>
                    <button class="login_submit">찾기</button>
                </form>
                <form id="login_seller" action="sellerfindid.do" method="post" class="login_input-group">
                    <input type="text" class="login_input-field" name="uname" id="uname"  placeholder="이름 입력" required>
                    <input type="email" class="login_input-field" name="uemail" id="uemail" placeholder="이메일 입력" required>
                    <button class="login_submit">찾기</button>
                </form>
            </div>
        </div>
        <script>
            var x = document.getElementById("login_buyer");
            var y = document.getElementById("login_seller");
            var z = document.getElementById("login_btn");
            
            
            function login_buyer(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function login_seller(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
        </script>
	
	<script>	
	function blankCheck(){
		var mname = document.getElementById("mname").value;
		var email = document.getElementById("email").value;
		mname=mname.trim();
		email=email.trim();
		if(mname.length<2){
			alert("이름은 2자 이상 입력해주세요.");
			return false;
			if(email.length<5){
				alert("이메일을 정확히 입력해주세요.");
				return false;
			}
		}//if() end
		return true;
	}//blankCheck()end
	</script>
	

</body>
</html>