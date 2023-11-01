<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*, java.util.*" %>
    <% request.setCharacterEncoding("utf-8"); %>
  <%
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn = null;
  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","root");
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  try{
	int num = Integer.parseInt(request.getParameter("pnum"));
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String contents = request.getParameter("contents");	
	String sql = "select * from boardb where num = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, num);
	rs = pstmt.executeQuery();
	rs.next();
	
	int mgrp = rs.getInt("mgrp");
	int mlvl = rs.getInt("mlvl");
	int mseq = rs.getInt("mseq");
	
	int new_mlvl = mlvl + 1;	//답변글의 계층
	int new_mseq = mseq + 1;	//답변글의 순서
	
	Calendar dateIn = Calendar.getInstance();
	String today = Integer.toString(dateIn.get(Calendar.YEAR))+"-";
	today += ("00"+Integer.toString(dateIn.get(Calendar.MONTH)+ 1)).substring(("00"+Integer.toString(dateIn.get(Calendar.MONTH)+ 1)).length()-2)+"-";
	today += ("00"+Integer.toString(dateIn.get(Calendar.DATE))).substring(("00"+Integer.toString(dateIn.get(Calendar.DATE))).length()-2)+" ";
	today += Integer.toString(dateIn.get(Calendar.HOUR_OF_DAY)) + ":";
	today += Integer.toString(dateIn.get(Calendar.MINUTE)); 
	
	//답변글의 게시 순서 조정
	sql = "update boardb set mseq = mseq + 1 where mgrp = " + mgrp;
	sql = sql +	" and mseq > " + mseq;   
 	
	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	
	sql = "select ifnull(max(num), 0) from boardb";
	pstmt = conn.prepareStatement(sql);
 	rs = pstmt.executeQuery();
 	rs.next();
 	int maxnum = rs.getInt(1) + 1;
 	
 	sql = "insert into boardb (num, mgrp, mseq, mlvl, writer, title, contents, writedtm, updatedtm, readcnt)";
 	sql = sql + " values (?,?,?,?,?,?,?,?,?,?)";
 	pstmt = conn.prepareStatement(sql);
 	pstmt.setInt(1,maxnum);
  	pstmt.setInt(2, mgrp);
  	pstmt.setInt(3, new_mseq);
  	pstmt.setInt(4, new_mlvl);
  	pstmt.setString(5, writer);
  	pstmt.setString(6, title);
  	pstmt.setString(7, contents);
  	pstmt.setString(8, today);
  	pstmt.setString(9, today);
  	pstmt.setInt(10, 0);
  	pstmt.executeUpdate();
  }
  catch(SQLException e){
	  out.print(e.getMessage());
  }
  finally{
	  if(pstmt != null) pstmt.close();
	  if(rs != null) rs.close();
	  if(conn != null) conn.close();
	  response.sendRedirect("boardPage.jsp");
  }
  %>