<!DOCTYPE html>
<html lang="ko">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title> Main Page</title>

    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="../front/css/veslab_style.css">
    <script src="/back/LoginAndLogout/logout_jsp.js"></script>

</head>

<script>
  
  function getUserID() {
     
   const userNickname = sessionStorage.getItem("nickname")
   
   return userNickname ? userNickname : ""; 
//dsd

}

window.onload = function () {

   const userNickname = getUserID();

   if (userNickname) {
       const userMenu = document.getElementById("userMenu");
       const anchor = userMenu.querySelector("a");
       anchor.textContent = `${userNickname}ë`;
   }
};

</script>



<body>

  
  <header>
      <div class="inner">
          <h1>CLOTHES SHOPPING Trend</h1>
      
          <ul id="gnb">
              <li><a href="#"  onclick="location.href='C:\jsp\test2\src\main\webapp\jcp\back\NaverShowppingLab.ShowTrendLab.jsp'">trend</a></li>
              <!-- <li><a href="#">ì¼í</a></li> -->
              <li id="recommendBoard"><a href="#">ì¶ì²ê²ìí</a></li>
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
    let currentIndex = 0; // íì¬ ì´ë¯¸ì§ ì¸ë±ì¤
    
    function updateSlider() {

        currentIndex = (currentIndex + 1) % img.length;
    
        const currentImg = img[currentIndex];
    
        bgImage.src = "/asset/clothImg/" + currentImg;
    }
    
    // ì´ë¯¸ì§ ìì ìì±
    const bgImage = document.createElement("img");
    
    // ì¬ë¼ì´ë ì»¨íì´ë ìì ê°ì ¸ì¤ê¸°
    const sliderContainer = document.querySelector(".slider-container");
    
    // ì¬ë¼ì´ë ìì ê°ì ¸ì¤ê¸°
    const slider = sliderContainer.querySelector(".slider");
    
    // ì´ë¯¸ì§ ììë¥¼ ì¬ë¼ì´ëì ì¶ê°
    slider.appendChild(bgImage);
    
    // ì¬ë¼ì´ë ì»¨íì´ëì ì¬ë¼ì´ëë¥¼ ì¶ê°
    document.body.appendChild(sliderContainer);
    
    // 2ì´ë§ë¤ ì¬ë¼ì´ë ìë°ì´í¸
    setInterval(updateSlider, 2000);
    
    
</script>


<section>
    <div class="page-container">
       <div class="section">
           <div class="recommendation-title"> <h1>ë¬´ì ì¬ ë¨ì± ê°ì</h1></div>
                <div class="product-container">
                    <div class="product">
                        <img src="/asset/testimg/test_men1.jpg" alt="1ë²ì§¸ ì½íì¸  ì´ë¯¸ì§">
                        <a href="https://www.musinsa.com/app/goods/2723764?loc=goods_rank">
                        <h2 class="title">íì° ì¹´ë¼ í¬ì¨ì´ ì§ì ëí¸</h2>
                        </a>
                        <p class="description">
                            - ììë¸ ê°ë¥í ìì¬ ì¬ì©   <br>
                            - ììë  ë¡ê³  ì¬ì©í í¸í¨<br>
                            - íì´íë¦¬í° í¸ì§ ëíì¼
                        </p>
                       
                    </div>
                    <div class="product">
                        <img src="/asset/testimg/test_men2.jpg" alt="2ë²ì§¸ ì½íì¸  ì´ë¯¸ì§">
                        <a href="https://www.musinsa.com/app/goods/1551840?loc=goods_rank">
                        <h2 class="title">Deep One Tuck Sweat Pants</h2>
                        </a>
                        <p class="description">
                            - êµ­ë´ë°© 35ì ì½ë§ì¬ ì¬ì©   <br>
                            - ê¸°ì¡´ ì¬ë¦ì© ìë¨ë³´ë¤ ìì<br>
                            - ë³´ì¨ì±ì ëì¸ ìë¨ì ì¬ì©
                        </p>
                    </div>
                    <div class="product">
                        <img src="/asset/testimg/test_men3.jpg" alt="3ë²ì§¸ ì½íì¸  ì´ë¯¸ì§">
                        <a href="https://www.musinsa.com/app/goods/2043056?loc=goods_rank">
                        <h2 class="title">CGP ìì¹ ë¡ê³  í¸ë ì´ë ìì_ë¤ì´ë¹</h2>
                        </a>
                        <p class="description">
                            - ë¯¸ì§ê·¼í ë¬¼ì ì¤ì±ì¸ì    <br>
                            - ê¸°ê³ ê±´ì¡° ì¬ì©ì ìì<br>
                            - ê³ ì¨ ì¸í ë° ì©í´ì¡°ì¬
                        </p>
                    </div>
                    <div class="product">
                        <img src="/asset/testimg/test_men4.jpg" alt="4ë²ì§¸ ì½íì¸  ì´ë¯¸ì§">
                        <a href="https://www.musinsa.com/app/goods/1778404?loc=goods_rank">
                        <h2 class="title">ì¤ì» íë ì§ì</h2>
                        </a>
                        <p class="description">
                            - ë³íì´ ì ê³  ííí ìë¨   <br>
                            - ì¤ë²íì¼ë¡ í¸ìí ì°©ì©<br>
                            - ë¨í ë° ì´ëë¡ íì© ê°ë¥
                        </p>
                    </div>
                    <div class="product">
                        <img src="/asset/testimg/test_men5.jpg" alt="5ë²ì§¸ ì½íì¸  ì´ë¯¸ì§">
                        <a href="https://www.musinsa.com/app/goods/2996544?loc=goods_rank">
                        <h2 class="title">ì¬ë°ì´ ë¼ì´ë ëí¸</h2>
                        </a>
                        <p class="description">
                            - ììë¸ ê°ë¥í ìì¬ ì¬ì©   <br>
                            - ì¬ì¬ì íì´íë¦¬í° í¸ì§<br>
                            - SPANì¬ë¥¼ ëí´ ì¡ìì¤
                        </p>
                    </div>
                </div>
            </div>
   </section>

    <section>
       <div class="page-container">
            <div class="section">
                <div class="recommendation-title"><h1>ë¬´ì ì¬ ì¬ì± ê°ì</h1></div>
                    <div class="product-container">
                        <div class="product">
                            <img src="/asset/testimg/test_women1.jpg" alt="1ë²ì¨° ì½íì¸  ì´ë¯¸ì§">
                            <a href="https://www.musinsa.com/app/goods/1618312?loc=goods_rank">
                            <h2 class="title"> ì°ë¨¼ì¦ ì¤ë²ì¬ì´ì¦ ë¸ë ì´ì  </h2>
                            </a>
                            <p class="description">
                                - ìëª¨ì§ë¬¼ì ì¬ì©   <br>
                                - ìë£ì¼ ìì¡ì ì²¨ê°<br>
                                - ëì  ë°©ì§ ê°ê³µ
                            </p>
                        </div>
                        <div class="product">    
                            <img src="/asset/testimg/test_women2.jpg" alt="2ë²ì¨° ì½íì¸  ì´ë¯¸ì§">
                            <a href="https://www.musinsa.com/app/goods/3124490?loc=goods_rank">
                            <h2 class="title">íë¡ í¸ ìì± ìì´ë ë°ë í¬ì¸ </h2>
                            </a>
                            <p class="description">
                                - ììë¸ ê°ë¥í ìì¬ ì¬ì©   <br>
                                - ì¬ì¬ì íì´íë¦¬í° í¸ì§<br>
                                - SPANì¬ë¥¼ ëí´ ì¡ìì¤</p>
                        </div>
                        <div class="product">
                            <img src="/asset/testimg/test_women3.jpg" alt="3ë²ì¨° ì½íì¸  ì´ë¯¸ì§">
                            <a href="https://www.musinsa.com/app/goods/3223947?loc=goods_rank">
                            <h2 class="title"> ìí± ìì´ë ì¤ì¨í¸ í¬ì¸ </h2>
                            </a>
                            <p class="description">
                                - ìëª¨ì§ë¬¼ì ì¬ì©   <br>
                                - ìë£ì¼ ìì¡ì ì²¨ê°<br>
                                - ëì  ë°©ì§ ê°ê³µ</p>
                        </div>
                        <div class="product">    
                            <img src="/asset/testimg/test_women4.jpg" alt="4ë²ì¨° ì½íì¸  ì´ë¯¸ì§">
                            <a href="https://www.musinsa.com/app/goods/2718414?loc=goods_rank">
                            <h2 class="title">íì¤ ì½í¼ ì¬ ë°ì´ íë ì§ì ë©ëì§ ìì´ë³´ë¦¬</h2>
                            </a>
                            <p class="description">
                                - ë¯¸ì§ê·¼í ë¬¼ì ì¤ì±ì¸ì    <br>
                                - ê¸°ê³ ê±´ì¡° ì¬ì©ì ìì<br>
                                - ê³ ì¨ ì¸í ë° ì©í´ì¡°ì¬</p>
                        </div>
                        <div class="product">
                            <img src="/asset/testimg/test_women5.jpg" alt= "5ë²ì¨° ì½íì¸  ì´ë¯¸ì§">
                            <a href="https://www.musinsa.com/app/goods/2874755?loc=goods_rank">
                            <h2 class="title">Sac de Velo Mini </h2>
                            </a>
                            <p class="description">
                                - ë¯¸ì§ê·¼í ë¬¼ì ì¤ì±ì¸ì    <br>
                                - ê¸°ê³ ê±´ì¡° ì¬ì©ì ìì<br>
                                - ê³ ì¨ ì¸í ë° ì©í´ì¡°ì¬</p>
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


