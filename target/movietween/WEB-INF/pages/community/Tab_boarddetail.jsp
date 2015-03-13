<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	글번호 : ${result.uid}<br><br>
	글분류 : ${result.ugroup}<br><br>
	제목 : ${result.utitle}<br><br>
	내용 : ${result.ucontent}<br><br>
	작성자 : ${result.uauthor}<br><br>
	작성일 : ${result.udate}<br><br>

</body>
</html>