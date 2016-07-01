<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<jsp:directive.include file="/templates/header.jsp"/>
<jsp:directive.include file="/templates/includes.jsp"/>

<c:if test="${!empty alertMesage}">
	<div class="alertMessage">${ alertMesage}</div>
</c:if>
<div class="page-header">
	<h2><fmt:message key="studentList" /></h2>
</div>
<ul id="actionToolBar" class="navIntraTool actionToolBar">
	<li class="firstToolBarItem"><span><a href="courseStuAdd.htm?courseEid=${courseEid }"><fmt:message key="importEnrollment" /></a></span></li>
</ul>
<table  class="listHier lines nolines">
	<tr><th><fmt:message key="id" /></th><th><fmt:message key="firstName" /></th><th><fmt:message key="lastName" /></th></tr>
		<c:forEach items="${userList }" var="u" varStatus="index">
			<tr><td>${index.index+1 }</td><td>${u.firstName }</td><td>${u.lastName }</td>
			</tr>
		</c:forEach>
</table>

 
<jsp:directive.include file="/templates/footer.jsp"/>

