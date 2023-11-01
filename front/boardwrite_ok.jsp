<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*, java.util.*"%>
<%@ page import="com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
    <%request.setCharacterEncoding("utf-8"); %>
<%@ page import="javax.servlet.*, javax.servlet.http.*" %>
<%
//단계1
Class.forName("com.mysql.jdbc.Driver");
//단계2
Connection conn = null;
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","root");
PreparedStatement pstmt = null;
ResultSet rs = null;

	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String contents = request.getParameter("contents");
	
	String strSQL = "select ifnull(max(num),0)from boardB";
	pstmt = conn.prepareStatement(strSQL);
	rs = pstmt.executeQuery();
	rs.next();
	
	int maxnum = rs.getInt(1) + 1;
	
	strSQL ="INSERT INTO boardB(num,mgrp,mseq,mlvl,title,contents,writer,writedtm,updatedtm,readcnt) VALUES(?,?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(strSQL);
	
	Calendar dateIn = Calendar.getInstance();
	String today = Integer.toString(dateIn.get(Calendar.YEAR))+"-";
	today += ("00"+Integer.toString(dateIn.get(Calendar.MONTH)+ 1)).substring(("00"+Integer.toString(dateIn.get(Calendar.MONTH)+ 1)).length()-2)+"-";
	today += ("00"+Integer.toString(dateIn.get(Calendar.DATE))).substring(("00"+Integer.toString(dateIn.get(Calendar.DATE))).length()-2)+" ";
	today += Integer.toString(dateIn.get(Calendar.HOUR_OF_DAY)) + ":";
	today += Integer.toString(dateIn.get(Calendar.MINUTE));
	pstmt.setInt(1, maxnum);
	pstmt.setInt(2, maxnum);
	pstmt.setInt(3, 0);
	pstmt.setInt(4, 0);
	pstmt.setString(5, title);
	pstmt.setString(6, contents);
	pstmt.setString(7, writer);
	pstmt.setString(8, today);
	pstmt.setString(9, today);
	pstmt.setInt(10, 0);
	pstmt.executeUpdate();
	response.sendRedirect("boardPage.jsp");
%>