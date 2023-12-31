<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<style>
.font-cafe {
	font-family: 'Roboto', sans-serif;
}
</style>

    <head>
      <script>
    	// 화면 크기를 확인하여 mobile 여부를 판단하는 함수
   		 function isMobile() {
   		     return window.innerWidth <= 600; // 화면 너비가 600px 이하이면 mobile로 간주
   		 }

   		 // mobile일 때 네비게이션을 표시하는 함수
   		 function showNavigationForMobile() {
        	var navigation = document.getElementById('navigation');

        	if (isMobile()) {
           	 navigation.style.display = 'block'; // mobile일 때 네비게이션을 보이게 함
       	 } 	else {
           	 navigation.style.display = 'none'; // mobile이 아닐 때 네비게이션을 숨김
        	}
  	  }

    // 페이지 로드 시와 화면 크기 변경 시에 showNavigationForMobile 함수 호출
   		 window.addEventListener('load', showNavigationForMobile);
    		window.addEventListener('resize', showNavigationForMobile);
		</script>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Cafe</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="resources/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

    </head>
    <body>
      <%
        String userAgent = request.getHeader("User-Agent");
        boolean isMobile = userAgent.matches(".*(Android|iPod|iPhone|BlackBerry|Windows Phone).*");
    %>
    <%if(isMobile){ %>
      
        <div style="display: flex; justify-content: center; width: 100%;">
        <b><a href="/" style="margin: 2px 6px; margin-left: 30px; font-size: 30px;"><img src="resources/cafe.png"></a></b>
 		</div>
      <%} %>
      
    <% if (!isMobile) { %>  
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark" style="padding: 50px;padding-left: 91px;padding-right: 67px;background: #fff;">
            <!-- Navbar Brand-->
            <b><a class="navbar-brand ps-3 font-cafe" href="/" style="margin: 2px 6px; font-size: 30px; ">TeampCafe</a></b>
            <!-- Navbar Search-->

            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">           
                <div class="#">
                   <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                   
                   <c:choose>
                   <c:when test="${sessionScope.username==null}">
                    <span style="color: #41464b; font-size: 18px; margin-top: 6px;" >로그인을 해주세요</span>
                   </c:when>
                   <c:when test="${sessionScope.username!=null}">
                    <span style="color: black; font-size: 18px; margin-top: 6px;" >${sessionScope.username } [ ${sessionScope.name } ]</span>
                    
               
                   </c:when>
                   </c:choose>
               
                <li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				        <i class="fas fa-user fa-fw"></i>
				    </a>
				    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
				        <c:choose>
				            <c:when test="${sessionScope.username == null}">
				                <li><a class="dropdown-item" href="/login">Login</a></li>
				                <li><a class="dropdown-item" href="/join">Join</a></li>
				                <li><a class="dropdown-item" href="/adminLogin">AdminLogin</a></li>
				            </c:when>
				            <c:otherwise>
				                <c:choose>
				                    <c:when test="${sessionScope.username == 'admin'}">
				                        <li><a class="dropdown-item" href="/logout">Logout</a></li>
				                        <li><a class="dropdown-item" href="/orderList">주문내역</a></li>
				                    </c:when>
				                    <c:otherwise>
				                        <li><a class="dropdown-item" href="/logout">Logout</a></li>
				                        <li><a class="dropdown-item" href="/mypage">Mypage</a></li>
				                        <li><a class="dropdown-item" href="/MyCart">장바구니</a></li>
				                        <li><a class="dropdown-item" href="/MyOrder">구매내역</a></li>
				                    </c:otherwise>
				                </c:choose>
				            </c:otherwise>
				        </c:choose>
				    </ul>
				</li>
            </ul>
                </div>
            </form>
            
        </nav>
        <% } %>
        <%if (isMobile){ %>
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
    <c:choose>
        <c:when test="${sessionScope.username==null}">
            <li><a class="dropdown-item" href="/login">Login</a></li>
            <% if (!isMobile) { %>
            <li><a class="dropdown-item" href="/join">Join</a></li>
            <% } %>
            <li><a class="dropdown-item" href="/adminLogin">AdminLogin</a></li>
        </c:when>
        <c:otherwise>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fas fa-user fa-fw"></i> ${sessionScope.username} [${sessionScope.name}]
                </a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="/logout">Logout</a></li>
                    <li><a class="dropdown-item" href="/mypage">Mypage</a></li>
                    <li><a class="dropdown-item" href="/MyCart">장바구니</a></li>
                    <li><a class="dropdown-item" href="/MyOrder">구매내역</a></li>
                </ul>
            </li>
        </c:otherwise>
    </c:choose>
</ul>
<%} %>
           
           