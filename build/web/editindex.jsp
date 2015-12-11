<%-- 
    Document   : editindex
    Created on : Dec 10, 2015, 3:50:16 PM
    Author     : Justin
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%  
String brand = request.getParameter("brand");
String navlink1 = request.getParameter("navlink1");
String navlink2 = request.getParameter("navlink3");
String navlink3 = request.getParameter("navlink3");
String name = request.getParameter("name");
String skill1 = request.getParameter("skill1");
String skill2 = request.getParameter("skill2");
String skill3 = request.getParameter("skill3");
String portfolio = request.getParameter("portfolio");
String about = request.getParameter("about");
String aboutinfo = request.getParameter("aboutinfo");
String aboutinfo2 = request.getParameter("aboutinfo2");
String about_button = request.getParameter("about_button");
String footsec1 = request.getParameter("footsec1");
String footdec1 = request.getParameter("footdec1");
String footsec2 = request.getParameter("footsec2");
String footsec3 = request.getParameter("footsec3");
String footdec3 = request.getParameter("footdec3");
String copy = request.getParameter("copy");
%>
 <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/jstreetcms"
     user="root"  password=""/>
 <sql:update dataSource="${snapshot}" var="result">
UPDATE content SET brand = "<%=brand %>", navlink1 = "<%=navlink1 %>", navlink2 = "<%=navlink2 %>", navlink3 = "<%=navlink3 %>", name = "<%=name %>", skill1 = "<%=skill1 %>", skill2 = "<%=skill2 %>", skill3 = "<%=skill3 %>", portfolio = "<%=portfolio %>", about = "<%=about %>", aboutinfo = "<%=aboutinfo %>", aboutinfo2 = "<%=aboutinfo2 %>", about_button = "<%=about_button %>", footsec1 = "<%=footsec1 %>", footdec1 = "<%=footdec1 %>", footsec2 = "<%=footsec2 %>", footsec3 = "<%=footsec3 %>", footdec3 = "<%=footdec3 %>", copy = "<%=copy %>" WHERE id = "2" ;
</sql:update>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

   

        <script>window.location = 'index.jsp'; </script>
