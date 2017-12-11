<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>js中如何引用页面变量</title>
<%@ include file="common.jsp" %>
</head>
<body>
	问题：独立的js中不能直接用EL表达式获取值，比如取项目名的时候取不到 </br>
	
	那该怎么获取呢？</br>
	方式一：在页面中定义js的全局变量，然后在js中直接引用全局变量。注意js的引入要在全局变量的定义之后。利用include指令可以很好的把项目地址做到公用。其他页面使用的时候，只要引入common.jsp页面，js中就可以使用basePath全局变量了</br>
	方式二：通过把EL中的值先放到隐藏域，然后通过隐藏域获取</br>
	
	<input type="hidden" value="${pageContext.request.contextPath}" id="context_path">
</body>
<script type="text/javascript" src="static/index.js"></script>
</html>