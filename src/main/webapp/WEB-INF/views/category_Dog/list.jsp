<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="list" items="${ PanList }">

<div id="rowArea" class="listrow" >
	<span>${ list.num }</span>
	<span>${ list.title }</span>
	<span>${ list.content }</span>
</div>
	
</c:forEach>

