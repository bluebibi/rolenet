<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Contact Manager</h2>

	<form:form method="POST" action="addContact.do">
		<table>
			<tr>
				<td><form:label path="utitle">title</form:label></td>
				<td><form:input path="utitle"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="ucontent">title</form:label></td>
				<td><form:input path="ucontent"></form:input></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add contact" /></td>
			</tr>

		</table>
	</form:form>
</body>
</html>