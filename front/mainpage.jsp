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

    <link rel="stylesheet" href="./css/veslab_style.css">
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

  
  <header>
      <div class="inner">
          <h1>CLOTHES SHOPPING Trend</h1>
      
          <ul id="gnb">
              <!-- <li><a href="#">지금 트랜드</a></li> -->
              <li><a href="http://localhost:8080/JSP/jcp/front/trends.jsp"  onclick="location.href='C:\jsp\test2\src\main\webapp\jcp\back\NaverShowppingLab.ShowTrendLab.jsp'">지금 트랜드</a></li>
              
              <!-- <li><a href="#">쇼핑</a></li> -->
              <li id="recommendBoard"><a href="boardPage.jsp">추천게시판</a></li>
              
          </ul>

          <ul class="util">
              <li><a href="#">Contact</a></li>
              <li><a href="#">Help</a></li>
              <li id="userMenu"><a href="#">User Name</a></li>
              <li class="api-btn" onclick="logout()"><a href="#">Logout</a></li>
              <li><a href="#">Sitemap</a></li>
          </ul>
      </div>
  </header>


  
  <div class="slider-container">
      <div class="slider">
          
      </div>
      <button class="prev-btn">&#10094;</button>
      <button class="next-btn">&#10095;</button>
  </div>
  
  <script>

    const img = ["1.png","2.png","3.png", "4.png" ,"5.png"];
    let currentIndex = 0; // 현재 이미지 인덱스
    
    function updateSlider() {
        // 다음 이미지 인덱스 계산
        currentIndex = (currentIndex + 1) % img.length;
    
        // 현재 이미지 URL 가져오기
        const currentImg = img[currentIndex];
    
        // 이미지 요소 업데이트
        bgImage.src = "/asset/clothImg/" + currentImg;
    }
    
    // 이미지 요소 생성
    const bgImage = document.createElement("img");
    
    // 슬라이더 컨테이너 요소 가져오기
    const sliderContainer = document.querySelector(".slider-container");
    
    // 슬라이더 요소 가져오기
    const slider = sliderContainer.querySelector(".slider");
    
    // 이미지 요소를 슬라이더에 추가
    slider.appendChild(bgImage);
    
    // 슬라이더 컨테이너에 슬라이더를 추가
    document.body.appendChild(sliderContainer);
    
    // 2초마다 슬라이더 업데이트
    setInterval(updateSlider, 2000);
    
    
</script>


<section>
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
<form name="form1" action="boardBwrite_ok.jsp" method="post">
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
<input type="button" value="등록" class="paging1" onclick="valid_check();">
<input type="button" value="취소"class ="paging1">
<input type="button" value="목록으로" class="paging1" onclick="submit_list();">

</table>
</form>
       </section>


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


