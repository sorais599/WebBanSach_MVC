
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">	
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<body>
	<fmt:requestEncoding value="UTF-8" />
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav">    
      <li>
      <c:choose>
      	<c:when test="${sessionScope.adun==null}">
      	<a href="#" data-toggle="modal" data-target="#myModal">Quản lý sách</a>
      	</c:when>
      	<c:otherwise>
      	<a href="qlsachController">Quản lý sách</a>
      	</c:otherwise>
      </c:choose>
      </li>
      <li>
      <c:choose>
      	<c:when test="${sessionScope.adun==null}">
      	<a href="#" data-toggle="modal" data-target="#myModal">Quản lý Loại</a>
      	</c:when>
      	<c:otherwise>
      	<a href="qlloaiController">Quản lý loại</a>
      	</c:otherwise>
      </c:choose>
      </li>
      <li>
      <c:choose>
      	<c:when test="${sessionScope.adun==null}">
      	<a href="#" data-toggle="modal" data-target="#myModal">Quản lý Khách Hàng</a>
      	</c:when>
      	<c:otherwise>
      	<a href="qlkhController">Quản lý Khách Hàng</a>
      	</c:otherwise>
      </c:choose>
      </li>
      <li>
      <c:choose>
      	<c:when test="${sessionScope.adun==null}">
      	<a href="#" data-toggle="modal" data-target="#myModal">Quản lý Hóa Đơn</a>
      	</c:when>
      	<c:otherwise>
      	<a href="qlhdController">Quản lý Hóa Đơn</a>
      	</c:otherwise>
      </c:choose>
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <!-- dung JSTL -->
      <li>
      <c:choose>
         <c:when test="${sessionScope.adun!=null }">
         <li><a href="#">Xin chào:${sessionScope.adun}</a></li>
         <li><a href="logoutadminController"> Đăng xuất</a></li>
        </c:when>
          <c:otherwise>
                 <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
		         <li><a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
		           <c:if test="${sessionScope.tbad!=null }">
		           		<script>alert("${sessionScope.tbad}");</script>
		           </c:if>
  	      </c:otherwise>
        </c:choose> 
    </ul>
  </div>
</nav>
 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <form action="dnadminController" method=post>
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Đăng nhập</h4>
        </div>
        <div class="modal-body">
        <b><label >Username:</label><br></b>
    	<input type="text" name="txtun"><br>
    	<b><label>Pasword:</label><br></b>
    	<input type="password" name="txtpw"><br><br>
    	<c:if test="${sessionScope.showcapt >= 3}">
    		<img src="simpleCaptcha.jpg"/><br>
    		<input type="text" name="answer"/><br>
    	</c:if>
        </div>
        <div class="modal-footer">
        	<input type="submit" name="button" value="Đăng nhập" class="btn btn-default"><hr>
        </div>
      </div>
      </form>
    </div>
  </div>
   <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <form action="registeradminController" method=post>
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Đăng ký</h4>
        </div>
        <div class="modal-body">
    	<table>
                            <tr style="height:40px">
                                <td> Tên đăng nhập:</td>
                                <td>
                                    <input id="TenDN" name="TenDN" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td>  Mật khẩu:</td>
                                <td>
                                    <input id="Matkhau" name="Matkhau" type="password">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td>Mật khẩu nhập lại: </td>
                                <td>
                                    <input id="Matkhaunhatrlai" name="Matkhaunhaplai" type="password">
                                </td>
                            </tr>
    	</table>
        </div>
        <div class="modal-footer">
          <input type="submit" class="btn btn-default" value="Đăng ký" name="rbutton">
        </div>
      </div>
      </form>
    </div>
  </div>
  <h1 style="font-size:40px;text-align:center;font-weight:bold">DANH SÁCH KHÁCH HÀNG</h1>
  <table align="center">
  <tr>
  	<td valign="top"> 		
  		<table class="table table-hover">
  		<tr>
  			<th style="border: 1px solid black;text-align:center">Tên đăng nhập</th>
  			<th style="border: 1px solid black;text-align:center">Họ tên</th>
  			<th style="border: 1px solid black;text-align:center">Địa chỉ</th>
  			<th style="border: 1px solid black;text-align:center">Mật Khẩu</th>		
  		</tr>
  		<c:forEach items="${requestScope.khls}" var="kh">	
  		<tr>
  			<td style="border: 1px solid black">${kh.makh}</td>
  			<td style="border: 1px solid black">${kh.hoten}</td>
  			<td style="border: 1px solid black">${kh.diachi}</td>
  			<td style="border: 1px solid black">${kh.matkhau}</td>
  		</tr>
  		</c:forEach>
  		</table>
  	</td>
  </tr>
  </table> 
</body>
</html>