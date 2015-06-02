<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<title>무한 스크롤바 구현</title>
<style>
body {
    margin: 20px;
    font-family: "맑은 고딕";
}
h1 {
    font-weight: normal;
}
</style>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>

$(function(){

    var count=1;

    
    //$(window).scroll(function() { });
    
    //문서가 로드되면 20 row 생성 그리고 생성이 완료되면 scroll 이벤트 바인딩
    for(var i = 1; i <= 20; i++) {
        count = i;
        $("<h1>"+count+" line scroll</h1>").appendTo("body");

        if(count == 20) {
            $(window).bind("scroll",infinityScrollFunction);
        }
    }

    function infinityScrollFunction() {
    	
		if(count < 100){
        //현재문서의 높이를 구함.
        var documentHeight  = $(document).height();
        console.log("documentHeight : " + documentHeight);
        
        //scrollTop() 메서드는 선택된 요소의 세로 스크롤 위치를 설정하거나 반환    
        //스크롤바가 맨 위쪽에 있을때 , 위치는 0
        console.log("window의 scrollTop() : " + $(window).scrollTop()); 
        //height() 메서드는 브라우저 창의 높이를 설정하거나 반환
        console.log("window의 height() : " + $(window).height());
        
        //세로 스크롤위치 max값과 창의 높이를 더하면 현재문서의 높이를 구할수있음.
        //세로 스크롤위치 값이 max이면 문서의 끝에 도달했다는 의미
        var scrollHeight = $(window).scrollTop()+$(window).height();         
        console.log("scrollHeight : " + scrollHeight);
            
        if(scrollHeight == documentHeight) { //문서의 맨끝에 도달했을때 내용 추가 
            for(var i = 0; i<10; i++) {
                //count = count + 1;
                count++;
                //$("<h1> infinity scroll </h>").appendTo("body");
                $("<h1>"+count+" line scroll</h1>").appendTo("body");
            }
        }
    }//function infinityScrollFunction()

    }
});

</script>
</head>

<body>

</body>
</html>
