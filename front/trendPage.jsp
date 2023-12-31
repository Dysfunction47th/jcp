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
    <title> trend Page</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="/front/css/veslab_style_trend.css">
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
              
              <!-- <li><a href="#">메인</a></li> -->
              <li id=""><a href="mainPage.html">게시판</a></li>
              <!-- <li id=""><a href="mainPage.jsp">추천게시판</a></li> -->
              

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
    <table class="chart-table">
            <caption>이달 인기상품</caption>
            <tr>
                <th>순위</th>
                <th>상품</th>
            </tr>
            <tr>
                <td>1</td>
                <td><a href="https://www.musinsa.com/app/goods/2108160?loc=goods_rank">베이직 퍼플라스 집업</a></td>
            </tr>
            <tr>
                <td>2</td>
                <td><a href="https://www.musinsa.com/app/goods/1551840?loc=goods_rank"> Deep One Tuck Sweat Pants [Grey]</a></td>
            </tr>
            <tr>
                <td>3</td>
                <td><a href="https://www.musinsa.com/app/goods/3290281?loc=goods_rank">버뮤다 - 핑크 / GY7386 </a></td>
            </tr>
            <tr>
                <td>4</td>
                <td><a href="https://www.musinsa.com/app/goods/2112059?loc=goods_rank">원턱 와이드 스웨트팬츠 그레이</a></td>
            </tr>
            <tr>
                <td>5</td>
                <td><a href="https://www.musinsa.com/app/goods/2037173?loc=goods_rank">베이직 푸퍼_SPJPD4TC11</a></td>
            </tr>
            <tr>
                <td>6</td>
                <td><a href="https://www.musinsa.com/app/goods/1778404?loc=goods_rank"> 2WAY 스웻 후드 집업 (MELANGE GREY) </a></td>
            </tr>
            <tr>
                <td>7</td>
                <td><a href="https://www.musinsa.com/app/goods/3633441?loc=goods_rank">아식스 X 언어펙티드 젤-카야노 14 - 브라이트 화이트:제트 블랙</a></td>
            </tr>
            <tr>
                <td>8</td>
                <td><a href="https://www.musinsa.com/app/goods/2545799?loc=goods_rank">슈퍼스타 82 - 블랙</a></td>
            </tr>
            <tr>
                <td>9</td>
                <td><a href="https://www.musinsa.com/app/goods/1576700?loc=goods_rank">오버핏 비건레더 싱글 자켓 </a></td>
            </tr>
            <tr>
                <td>10</td>
                <td><a href="https://www.musinsa.com/app/goods/1149329?loc=goods_rank">세미 와이드 히든 밴딩 슬랙스 [블랙] </a></td>
            </tr>
            <tr>
                <td>11</td>
                <td><a href="https://www.musinsa.com/app/goods/3391590?loc=goods_rank"> 라이트 자켓_SPJPD4TC01  </a></td>
            </tr>
            <tr>
                <td>12</td>
                <td><a href="https://www.musinsa.com/app/goods/1168906?loc=goods_rank"> 와이드 히든 밴딩 슬랙스 [블랙]  </a></td>
            </tr>
            <tr>
                <td>13</td>
                <td><a href="https://www.musinsa.com/app/goods/1622069?loc=goods_rank"> 슈퍼스타 - 블랙:화이트 / EG4959  </a></td>
            </tr>
            <tr>
                <td>14</td>
                <td><a href="https://www.musinsa.com/app/goods/2092852?loc=goods_rank"> 이지 와이드 데님 팬츠 그레이 </a></td>
            </tr>
            <tr>
                <td>15</td>
                <td><a href="https://www.musinsa.com/app/goods/1558197?loc=goods_rank">   릴렉스드 베이식 블레이저 [블랙]  </a></td>
            </tr>
            <tr>
                <td>16</td>
                <td><a href="https://www.musinsa.com/app/goods/2086653?loc=goods_rank">레이어드 크루 넥 반팔 티셔츠_일반 기장 [화이트]   </a></td>
            </tr>
            <tr>
                <td>17</td>
                <td><a href="https://www.musinsa.com/app/goods/2704962?loc=goods_rank"> WARM+ UP QUILTING JACKET BLACK </a></td>
            </tr>
            <tr>
                <td>18</td>
                <td><a href="https://www.musinsa.com/app/goods/2112061?loc=goods_rank">  원턱 와이드 스웨트팬츠 블랙 </a></td>
            </tr>
            <tr>
                <td>19</td>
                <td><a href="https://www.musinsa.com/app/goods/1551839?loc=goods_rank"> Deep One Tuck Sweat Pants [Black] </a></td>
            </tr>
            <tr>
                <td>20</td>
                <td><a href="https://www.musinsa.com/app/goods/2700048?loc=goods_rank"> 우먼즈 캐시미어 블렌드 발마칸 로브 코트 [블랙]   </a></td>
            </tr>
        </table>
        <table class="chart-table"> <!-- 인기 순위 차트 테이블에 'chart-table' 클래스를 추가합니다. -->
            <caption>주간 인기상품</caption>
            <tr>
                <th>순위</th>
                <th>상품</th>
            </tr>
            <tr>
                <td>1</td>
                <td><a href="https://www.musinsa.com/app/goods/3633441?loc=goods_rank">아식스 X 언어펙티드 젤-카야노 14 - 브라이트 화이트:제트 블랙 </a></td>
            </tr>
            <tr>
                <td>2</td>
                <td><a href="https://www.musinsa.com/app/goods/3646678?loc=goods_rank">Traum Balmacaan Long Coat [Black]</a></td>
            </tr>
            <tr>
                <td>3</td>
                <td><a href="https://www.musinsa.com/app/goods/1551840?loc=goods_rank"> Deep One Tuck Sweat Pants [Grey]</a></td>
            </tr>
            <tr>
                <td>4</td>
                <td><a href="https://www.musinsa.com/app/goods/2545799?loc=goods_rank">슈퍼스타 82 - 블랙 / GY3428</a></td>
            </tr>
            <tr>
                <td>5</td>
                <td><a href="https://www.musinsa.com/app/goods/3290281?loc=goods_rank">버뮤다 - 핑크 / GY7386 </a></td>
            </tr>
            <tr>
                <td>6</td>
                <td><a href="https://www.musinsa.com/app/goods/2037173?loc=goods_rank"> 베이직 푸퍼_SPJPD4TC11 </a></td>
            </tr>
            <tr>
                <td>7</td>
                <td><a href="https://www.musinsa.com/app/goods/1778404?loc=goods_rank"> 2WAY 스웻 후드 집업 (MELANGE GREY)  </a></td>
            </tr>
            <tr>
                <td>8</td>
                <td><a href="https://www.musinsa.com/app/goods/1149329?loc=goods_rank">세미 와이드 히든 밴딩 슬랙스 [블랙] </a></td>
            </tr>
            <tr>
                <td>9</td>
                <td><a href="https://www.musinsa.com/app/goods/2700048?loc=goods_rank">우먼즈 캐시미어 블렌드 발마칸 로브 코트 [블랙] </a></td>
            </tr>
            <tr>
                <td>10</td>
                <td><a href="https://www.musinsa.com/app/goods/2112059?loc=goods_rank"> 원턱 와이드 스웨트팬츠 그레이 </a></td>
            </tr>
            <tr>
                <td>11</td>
                <td><a href="https://www.musinsa.com/app/goods/3585225?loc=goods_rank"> (덕 다운) 코듀로이 헤링턴 다운 점퍼  </a></td>
            </tr>
            <tr>
                <td>12</td>
                <td><a href="https://www.musinsa.com/app/goods/2684073?loc=goods_rank"> 와이드 히든 밴딩 슬랙스 [블랙]  </a></td>
            </tr>
            <tr>
                <td>13</td>
                <td><a href="https://www.musinsa.com/app/goods/2112059?loc=goods_rank"> SKADI DUCK DOWN - GLOSSY BLACK </a></td>
            </tr>
            <tr>
                <td>14</td>
                <td><a href="https://www.musinsa.com/app/goods/2112059?loc=goods_rank"> 오버핏 비건레더 싱글 자켓 </a></td>
            </tr>
            <tr>
                <td>15</td>
                <td><a href="https://www.musinsa.com/app/goods/2723767?loc=goods_rank">   데일리 라운드 니트 - 8 COLOR  </a></td>
            </tr>
            <tr>
                <td>16</td>
                <td><a href="https://www.musinsa.com/app/goods/2704962?loc=goods_rank">WARM+ UP QUILTING JACKET BLACK  </a></td>
            </tr>
            <tr>
                <td>17</td>
                <td><a href="https://www.musinsa.com/app/goods/2116411?loc=goods_rank"> 캐시미어 블렌드 오버사이즈 발마칸 코트 [블랙] </a></td>
            </tr>
            <tr>
                <td>18</td>
                <td><a href="https://www.musinsa.com/app/goods/2252756?loc=goods_rank">  NBPDDB736G / ML725P (GRAY) </a></td>
            </tr>
            <tr>
                <td>19</td>
                <td><a href="https://www.musinsa.com/app/goods/2092852?loc=goods_rank">이지 와이드 데님 팬츠 그레이  </a></td>
            </tr>
            <tr>
                <td>20</td>
                <td><a href="https://www.musinsa.com/app/goods/1551839?loc=goods_rank"> Deep One Tuck Sweat Pants [Black]  </a></td>
            </tr>
        </table>
	
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




