<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 声明变量，赋值 -->
<c:set var="path" value="{pageContext.request.contextPath}" scope="page"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 引入外部css样式 -->
<link href="/resource/css/list.css" rel="stylesheet">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<title>Insert title here</title>
</head>
<script type="text/javascript">
     function qx() {
		 $("[name='sdk']").attr("checked",true);
	}
     function qbx() {
		 $("[name='sdk']").attr("checked",false);
	}
     function fx() {
		  $("[name='sdk']").each(function() {
			   this.checked!=this.checked;
		})
	}
     

</script>
<body>

   <table>
	       <tr>
	               <td>
	                <input type="button" value="全选" onclick="qx()" style="color: red">
	                <input type="button" value="反选" onclick="fx()" style="color: red">
	                <input type="button" value="全不选" onclick="qbx()" style="color: red">
	               
	               </td>
		  		   <td>编号</td>
			       <td>电影名称</td>
			       <td>导演</td>
			       <td>价格</td>
			       <td>放映时间</td>
			       <td>时长</td>
			       <td>类型</td>
			       <td>年</td>
			       <td>地区</td>
			       <td>状态</td>
		   
		   </tr>
		   
		   <c:forEach items="${movielist}" var="b">
			      <tr>
			           <td>
			            <input type="checkbox" name="sdk" value="${b.id}">			           
			           </td>
			  		   <td>${b.id}</td>
				       <td>${b.name}</td>
				       <td>${b.actor}</td>
				       <td>${b.price}</td>
				       <td><fmt:formatDate value="${b.uptime}" pattern="yyyy-MM-dd"/></td>
				       <td>${b.longtime}</td>
				       <td>${b.type}</td>
				       <td>${b.year}</td>
				       <td>${b.area}</td>
				       <td>${b.status}</td>
			   
			   </tr>
		   </c:forEach>
		   <tr>
		       <td colspan="11">
		             当前为${info.pageNum}页/一共有${info.total}条数据
		         <a href="list?pageNum=1">首页</a>   
		         <a href="list?pageNum=${info.prePage}">上一页</a> 
		         <a href="list?pageNum=${info.nextPage}">下一页</a> 
		         <a href="list?pageNum=${info.pages}">尾页</a> 
		       
		       
		       </td>
		   
		   
		   </tr>
	       
              
   
   
   </table>
</body>
</html>