<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<jsp:directive.include file="/templates/header.jsp"/>
<jsp:directive.include file="/templates/includes.jsp"/>


<h2><fmt:message key="importEnrollment" /></h2>
<div class="instruction"><fmt:message key="msg_importStudents" /></div>
<form action="courseStuSave.htm" method="POST"  enctype="multipart/form-data">
	<input type="hidden" name="siteId" value="${site.id }" />
	<input type="hidden" name="courseEid" value="${courseEid }" />
	 <table class="itemSummary">
	 	<tr>
            <th><label for="id"><fmt:message key="course" />：</label></th>
            <td>${site.title }</td>
        </tr>
        <tr>
           <th><label for="file"><fmt:message key="file" />：</label></th>
            <td><input type="file" id="fileUpload" name="fileUpload" /></td>
        </tr>
        <tr>
           <th><label for="studentTemplate"><fmt:message key="studentTemplate" />：</label></th>
            <td><a href="download.htm?fileName=students.txt">students.txt</a></td>
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

