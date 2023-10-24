
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.naver.developers.refactoring.datalabtrend.NaverDataLabAPI, java.util.Map" %>

<%
    String clientId = "wSKYIe_Ig7zSDiLcY5nz"; // 애플리케이션 클라이언트 아이디
    String clientSecret = "FpsFhML030"; // 애플리케이션 클라이언트 시크릿

    String apiUrl = "https://openapi.naver.com/v1/datalab/shopping/categories";

    Map<String, String> requestHeaders = new HashMap<>();
    requestHeaders.put("X-Naver-Client-Id", clientId);
    requestHeaders.put("X-Naver-Client-Secret", clientSecret);
    requestHeaders.put("Content-Type", "application/json");

    String requestBody = "{\"startDate\":\"2017-08-01\"," +
            "\"endDate\":\"2017-09-30\"," +
            "\"timeUnit\":\"month\"," +
            "\"category\":[{\"name\":\"패션의류\",\"param\":[\"50000000\"]}," +
                          "{\"name\":\"화장품/미용\",\"param\":[\"50000002\"]}]," +
            "\"device\":\"pc\"," +
            "\"ages\":[\"20\",\"30\"]," +
            "\"gender\":\"f\"}";

    // NaverDataLabAPI 클래스의 post 메서드를 호출합니다.
    String responseBody = NaverDataLabAPI.post(apiUrl, requestHeaders, requestBody);

    // responseBody를 사용하여 원하는 방식으로 표시 또는 처리할 수 있습니다.
%>
