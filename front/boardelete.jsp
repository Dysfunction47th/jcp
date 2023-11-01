<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>

<%    
int pnum = Integer.parseInt(request.getParameter("pnum"));

Class.forName("com.mysql.jdbc.Driver");
Connection conn = null;
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp", "root","root");
PreparedStatement pstmt = null;
String sql = "delete  from boardb where num=?";
pstmt = conn.prepareStatement(sql);
pstmt.setInt(1, pnum);
pstmt.executeUpdate();
response.sendRedirect("boardPage.jsp");
%>