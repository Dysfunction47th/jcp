<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*, java.util.*"%>
    <%request.setCharacterEncoding("utf-8"); %>



<!DOCTYPE html>
<html lang="ko">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Main Page</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="./css/veslab_style_board.css">
    <script src="../back/LoginAndLogout/logout.js"></script>

</head>

<script>
  // 세션 스토리지에서 유저 ID를 가져오는 함수
  function getUserID() {
   
   // 세션 스토리지에서 userid 키로 저장된 값을 가져옴.
   
   const userNickname = sessionStorage.getItem("nickname")
   
   // 만약 유저 ID가 저장되어 있다면 해당 값을 반환하고, 아니면 빈 문자열을 반환.
   
   return userNickname ? userNickname : ""; 
//dsd

}

// 페이지 로딩 시 실행되는 함수
window.onload = function () {

   const userNickname = getUserID();

   // 유저 ID가 있으면 해당 nickname을 사용하여 <li> 요소를 수정.
   if (userNickname) {
       const userMenu = document.getElementById("userMenu");
       const anchor = userMenu.querySelector("a");
       anchor.textContent = `${userNickname}님`;
   }
};

// 이후 보안을 위해 로컬 스토리지 초기화
</script>



<body>

  <header id="bener1">
        <div class="inner1">
            <h1>musinsa top10</h1>
            
            <ul class="util">
                
                <li id="userMenu" > <img src="../asset/login/login_img.png" alt="" srcset=""> <a href="../front/loginPage.html" id="login_word">로그인 해주세요</a></li>
                <li class="api-btn" onclick="logout()"><a href="#">Logout</a></li>
                
            </ul>
        </div>

                
    </header>
 
    <div id="category">
    <br>
        <h1> 무신사 여성 베스트 </h1>
        <ul>
        	<li class="category-right">
                <a href="./trendPage_login_complete.jsp	" id="category-sum"> 전체 </a>
                <a href="./trendPage_login_complete_men.jsp" id="category-right_men"> 남성 </a>
                <a href="./trendPage_login_complete_women.jsp" id="category-right_women"> 여성 </a>
                <a href="./trendPage_login_complete_week.jsp" id="category-right_men"> 주간  </a>
                <a href="./trendPage_login_complete.jsp" id="category-right_women"> 월간 </a>
                <a href="./boardPage.jsp">추천게시판 </a>
            </li>
        </ul>
    </div>
  

  
 


<section>
<h3>게시판 새글쓰기</h3>
   <script>
function valid_check(){
	if (document.form1.writer.value==""){
		alert("작성자 이름을 입력하세요!!");
		document.form1.writer.focus();
		return false;
	}
	if (document.form1.title.value==""){
		alert("제목을 입력하세요!!");
		document.form1.title.focus();
		return false;
	}
	if (document.form1.contents.value==""){
		alert("제목을 입력하세요!!");
		document.form1.contents.focus();
		return false;
	}
	document.form1.submit();
}
</script>
<form name="form1" action="boardwrite_ok.jsp" method="post">
<table width="500" border="1" cellpadding="0" cellspacing="0">
<tr>
<td width="40%">작성자명</td>
<td width="60%"><input type="text" name="writer" class="paging2"></td>
</tr>
<tr>
<td width="40%">제목</td>
<td width="60%"><input type="text" name="title" class="paging2"></td>
</tr>
<tr>
<td width="40%" class="paging3">내용</td>
<td width="60%">
<textarea name="contents" rows="25" cols="60">
</textarea>
</td>
</tr>
<tr>
<td colspan="2">
<input type="button" value="등록" class="paging4" onclick="valid_check();">
<input type="button" value="취소"class ="paging4">
<input type="button" value="목록으로" class="paging4" onclick="submit_list();">

</table>
</form>
       </section>

<br>

   <footer>
        <div class="inner">
            <div class="upper">
                <h1>VESLAB</h1>
                <ul>
                    <li><a href="#">Policy</a></li>
                    <li><a href="#">Terms</a></li>
                    <li><a href="#">Family Site</a></li>
                    <li><a href="#">Sitemap</a></li>
                </ul>
            </div>

            <div class="lower">
                <address>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quas, facere.<br>
                    TEL : 031-111-1234 C.P : 010-1234-5678
                </address>
                <p>
                    &copy; 2023 VESLAB Trend, All rights reserved.
                </p>
            </div>
        </div>
    </footer>




</body>

</html>

<script>
    const listItems = document.querySelectorAll("#category li");
    
    listItems.forEach((li) => {
        li.addEventListener("mouseover", () => {
            // 마우스를 갖다 댔을 때 색상을 검은색으로 변경
            li.style.color = "black";
    
            // 다른 li 요소는 회색으로 변경
            listItems.forEach((otherLi) => {
                if (otherLi !== li) {
                    otherLi.style.color = "gray";
                }
            });
        });
    
        li.addEventListener("mouseout", () => {
            // 마우스가 벗어났을 때 원래 색상으로 복구
            li.style.color = "";
        });
    
        li.addEventListener("click", (event) => {
            // 클릭한 li 요소의 링크 색상을 검은색으로 고정
            li.style.color = "black";
    
            // 다른 li 요소는 이벤트 제거하여 검은색 고정을 해제
            listItems.forEach((otherLi) => {
                if (otherLi !== li) {
                    otherLi.style.color = "gray";
                    otherLi.removeEventListener("mouseover", () => {});
                    otherLi.removeEventListener("mouseout", () => {});
                }
            });
    
            // 이벤트 전파 중단
            event.stopPropagation();
        });
    });
    </script>

    <script>
        // 페이지가 로드될 때 실행되는 함수
        window.onload = function () {
            const listItems = document.querySelectorAll("#category li");
            const womenLink = document.querySelector("#category-sum");
    
            // 여성 링크 색상을 검은색으로 초기화
            womenLink.style.color = "black";
    
            listItems.forEach((li) => {
                // 마우스 오버 이벤트
                li.addEventListener("mouseover", () => {
                    if (li === womenLink) {
                        li.style.color = "gray"; // 여성 링크인 경우 검은색으로 변경
                    } else {
                        li.style.color = "gray"; // 다른 링크는 회색으로 변경
                    }
                });
    
                // 마우스 아웃 이벤트
                li.addEventListener("mouseout", () => {
                    if (li === womenLink) {
                        li.style.color = "gray"; // 여성 링크인 경우 검은색으로 유지
                    } else {
                        li.style.color = "gray"; // 다른 링크는 회색으로 변경
                    }
                });
            });
    
            // 클릭 이벤트
            womenLink.addEventListener("click", () => {
                // 여성 링크를 클릭한 경우 다른 링크의 이벤트를 제거
                listItems.forEach((otherLi) => {
                    if (otherLi !== womenLink) {
                        otherLi.style.color = "gray"; // 다른 링크는 회색으로 변경
                        otherLi.removeEventListener("mouseover", () => {});
                        otherLi.removeEventListener("mouseout", () => {});
                    }
                });
            });
        }
    </script>

    
    <script>
        // 페이지가 로드될 때 실행되는 함수
        window.onload = function () {
            const listItems = document.querySelectorAll(".category-left a");
            
            listItems.forEach((li) => {
                // 클릭 이벤트
                li.addEventListener("click", () => {
                    // 클릭한 링크를 검은색으로 변경
                    li.style.color = "#ece6cc";
                    
                    // 다른 링크를 회색으로 변경
                    listItems.forEach((otherLi) => {
                        if (otherLi !== li) {
                            otherLi.style.color = "#f5f5dc";
                        }
                    });
                });
            });
        }
    </script>
    
    

