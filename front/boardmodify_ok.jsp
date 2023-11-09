<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*, java.util.*"%>
<%request.setCharacterEncoding("utf-8"); %>

<%
try{
int pnum = Integer.parseInt(request.getParameter("pnum"));


Class.forName("com.mysql.jdbc.Driver");
Connection conn = null;
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp", "root","root");
PreparedStatement pstmt = null;
String title = request.getParameter("title");
String contents = request.getParameter("contents");
Calendar dateIn = Calendar.getInstance();
String today = Integer.toString(dateIn.get(Calendar.YEAR)) + "-";
today += Integer.toString(dateIn.get(Calendar.MONTH)+1) + "-";
today += Integer.toString(dateIn.get(Calendar.DATE)) + " ";
today += Integer.toString(dateIn.get(Calendar.HOUR_OF_DAY)) + ":";
today += Integer.toString(dateIn.get(Calendar.MINUTE));

String sql="update boardb set title= ?, contents=?, updatedtm=? where num=?";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, title);
pstmt.setString(2, contents);
pstmt.setString(3, today);
pstmt.setInt(4, pnum);

pstmt.executeUpdate();
response.sendRedirect("boardPage.jsp");
}
catch(SQLException e){
out.print(e.getMessage());
}

%>