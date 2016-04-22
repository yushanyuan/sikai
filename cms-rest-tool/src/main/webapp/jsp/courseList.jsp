<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<jsp:directive.include file="/templates/header.jsp"/>
<jsp:directive.include file="/templates/includes.jsp"/>

<c:if test="${!empty alertMesage}">
	<div class="alertMessage">${ alertMesage}</div>
</c:if>
<h2>课程站点列表</h2>
<ul id="actionToolBar" class="navIntraTool actionToolBar">
	<li class="firstToolBarItem"><span><a href="courseAdd.htm?courseSetEid=${courseSetEid }">导入开课文件</a></span></li>
</ul>
<table  class="listHier lines nolines">
	<tr><th>序号</th><th>课程</th><th>查看选课学生</th><th>删除课程</th></tr>
	<tr>
		<td>
		<c:forEach items="${canonicalCourseList }" var="item" varStatus="index">
			<tr><td>${index.index+1 }</td><td>${item.title }</td><td><a href="courseStuList.htm?courseEid=${item.eid }">选课学生</a></td>
				<td><a href="courseDelete.htm?courseEid=${item.eid }&courseSetEid=${courseSetEid}">删除课程</a></td>
			</tr>
		</c:forEach>
		</td>
	</tr>
</table>

 
<jsp:directive.include file="/templates/footer.jsp"/>

