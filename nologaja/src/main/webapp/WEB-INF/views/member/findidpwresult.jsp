<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="../header.jsp"%>

<!-- 메인내용 -->

<div style="text-align: center">
	<h3>*ID/PW 찾기 결과*</h3>

	<div align="center">
		<div>${msg1 }</div>
	</div>
	
	<div>${msg2 }</div>
	

	<hr>
	<a href="javascript:history.back()">[다시찾기]</a> 
	<a href="javascript:window.close()">[창닫기]</a>
</div>


<%@ include file="../footer.jsp"%>