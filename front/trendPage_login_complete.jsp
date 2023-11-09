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
            <h1>musinsa top10</h1>
            
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
    <br>
        <h1> 무신사 전체 베스트 </h1>
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
    
    <table class="chart-table">
            <caption>이달 인기상품</caption>    
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
                <td> <img src="../asset/sum/1.jpg" alt="" srcset=""> <br> <a href="https://www.musinsa.com/app/goods/2108160?loc=goods_rank">베이직 퍼플라스 집업</a> <br> <a> 29,900원</a></td>
                <td>2</td>
                <td><img src="../asset/sum/2.jpg" alt="" srcset=""> <br><a href="https://www.musinsa.com/app/goods/1551840?loc=goods_rank">Deep One Tuck Sweat Pants [Grey]</a><br> <a> 39,000원</a></td>
                <td>3</td>
                <td> <img src="../asset/sum/3.jpg" alt="" srcset=""> <br> <a href="https://www.musinsa.com/app/goods/3290281?loc=goods_rank">버뮤다 - 핑크 / GY7386</a> <br><a> 139,000원</a></td>
                <td>4</td>
                <td><img src="../asset/sum/4.jpg"><br><a href="https://www.musinsa.com/app/goods/2112059?loc=goods_rank">원턱 와이드 스웨트팬츠 그레이</a><br><a> 52,000원</a></td>
            </tr>
            
            <tr>
                <td>5</td>
                <td><img src="../asset/sum/5.jpg"><br><a href="https://www.musinsa.com/app/goods/2037173?loc=goods_rank">베이직 푸퍼_SPJPD4TC11</a><br><a> 69,900원</a></td>
                <td>6</td><br>
                <td><img src="../asset/sum/6.jpg"><br><a href="https://www.musinsa.com/app/goods/1778404?loc=goods_rank">2WAY 스웻 후드 집업 (MELANGE GREY)</a><br><a> 45,000원</a></td>
                <td>7</td><br>
                <td><img src="../asset/sum/7.jpg"><br><a href="https://www.musinsa.com/app/goods/3633441?loc=goods_rank">아식스 X 언어펙티드 젤-카야노 14 - 브라이트 화이트:제트 블랙</a><br><a> 239,000원</a></td>
                <td>8</td><br>
                <td><img src="../asset/sum/8.jpg"><br><a href="https://www.musinsa.com/app/goods/2545799?loc=goods_rank">슈퍼스타 82 - 블랙</a><br><a> 149,000원</a></td>
            </tr>
            <tr>
                <td>9</td>
                <td><img src="../asset/sum/9.jpg"><br><a href="https://www.musinsa.com/app/goods/1576700?loc=goods_rank">오버핏 비건레더 싱글 자켓</a><br><a> 129,900원</a></td>
                <td>10</td>
                <td><img src="../asset/sum/10.jpg"><br><a href="https://www.musinsa.com/app/goods/1149329?loc=goods_rank">세미 와이드 히든 밴딩 슬랙스 [블랙]</a><br><a> 39,900원</a></td>
                <td>11</td>
                <td><img src="../asset/sum/11.jpg"><br><a href="https://www.musinsa.com/app/goods/3391590?loc=goods_rank">라이트 자켓_SPJPD4TC01</a><br><a> 59,900원</a></td>
                <td>12</td>
                <td><img src="../asset/sum/12.jpg"><br><a href="https://www.musinsa.com/app/goods/1168906?loc=goods_rank">와이드 히든 밴딩 슬랙스 [블랙]</a><br><a> 41,900원</a></td>
            </tr>
            <tr>
                <td>13</td>
                <td><img src="../asset/sum/13.jpg"><br><a href="https://www.musinsa.com/app/goods/1622069?loc=goods_rank">슈퍼스타 - 블랙:화이트 / EG4959</a><br><a> 139,900원</a></td>
                <td>14</td>
                <td><img src="../asset/sum/14.jpg"><br><a href="https://www.musinsa.com/app/goods/2092852?loc=goods_rank">이지 와이드 데님 팬츠 그레이</a><br><a> 52,800원</a></td>
                <td>15</td>
                <td><img src="../asset/sum/15.jpg"><br><a href="https://www.musinsa.com/app/goods/1558197?loc=goods_rank">릴렉스드 베이식 블레이저 [블랙]</a><br><a> 81,900원</a></td>
                <td>16</td>
                <td><img src="../asset/sum/16.jpg"><br><a href="https://www.musinsa.com/app/goods/2086653?loc=goods_rank">레이어드 크루 넥 반팔 티셔츠_일반 기장 [화이트]</a><br><a> 16,900원</a></td>
            </tr>
            <tr>
                <td>17</td>
                <td><img src="../asset/sum/17.jpg"><br><a href="https://www.musinsa.com/app/goods/2704962?loc=goods_rank">WARM+ UP QUILTING JACKET BLACK</a><br><a> 99,900원</a></td>
                <td>18</td>
                <td><img src="../asset/sum/18.jpg"><br><a href="https://www.musinsa.com/app/goods/2112061?loc=goods_rank">원턱 와이드 스웨트팬츠 블랙</a><br><a> 52,900원</a></td>
                <td>19</td>
                <td><img src="../asset/sum/19.jpg"><br><a href="https://www.musinsa.com/app/goods/1551839?loc=goods_rank">Deep One Tuck Sweat Pants [Black]</a><br><a> 39,000원</a></td>
                <td>20</td>
                <td><img src="../asset/sum/20.jpg"><br><a href="https://www.musinsa.com/app/goods/2700048?loc=goods_rank">우먼즈 캐시미어 블렌드 발마칸 로브 코트 [블랙]</a><br><a> 209,900원</a></td>
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