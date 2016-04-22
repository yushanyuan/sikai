<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<jsp:directive.include file="/templates/header.jsp"/>
<jsp:directive.include file="/templates/includes.jsp"/>

<c:if test="${!empty alertMesage}">
	<div class="alertMessage">${ alertMesage}</div>
</c:if>
<h2>选课学生列表</h2>
<ul id="actionToolBar" class="navIntraTool actionToolBar">
	<li class="firstToolBarItem"><span><a href="courseStuAdd.htm?courseEid=${courseEid }">导入选课学生</a></span></li>
</ul>
<table  class="listHier lines nolines">
	<tr><th>序号</th><th>名</th><th>姓</th></tr>
	<tr>
		<td>
		<c:forEach items="${userList }" var="u" varStatus="index">
			<tr><td>${index.index+1 }</td><td>${u.firstName }</td><td>${u.lastName }</td>
			</tr>
		</c:forEach>
		</td>
	</tr>
</table>

 
<jsp:directive.include file="/templates/footer.jsp"/>

