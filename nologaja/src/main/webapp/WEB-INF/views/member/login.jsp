<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
	

    <!-- 메인내용 -->

	<div class="login_wrap">
            <div class="login_form-wrap">
                <div class="login_button-wrap">
                    <div id="login_btn"></div>
                    <button type="button" class="login_togglebtn" onclick="login_b()">일반회원</button>
                    <button type="button" class="login_togglebtn" onclick="login_s()">판매회원</button>
                </div>
                <form id="login_buyer" name="login_buyer" action="blogin.do" class="login_input-group" method="post">
                    <input type="text"     class="login_input-field" name="uid" id="uid" placeholder="아이디를 입력하세요" value="${cookie.uid }" required>
                    <input type="password" class="login_input-field" name="upw" id="upw" placeholder="비밀번호를 입력하세요" required>
                    <input type="checkbox" class="login_checkbox"    name="uidsave" id="uidsave" ><span>아이디 기억하기</span>
                    <span><a onclick="findIdpw()">아이디/비번찾기</a></span>     
                    <button class="login_submit" onclick="senditb()">로그인</button>
                </form>
                <form id="login_seller" name="login_seller" action="slogin.do" class="login_input-group" method="post">
                    <input type="text"     class="login_input-field" name="suid" id="suid" placeholder="아이디를 입력하세요" value="${cookie.suid }"required>
                    <input type="password" class="login_input-field" name="supw" id="supw" placeholder="비밀번호를 입력하세요" required>
                    <input type="checkbox" class="login_checkbox"    name="suidsave" id="suidsave" ><span>아이디 기억하기</span>
                    <span><a onclick="findIdpw()">아이디/비번찾기</a></span>     
                    <button class="login_submit" onclick="sendits()">로그인</button>
                </form>
            </div>
        </div>
        <script>

        
            var x = document.getElementById("login_buyer");
            var y = document.getElementById("login_seller");
            var z = document.getElementById("login_btn");
            
            
            function login_b(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function login_s(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";   
            }
            
            function findIdpw(){  
            	window.open("findidpw.do", "아이디/비밀번호 찾기", "width=550, height=550");
            }//findIdpw()end
//-------쿠키--------------------------------------------------------------------------------------------------------------------
        window.onload = function() {
        	 
       	
           	if(getCookie("buid") != null ){
            	document.login_buyer.uid.value = getCookie("buid"); //input 이름이 id인곳에 getCookie("id")값을 넣어줌
                document.login_buyer.uidsave.checked = true; // 체크는 체크됨으로            	
           	}
           	
            if (getCookie("suid") != null) { // getCookie함수로 id라는 이름의 쿠키를 불러와서 있을경우
                document.login_seller.suid.value = getCookie("suid"); //input 이름이 id인곳에 getCookie("id")값을 넣어줌
                document.login_seller.suidsave.checked = true; // 체크는 체크됨으로
            }
     
        }
     
        function setCookie_s(name, value, expiredays) //쿠키 저장함수
        {
            var todayDate = new Date();
            todayDate.setDate(todayDate.getDate() + expiredays);
            document.cookie = name + "=" + escape(value) + "; path=/; expires="
                    + todayDate.toGMTString() + ";"
        }
        
        function setCookie_b(name, value, expiredays) //쿠키 저장함수
        {
            var todayDate = new Date();
            todayDate.setDate(todayDate.getDate() + expiredays);
            document.cookie = "b" + name + "=" + escape(value) + "; path=/; expires="
                    + todayDate.toGMTString() + ";"
        }
     
        function getCookie(Name) { // 쿠키 불러오는 함수
            var search = Name + "=";
            if (document.cookie.length > 0) { // if there are any cookies
            	offset = document.cookie.indexOf(search);

                if (offset != -1) { // if cookie exists
                    offset += search.length; // set index of beginning of value
                    end = document.cookie.indexOf(";", offset); // set index of end of cookie value
                    if (end == -1)
                        end = document.cookie.length;
                    return unescape(document.cookie.substring(offset, end));
                }
            }
        }
     
        function senditb() {
            if (document.login_buyer.uidsave.checked == true) { // 아이디 저장을 체크 하였을때
                setCookie_b("uid", document.login_buyer.uid.value, 7)	; //쿠키이름을 id로 아이디입력필드값을 7일동안 저장
            } else { // 아이디 저장을 체크 하지 않았을때
                setCookie_b("uid", document.login_buyer.uid.value, 0); //날짜를 0으로 저장하여 쿠키삭제

            }
            document.login_seller.submit();
        }
        </script>
        <script>

        function sendits() {
            if (document.login_seller.suidsave.checked == true) { // 아이디 저장을 체크 하였을때
                setCookie_s("suid", document.login_seller.suid.value, 7); //쿠키이름을 id로 아이디입력필드값을 7일동안 저장
            } else { // 아이디 저장을 체크 하지 않았을때
                setCookie_s("suid", document.login_seller.suid.value, 0); //날짜를 0으로 저장하여 쿠키삭제

            }
     
     
            document.login_seller.submit(); 
        }
        </script>


<%@ include file="../footer.jsp" %>