<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<jsp:directive.include file="/templates/header.jsp"/>
<jsp:directive.include file="/templates/includes.jsp"/>


<h2>上传开课列表</h2>
 
<form action="courseSave.htm" method="POST"  enctype="multipart/form-data">
	<input type="hidden" name="courseSetEid" value="${courseSetEid}" />
	 <table class="itemSummary">
	 	<tr>
            <th><label for="courseSetTitle">学院：</label></th>
            <td>
            	 ${courseSetTitle }
            </td>
        </tr>
	 	 <tr>
            <th><label for="academicSessionEid">学期：</label></th>
            <td>
            	<select id="academicSessionEid" name="academicSessionEid">
            		<c:forEach items="${academicSessions }" var="item">
            			<option value="${item.eid }">${item.title }</option>
            		</c:forEach>
            	</select>
            </td>
        </tr>
        <tr>
           <th><label for="file">开课文件：</label></th>
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

