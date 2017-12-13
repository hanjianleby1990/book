<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page import = "java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="CSS/index.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分页显示信息</title>
<style type="text/css">
#context .con .con_right .list{
	overflow: hidden;
	margin: 30px auto;
	color: #3c3c3c;
}
#context .con .con_right .list li{
	list-style: none;
	width: 90px;
	float: left;
	font-size: 14px;
	text-align: center;
}
</style>
<script type="text/javascript">  
    function changeCurrentPage(value) {  
  
        location.href = "bookListAction?currentnum=" + value;  
    };  
</script>
</head>
<body>
	<div id = "context">
		<div class = "head"><img src="IMG/banner.png" alt=""></div>
		<div class = "con">
			<div class = "con_left">
				<div class = "con_con">
					<p><a href="index.html">首&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;页</a></p>
					<p><a href="BookRegister.jsp">入库登记</a></p>
					<p><a href="bookListAction">分页显示信息</a></p>
				</div>
			</div>
			<div class = "con_right">
			<ul class="list">
						<li>编号</li>
						<li>书名</li>
						<li>作者</li>
						<li>价格</li>
						<li>数量</li>
			</ul>
		
			
	<c:forEach items="${pg.list }" var = "book">
		<ul class="list">
						<li>${book.bid }</li>
						<li>${book.bname }</li>
						<li>${book.bauthor }</li>
						<li>${book.bprice }</li>
						<li>${book.bnumber }</li>
						<li><a href = "bookDeleteAction?id=${book.bid}">删除</a></li>
						<li><a href = "bookDetailsAction?id=${book.bid}">详细信息</a></li>
						<li><a href = "BookUpdate.jsp?id=${book.bid}">修改信息</a></li>
			</ul>
	</c:forEach>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href = "bookListAction?currentpage=1&currentnum=${pg.currentNum}">首页</a>
	<c:if test="${pg.currentPage == 1}">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href = "bookListAction?currentpage=1&currentnum=${pg.currentNum}">上一页</a>
	</c:if>
	<c:if test="${pg.currentPage != 1}">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href = "bookListAction?currentpage=${pg.currentPage-1 }&currentnum=${pg.currentNum}">上一页</a>
	</c:if>
	<c:if test="${pg.currentPage == pg.totalPage }">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href = "bookListAction?currentpage=${pg.totalPage }&currentnum=${pg.currentNum}">下一页</a>
	</c:if>
	<c:if test="${pg.currentPage != pg.totalPage }">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href = "bookListAction?currentpage=${pg.currentPage+1 }&currentnum=${pg.currentNum}">下一页</a>
	</c:if>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href = "bookListAction?currentpage=${pg.totalPage }&currentnum=${pg.currentNum}">尾页</a>
	
								
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<select name="currentnum" onchange="changeCurrentPage(this.value);">
							<option>--请选择每页条数--</option>
							<option value="3">3</option>
							<option value="5">5</option>
							<option value="8">8</option>
					</select>
			</div>
		</div>
	</div>
</body>
</html>