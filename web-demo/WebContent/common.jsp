<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	//获取项目名
	var contextPath = "${pageContext.request.contextPath}";
	//获取完整的项目访问路径,比如http://localhost:8080/项目名
	var basePath = "${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}"+contextPath;
</script>