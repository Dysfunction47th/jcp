<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.sql.*"%>
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

    <link rel="stylesheet" href="./css/veslab_style_trend_complete.css">
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
            <h1>musinsa</h1>
            <p>top10 </p>
            <ul class="util">
                
                <li id="userMenu" > <img src="../asset/login/login_img.png" alt="" srcset=""> <a href="../front/loginPage.html" id="login_word">로그인 해주세요</a></li>
                <li class="api-btn" onclick="logout()"><a href="#">Logout</a></li>
                
            </ul>
        </div>

                
    </header>

    <div id="show_site">
        <h2> 무신사 트랜드  </h2>
    </div>
  
  
    <div id="category">
        <span id="cate_color">
        <br>
         <h1> 무신사 남성 베스트 </h1>
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


        </span>
    </div>
    
<section>
    
    <table class="chart-table">
            <caption>이주 인기상품</caption>
            <tr>
                <th>순위</th>
                <th>상품</th>
                <th>순위</th>
                <th>상품</th>
                <th>순위</th>
                <th>상품</th>
                <th>순위</th>
                <th>상품</th>
            </tr>
            <tr>
                <td>1</td>
                <td> <img src="../asset/msum_week/1.jpg" alt="" srcset=""> <br> <a href="https://www.musinsa.com/app/goods/3585225?loc=goods_rank">[오정규 PICK] (덕 다운) 코듀로이 헤링턴 다운 점퍼 </a> <br> <a>  169,000원</a></td>
                <td>2</td>
                <td><img src="../asset/msum_week/2.jpg" alt="" srcset=""> <br><a href="https://www.musinsa.com/app/goods/3671136?loc=goods_rank">  라이트 쉘 패디드 자켓_블랙 </a><br> <a>   174,900원</a></td>
                <td>3</td>
                <td> <img src="../asset/msum_week/3.jpg" alt="" srcset=""> <br> <a href="https://www.musinsa.com/app/goods/3481219?loc=goods_rank"> 벨란디 캐시미어 블렌드 발마칸 코트 (블랙)</a> <br><a>  355,000원</a></td>
                <td>4</td>
                <td><img src="../asset/msum_week/4.jpg"><br><a href="https://www.musinsa.com/app/goods/3469210?loc=goods_rank"> 원턱 파라슈트 카고 데님팬츠_그레이</a><br><a>   47,000원</a></td>
            </tr>
            
            <tr>
                <td>5</td>
                <td><img src="../asset/msum_week/5.jpg"><br><a href="https://www.musinsa.com/app/goods/3405529?loc=goods_rank">[깡스타일리스트 컬래버] 캐시미어 블렌드 맥시 발마칸 코트 [블랙] </a><br><a>  269,900원</a></td>
                <td>6</td><br>
                <td><img src="../asset/msum_week/6.jpg"><br><a href="https://www.musinsa.com/app/goods/3603247?loc=goods_rank">[아우터 프레젠테이션] 더플 후드 패딩_카키</a><br><a>  129,000원</a></td>
                <td>7</td><br>
                <td><img src="../asset/msum_week/7.jpg"><br><a href="https://www.musinsa.com/app/goods/3470403?loc=goods_rank">프로텍트쉘™ 코어 패딩 자켓(4colors) </a><br><a>  89,900원</a></td>
                <td>8</td><br>
                <td><img src="../asset/msum_week/8.jpg"><br><a href="https://www.musinsa.com/app/goods/3378514?loc=goods_rank"> 데일리 푸퍼 숏 패딩 재킷 [블랙]</a><br><a>   69,900원</a></td>
            </tr>
            <tr>
                <td>9</td>
                <td><img src="../asset/msum_week/9.jpg"><br><a href="https://www.musinsa.com/app/goods/3449015?loc=goods_rank">[2PACK] 이지 케어 워셔블 니트 패키지</a><br><a>  118,000원</a></td>
                <td>10</td>
                <td><img src="../asset/msum_week/10.jpg"><br><a href="https://www.musinsa.com/app/goods/3469210?loc=goods_rank">  OVERSIZED CASHMERE BALMACAAN COAT NAVY </a><br><a>  329,000원</a></td>
                <td>11</td>
                <td><img src="../asset/msum_week/11.jpg"><br><a href="https://www.musinsa.com/app/goods/3633441?loc=goods_rank">아식스 X 언어펙티드 젤-카야노 14 - 브라이트 화이트:제트 블랙 / 1201A922-100</a><br><a>  229,000원</a></td>
                <td>12</td>
                <td><img src="../asset/msum_week/12.jpg"><br><a href="https://www.musinsa.com/app/goods/3495320?loc=goods_rank"> [2PACK] 스테디 니트 패키지</a><br><a>  118,000원</a></td>
            </tr>
            <tr>
                <td>13</td>
                <td><img src="../asset/msum_week/13.jpg"><br><a href="https://www.musinsa.com/app/goods/3671138?loc=goods_rank"> 라이트 쉘 패디드 자켓_차콜</a><br><a>  174,900원</a></td>
                <td>14</td>
                <td><img src="../asset/msum_week/14.jpg"><br><a href="https://www.musinsa.com/app/goods/3530903?loc=goods_rank"> 젤-퀀텀 키네틱 - 카본:퓨어 골드 / 1203A270-021</a><br><a>  299,000원</a></td>
                <td>15</td>
                <td><img src="../asset/msum_week/15.jpg"><br><a href="https://www.musinsa.com/app/goods/3438287?loc=goods_rank"> 울 카라 집업 블루종 자켓 [BLACK] </a><br><a>  208,000원</a></td>
                <td>16</td>
                <td><img src="../asset/msum_week/16.jpg"><br><a href="https://www.musinsa.com/app/goods/3453194?loc=goods_rank">  버핑레더 디바이드 바이커 자켓_Suede Brown</a><br><a> 113,000원</a></td>
            </tr>
            <tr>
                <td>17</td>
                <td><img src="../asset/msum_week/17.jpg"><br><a href="https://www.musinsa.com/app/goods/3290281?loc=goods_rank"> 버뮤다 - 핑크 / GY7386 </a><br><a> 139,900원  </a></td>
                <td>18</td>
                <td><img src="../asset/msum_week/18.jpg"><br><a href="https://www.musinsa.com/app/goods/3583487?loc=goods_rank"> 워터 리펠런트 구스다운 점퍼 (블랙)</a><br><a>  338,000원</a></td>
                <td>19</td>
                <td><img src="../asset/msum_week/19.jpg"><br><a href="https://www.musinsa.com/app/goods/3390511?loc=goods_rank">  87-STAN009 [비건 스웨이드] 스탠다드 블루종 스웨이드 자켓 카키 </a><br><a>   133,000원</a></td>
                <td>20</td>
                <td><img src="../asset/msum_week/20.jpg"><br><a href="https://www.musinsa.com/app/goods/3397889?loc=goods_rank"> [깡스타일리스트 컬래버] 캐시미어 블렌드 맥시 더블 로브 코트 [블랙]</a><br><a> 209,900원</a></td>
            </tr>
            </tr>
            
        </table>
        </table>
        
        <div id="low">
            <img id="lowb1"  src="../asset/lowbener/1.png" alt="" srcset="">
            <img id="lowb2" src="../asset/lowbener/2.png" alt="" srcset="">
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
    