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
    <title> Main Page</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="./css/veslab_style.css">
    <script src="/back/LoginAndLogout/logout.js"></script>

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
<%
String in_search_key = request.getParameter("search_key");
String in_search_value = request.getParameter("search_value");
if (in_search_key == null) in_search_key="";
if (in_search_value == null) in_search_value="";
%>

  
  <header>
      <div class="inner">
          <h1>CLOTHES SHOPPING Trend</h1>
      
          <ul id="gnb">
              <li><a href="#">지금 트랜드</a></li>
              <!-- <li><a href="#"  onclick="location.href='C:\jsp\test2\src\main\webapp\jcp\back\NaverShowppingLab.ShowTrendLab.jsp'">trend</a></li> -->
              
              <!-- <li><a href="#">쇼핑</a></li> -->
              <li id="recommendBoard"><a href="#">추천게시판</a></li>
              
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


<h3>공지사항 리스트</h3>
<form name="form1" action="boardBlist.jsp" method="post">
<select name="search_key">
<option value="title">제목</option>
<option value="title">작성자</option>
</select>
<input type="text" name="search_value" value=<%=in_search_value %>>
<input type="submit" value="검색">

<br><br>
<table border="1" cellspacing="1" cellpadding="2" width="700">
<thead>
<tr>
<th width="5%">번호</th>
<th width="*">제목</th>
<th width="13%">작성자</th>
<th width="20%">등록일</th>
<th width="25%">조회수</th>

</tr>
</thead>
<%
String strPageNum = request.getParameter("PageNum");
if(strPageNum == null){
   strPageNum = "1";
}
int currentPage = Integer.parseInt(strPageNum);
out.print(currentPage + "****");
//단계1
Class.forName("com.mysql.jdbc.Driver");
//단계2
Connection conn = null;
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","root");
ResultSet rs, rs1 = null;
Statement stmt = null;
String sql = "select count(*) from boardB";
stmt = conn.createStatement();
rs = stmt.executeQuery(sql);
rs.next();
int totalRecords = 0;
int pageSize = 3; 
totalRecords = rs.getInt(1);
if(rs.getInt(1)==0){
   %>
<tr>
<td colspan="5">등록된 공지사항이 없습니다</td>
<%
}
else{
   int i= totalRecords;
   sql = "select * from boardB";
   if (in_search_value.equals("")== false){
      sql = sql + " where "+in_search_key+" like '%"+in_search_value+"%'";
   }
   sql += " order by mgrp desc , mseq asc limit ";
   sql += (currentPage -1) * pageSize+ " , "+ pageSize;
   stmt = conn.createStatement();
   rs1 = stmt.executeQuery(sql);
   int pageSize_temp = pageSize;
   while (rs1.next() && pageSize_temp > 0){
      int num = rs1.getInt("num");
      String title = rs1.getString("title");
      String writer = rs1.getString("writer");
      String writedtm = rs1.getString("writedtm");
      int readcnt = rs1.getInt("readcnt");
      %>
<tr>
<td><a href="boardBview.jsp?pnum=<%=num%>"><%=num%></a></td>
<td><a href="boardBview.jsp?pnum=<%=num%>"><%=title %></a></td>
<td><%=writer %></td>
<td><%=writedtm %></td>
<td><%=readcnt %></td>
</tr>
<%
   pageSize_temp -= 1;
    i--;
   }//while
}//else
%>

</table>
<br><br>
<%
int intTotPages = 0;
int intR = totalRecords % pageSize;
if (intR == 0){
   intTotPages = totalRecords / pageSize;
}
else {
   intTotPages = totalRecords / pageSize + 1;
} 
int intGrpSize = 5;
int currentGrp = 1;

currentGrp = currentPage % intGrpSize;

if(currentGrp == 0){
   currentGrp = currentPage / intGrpSize;
}

else{
	currentGrp = currentPage / intGrpSize + 1;
} 

int intGrpStartPage = (currentGrp - 1) * intGrpSize + 1;

int intGrpEndPage = currentGrp * intGrpSize; 
if(intGrpEndPage > intTotPages){
   intGrpEndPage = intTotPages;
}

   if(currentGrp > 1) {
      %>
      [<a href="boardBlist.jsp?PageNum=<%=intGrpStartPage - 1  %>">이전</a>]
   <% 
   }

   int intGrpPageCount = intGrpSize; //그룹당 페이지수
   int intIndex = intGrpStartPage; // 현그룹의 시작 페이지
   
   while(intGrpPageCount > 0 && intIndex <=intGrpEndPage){
      %>
      [<a href="boardBlist.jsp?PageNum=<%=intIndex  %>"><%=intIndex %></a>]&nbsp;
   <% 
   intIndex += 1;
   intGrpPageCount -= 1;
   }
   
   if(intIndex <= intTotPages) {
      %>
      [<a href="boardBlist.jsp?PageNum=<%=intIndex %>">다음</a>]&nbsp;
      <% 	
   }
%>
</form>
<form name="form2" action="boardBwrite.jsp" method="post">
<input type="submit" value="새글쓰기">
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


