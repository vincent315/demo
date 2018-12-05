<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
	</head>
	<body>
		<div class="container">
			<h1>校服统计</h1>
			<form action="login" method="post">
			<input type="hidden" value="toregist" name="action"/>
  <div class="form-group">
    <label>请输入学号：</label>
    <input type="text" name="sn" class="form-control"  placeholder="请输入学号">
  </div>
   <div class="form-group">
    <label>姓名：</label>
    <input type="text" name="name" class="form-control"  placeholder="请输入姓名">
  </div>
  <div class="radio">
  <label>
    <input type="radio" name="sex"  value="M" checked/>
   男
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="sex"  value="F" >
   女
  </label>
</div>

  <button type="submit" class="btn btn-info">下一步</button>
</form>
		</div>
	</body>
</html>
