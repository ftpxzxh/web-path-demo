//通过EL表达式无法直接获取
alert("EL表达式无法直接取项目路径=${pageContext.request.contextPath}");

//方式一：在页面中定义js的全局变量，然后之间引用。注意js的引入要在全局变量的定义之后
alert("全局变量方式获取basePath=" + basePath);

//方式二：通过把EL中的值先放到隐藏域，然后通过隐藏域获取
var context_path = document.getElementById("context_path").value;
alert("把EL中的值先放到隐藏域，然后通过隐藏域获取，context_path="+context_path);