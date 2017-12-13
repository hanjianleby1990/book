<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CSS/BookRegister.css">
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>  
<%@ page import = "java.util.List" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
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
				<form id="form"  action="bookRegAction" method="post">
					<c:set var = "type" value = "科学,教育,文学,生活,其它"></c:set>
					<c:set var = "discount" value = "全价,9折,8折,7折,6折"></c:set>
					书名：<input type="text" name="book.bname" value="${book.bname}">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span>
						<s:if test="hasFieldErrors()">
	       					<s:property  value="fieldErrors['nameError'][0]"/>
						</s:if>
					</span>

					<br><br>
					类别：
					<c:forEach items = "${type }" var = "t" >
						<input type="checkbox" name="book.btype" value="${t}" 
						<c:if test="${fn:contains(book.btype,t)}">
							checked</c:if>>
							${t}
					</c:forEach>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span>
						<s:if test="hasFieldErrors()">
	       					<s:property  value="fieldErrors['typeError'][0]"/>
						</s:if>
					</span>
					<br><br>
					作者：<input type="text" name="book.bauthor" value="${book.bauthor}">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span>
						<s:if test="hasFieldErrors()">
	       					<s:property  value="fieldErrors['authorError'][0]"/>
						</s:if>
					</span>
					<br><br>
					折扣：
					<c:forEach items = "${discount }" var = "d" >
						<input type="radio" name="book.bdiscount" value="${d}" 
						<c:if test="${book.bdiscount eq d }">
							checked</c:if>>
							${d}
					</c:forEach>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span>
						<s:if test="hasFieldErrors()">
	       					<s:property  value="fieldErrors['discountError'][0]"/>
						</s:if>
					</span>
					<br><br>
					价格：<input type="text" name="book.bprice" value="${book.bprice}">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span>
						<s:if test="hasFieldErrors()">
	       					<s:property  value="fieldErrors['priceError'][0]"/>
						</s:if>
					</span>
					<br><br>
					数量：<input type="text" name="book.bnumber" value="${book.bnumber}">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span>
						<s:if test="hasFieldErrors()">
	       					<s:property  value="fieldErrors['numberError'][0]"/>
						</s:if>
					</span>
					<br><br>
					简介：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<textarea name="book.btext" id="bjj">${book.btext}</textarea>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span>
						<s:if test="hasFieldErrors()">
	       					<s:property  value="fieldErrors['textError'][0]"/>
						</s:if>
					</span>
					<br>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" value="注册">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="重置">
				</form>
			</div>
		</div>
	</div>
</body>
</html>