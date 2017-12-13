<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CSS/index.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>书籍详细信息</title>
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
						<li>类型</li>
						<li>作者</li>
						<li>折扣</li>
						<li>价格</li>
						<li>数量</li>
						<li>简介</li>
				</ul>
				<ul class="list">
						<li>${book.bid }</li>
						<li>${book.bname }</li>
						<li>${book.btype }</li>
						<li>${book.bauthor }</li>
						<li>${book.bdiscount }</li>
						<li>${book.bprice }</li>
						<li>${book.bnumber }</li>
						<li>${book.btext }</li>
						<li><a href = "bookUDAction?id=${book.bid }">修改信息</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>