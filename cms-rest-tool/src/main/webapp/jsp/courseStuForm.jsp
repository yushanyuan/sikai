<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<jsp:directive.include file="/templates/header.jsp"/>
<jsp:directive.include file="/templates/includes.jsp"/>


<h2>上传选课学生</h2>
 
<form action="courseStuSave.htm" method="POST"  enctype="multipart/form-data">
	<input type="hidden" name="siteId" value="${site.id }" />
	<input type="hidden" name="courseEid" value="${courseEid }" />
	 <table class="itemSummary">
	 	<tr>
            <th><label for="id">课程站点：</label></th>
            <td>${site.title }</td>
        </tr>
        <tr>
           <th><label for="file">csv 文件：</label></th>
            <td><input type="file" id="fileUpload" name="fileUpload" /></td>
        </tr>
      
        <tr>
            <td colspan=2>
                <input type="reset" />
                <input type="submit" value="提交"/>
            </td>
        </tr>
    </table>
</form>

<jsp:directive.include file="/templates/footer.jsp"/>

