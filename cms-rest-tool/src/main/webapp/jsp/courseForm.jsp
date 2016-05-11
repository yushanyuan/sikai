<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<jsp:directive.include file="/templates/header.jsp"/>
<jsp:directive.include file="/templates/includes.jsp"/>

<h2><fmt:message key="importCourseFile" /></h2>
 
<form action="courseSave.htm" method="POST"  enctype="multipart/form-data">
	<input type="hidden" name="courseSetEid" value="${courseSetEid}" />
	 <table class="itemSummary">
	 	<tr>
            <th><label for="courseSetTitle"><fmt:message key="college" />：</label></th>
            <td>
            	 ${courseSetTitle }
            </td>
        </tr>
	 	 <tr>
            <th><label for="academicSessionEid"><fmt:message key="academic_session" />：</label></th>
            <td>
            	<select id="academicSessionEid" name="academicSessionEid">
            		<c:forEach items="${academicSessions }" var="item">
            			<option value="${item.eid }">${item.title }</option>
            		</c:forEach>
            	</select>
            </td>
        </tr>
        <tr>
           <th><label for="file"><fmt:message key="file" />：</label></th>
            <td><input type="file" id="fileUpload" name="fileUpload" /></td>
        </tr>
       <tr>
           <th><label for="courseTemplate"><fmt:message key="courseTemplate" />：</label></th>
            <td><a href="/library/cms-rest/courses.txt">courses.txt</a></td>
        </tr>
        <tr>
            <td colspan=2>
                <input type="reset" />
                <input type="submit" />
            </td>
        </tr>
    </table>
</form>

<jsp:directive.include file="/templates/footer.jsp"/>

