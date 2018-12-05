<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
	</head>
	<body>
		<div class="container">
			<h3>${sn}&nbsp;${name}&nbsp;
			<c:choose>
			  <c:when test="${sex=='M'}">男</c:when>
			  <c:otherwise>女</c:otherwise>
			</c:choose>
			孩</h3>
<form class="form-horizontal" action="regist" method="post">
<input type="hidden" value="${sn}" name="sn"/>
<input type="hidden" value="${sex}" name="sex"/>
<input type="hidden" value="${name}" name="name"/>
<input type="hidden" value="tosave" name="action"/>



<div class="form-group">
    <label class="radio-inline">白衬衣(48元)：</label>
    <label class="radio-inline">
      <input type="radio"  value="0" name="d1">不要
    </label>
    <label class="radio-inline">
      <input type="radio"  value="1" name="d1" checked="checked">1件
    </label>
      <label class="radio-inline">
      <input type="radio"  value="2" name="d1">2件
    </label>
  </div>
  <div class="form-group">
    <label class="radio-inline">蓝长袖(43元)：</label>
    <label class="radio-inline">
      <input type="radio"  value="0" name="d2">不要
    </label>
    <label class="radio-inline">
      <input type="radio"  value="1" name="d2" checked="checked">1件
    </label>
      <label class="radio-inline">
      <input type="radio"  value="2" name="d2">2件
    </label>
  </div>
  
    <div class="form-group">
    <label class="radio-inline">毛背心(52元)：</label>
    <label class="radio-inline">
      <input type="radio"  value="0" name="d3">不要
    </label>
    <label class="radio-inline">
      <input type="radio"  value="1" name="d3" checked="checked">1件
    </label>
      <label class="radio-inline">
      <input type="radio"  value="2" name="d3">2件
    </label>
  </div>
  
    
    <div class="form-group">
    <label class="radio-inline">毛衣(82元)：</label>
    <label class="radio-inline">
      <input type="radio"  value="0" name="d4">不要
    </label>
    <label class="radio-inline">
      <input type="radio"  value="1" name="d4" checked="checked">1件
    </label>
      <label class="radio-inline">
      <input type="radio"  value="2" name="d4">2件
    </label>
  </div>
    <div class="form-group">
    <label class="radio-inline">蓝裤子(56元)：</label>
    <label class="radio-inline">
      <input type="radio"  value="0" name="d5">不要
    </label>
    <label class="radio-inline">
      <input type="radio"  value="1" name="d5" checked="checked">1件
    </label>
      <label class="radio-inline">
      <input type="radio"  value="2" name="d5">2件
    </label>
  </div>

      <div class="form-group">
    <label class="radio-inline">红运动服(128元)：</label>
    <label class="radio-inline">
      <input type="radio"  value="0" name="d6">不要
    </label>
    <label class="radio-inline">
      <input type="radio"  value="1" name="d6" checked="checked">1件
    </label>
      <label class="radio-inline">
      <input type="radio"  value="2" name="d6">2件
    </label>
  </div>
  
  <div class="form-group">
    <label class="radio-inline">抓绒外套(98元)：</label>
    <label class="radio-inline">
      <input type="radio"  value="0" name="d7">不要
    </label>
    <label class="radio-inline">
      <input type="radio"  value="1" name="d7" checked="checked">1件
    </label>
      <label class="radio-inline">
      <input type="radio"  value="2" name="d7">2件
    </label>
  </div>
   <div class="form-group">
    <label class="radio-inline">尺码：</label>
    <label class="radio-inline">
      <input type="radio"  value="120" name="size">120
    </label>
    <label class="radio-inline">
      <input type="radio"  value="130" name="size" checked="checked">130
    </label>
      <label class="radio-inline">
      <input type="radio"  value="140" name="size">140
    </label>
  </div>
  <div class="form-group">
    <label class="radio-inline">备注：</label>
    <input type="text" name="txt" />
  </div>
 <button type="submit" class="btn btn-info">检查仔细了，确定</button>
 
</form>
		</div>
	</body>
</html>
