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

    const img = ["1.png", "4.png"];
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
    <div class="page-container">
       <div class="section">
           <div class="recommendation-title"> <h1>무신사 남성 가을</h1></div>
                <div class="product-container">
                    <div class="product">
                        <img src="../asset/testimg/test_men1.jpg" alt="1번째 콘텐츠 이미지">
                        <a href="https://www.musinsa.com/app/goods/2723764?loc=goods_rank">
                        <h2 class="title">하찌 카라 투웨이 집업 니트</h2>
                        </a>
                        <p class="description">
                            - 워셔블 가능한 원사 사용   <br>
                            - 수아레 로고 사용한 편함<br>
                            - 하이퀄리티 편직 디테일
                        </p>
                       
                    </div>
                    <div class="product">
                        <img src="../asset/testimg/test_men2.jpg" alt="2번째 콘텐츠 이미지">
                        <a href="https://www.musinsa.com/app/goods/1551840?loc=goods_rank">
                        <h2 class="title">Deep One Tuck Sweat Pants</h2>
                        </a>
                        <p class="description">
                            - 국내방 35수 코마사 사용   <br>
                            - 기존 여름용 원단보다 시원<br>
                            - 보온성을 높인 원단을 사용
                        </p>
                    </div>
                    <div class="product">
                        <img src="../asset/testimg/test_men3.jpg" alt="3번째 콘텐츠 이미지">
                        <a href="https://www.musinsa.com/app/goods/2043056?loc=goods_rank">
                        <h2 class="title">CGP 아치 로고 트레이닝 셋업_네이비</h2>
                        </a>
                        <p class="description">
                            - 미지근한 물에 중성세제   <br>
                            - 기계 건조 사용시 손상<br>
                            - 고온 세탁 및 용해조심
                        </p>
                    </div>
                    <div class="product">
                        <img src="../asset/testimg/test_men4.jpg" alt="4번째 콘텐츠 이미지">
                        <a href="https://www.musinsa.com/app/goods/1778404?loc=goods_rank">
                        <h2 class="title">스웻 후드 집업</h2>
                        </a>
                        <p class="description">
                            - 변형이 적고 탄탄한 원단   <br>
                            - 오버핏으로 편안한 착용<br>
                            - 단품 및 이너로 활용 가능
                        </p>
                    </div>
                    <div class="product">
                        <img src="../asset/testimg/test_men5.jpg" alt="5번째 콘텐츠 이미지">
                        <a href="https://www.musinsa.com/app/goods/2996544?loc=goods_rank">
                        <h2 class="title">올데이 라운드 니트</h2>
                        </a>
                        <p class="description">
                            - 워셔블 가능한 원사 사용   <br>
                            - 올사시 하이퀄리티 편직<br>
                            - SPAN사를 더해 잡아줌
                        </p>
                    </div>
                </div>
            </div>
   </section>

    <section>
       <div class="page-container">
            <div class="section">
                <div class="recommendation-title"><h1>무신사 여성 가을</h1></div>
                    <div class="product-container">
                        <div class="product">
                            <img src="../asset/testimg/test_women1.jpg" alt="1번쨰 콘텐츠 이미지">
                            <a href="https://www.musinsa.com/app/goods/1618312?loc=goods_rank">
                            <h2 class="title"> 우먼즈 오버사이즈 블레이저 </h2>
                            </a>
                            <p class="description">
                                - 소모직물을 사용   <br>
                                - 원료염 원액에 첨가<br>
                                - 대전 방지 가공
                            </p>
                        </div>
                        <div class="product">    
                            <img src="../asset/testimg/test_women2.jpg" alt="2번쨰 콘텐츠 이미지">
                            <a href="https://www.musinsa.com/app/goods/3124490?loc=goods_rank">
                            <h2 class="title">프론트 워싱 와이드 데님 팬츠</h2>
                            </a>
                            <p class="description">
                                - 워셔블 가능한 원사 사용   <br>
                                - 올사시 하이퀄리티 편직<br>
                                - SPAN사를 더해 잡아줌</p>
                        </div>
                        <div class="product">
                            <img src="../asset/testimg/test_women3.jpg" alt="3번쨰 콘텐츠 이미지">
                            <a href="https://www.musinsa.com/app/goods/3223947?loc=goods_rank">
                            <h2 class="title"> 원턱 와이드 스웨트 팬츠</h2>
                            </a>
                            <p class="description">
                                - 소모직물을 사용   <br>
                                - 원료염 원액에 첨가<br>
                                - 대전 방지 가공</p>
                        </div>
                        <div class="product">    
                            <img src="../asset/testimg/test_women4.jpg" alt="4번쨰 콘텐츠 이미지">
                            <a href="https://www.musinsa.com/app/goods/2718414?loc=goods_rank">
                            <h2 class="title">테오 코튼 올 데이 후드 집업 멜란지 아이보리</h2>
                            </a>
                            <p class="description">
                                - 미지근한 물에 중성세제   <br>
                                - 기계 건조 사용시 손상<br>
                                - 고온 세탁 및 용해조심</p>
                        </div>
                        <div class="product">
                            <img src="../asset/testimg/test_women5.jpg" alt= "5번쨰 콘텐츠 이미지">
                            <a href="https://www.musinsa.com/app/goods/2874755?loc=goods_rank">
                            <h2 class="title">Sac de Velo Mini </h2>
                            </a>
                            <p class="description">
                                - 미지근한 물에 중성세제   <br>
                                - 기계 건조 사용시 손상<br>
                                - 고온 세탁 및 용해조심</p>
                            </p>
                        </div>
                    </div>
                </div>
           </div>
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


