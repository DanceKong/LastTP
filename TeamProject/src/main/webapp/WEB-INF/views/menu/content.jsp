<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/resources/include/h2.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script type="text/javascript">
	const route = window.location.pathname.replace('/', '');
	const wrap = document.referrer;
    // 화면 크기를 확인하여 mobile 여부를 판단하는 함수
   </script>
   



<head>
<script>
    
     function isMobile() {
        return window.innerWidth <= 600; // 화면 너비가 600px 이하이면 mobile로 간주
    }
</script>

<%if(!isMobile){ %>
<style>

.textareas{
    overflow:hidden;
    height:auto;
    }

.min-width {
	width: 1080px;
	margin: 0 auto;
	margin-top: 60px;
	margin-bottom: 50px;
}

.left-box {
	float: left;
}

.writer_info {
	margin-right: 6px;
	font-size: 13px;
	font-weight: 700;
}

.se-section-text.se-l-default .se-text-paragraph {
	line-height: 1.8;
	white-space: break-spaces;
}

.CommentWriter {
	margin: 12px 0 29px;
	padding: 16px 10px 10px 18px;
	border: 2px solid var(- -skinCommentWriterBorder);
	border-radius: 6px;
	box-sizing: border-box;
	background: var(- -skinCommentWriterBg);
}

.CommentWriter textarea {
	height: auto; /* 내용의 길이에 따라 자동으로 높이 조정 */
	resize: none; /* 사용자가 크기를 조정할 수 없도록 함 */
	overflow: auto; /* 내용이 넘칠 경우 스크롤바 생성 */
}

.my-box {
	border: 1px solid;
	padding: 10px;
	width: auto;
	margin: 12px 0 29px;
	padding: 16px 10px 10px 18px;
	border-radius: 6px;
	box-sizing: border-box;
	overflow: auto
}

.right-box {
	float: right;
}

.comment_inbox_text {
	overflow-x: hidden;
	overflow-y: auto;
	display: block;
	width: 100%;
	min-height: 17px;
	padding-right: 1px;
	border: 0;
	font-size: 13px;
	-webkit-appearance: none;
	resize: none;
	box-sizing: border-box;
	background: transparent;
	color: var(- -skinTextColor);
	outline: 0;
}

.comment_info_date {
	margin-right: 8px;
}

.rounded-box {
	border-radius: 10px;
	border: 1px solid #ccc;
	padding: 10px;
	position: relative;
}

.rounded-box .comment-btn {
	margin: 10px;
	position: absolute;
	float: right;
	bottom: 7px;
}

.register_box .button {
	display: inline-block;
	min-width: 46px;
	height: 34px;
	line-height: 36px;
	font-size: 13px;
	color: #b7b7b7;
	border-radius: 6px;
	box-sizing: border-box;
	font-weight: 700;
	text-align: center;
	vertical-align: top;
}

.modify-btn {
	background-color: gray;
	color: #fff;
	border: none;
	border-radius: 10px;
}

.comment-btn {
	background-color: gray;
	color: #fff;
	border: none;
	border-radius: 10px;
}

.delete-btn {
	background-color: gray;
	color: #fff;
	border: none;
	border-radius: 10px;
}

.list-btn {
	background-color: gray;
	color: #fff;
	border: none;
	border-radius: 10px;
}

.modi-btn {
	background-color: gray;
	color: #fff;
	border: none;
	border-radius: 10px;
}

.mt-6 {
	margin-top: 0.5rem !important;
	margin-bottom: 0.8rem;
}

.scroll::-webkit-scrollbar {
	display: none;
}

.menu {
	margin-top: 150px;
}

.menu-item {
  background-color: #ffffff;
  flex-grow: 1;
  transition: 0.5s;
}
.menu-item:hover {
  background-color: crimson;
  flex-grow: 1.2;
}
.menu-link {
  /* block이면 마우스 클릭영역이 더 커짐, a태그는 inline으로서 클릭영역이 콘텐츠에 한정됨*/
  display: block; 
  padding: 16px;
  font-size: 18px;
  font-weight: bold;
  color: #555;
  text-decoration: none;
  text-align: center;
}
.menu-link:hover {
  color: white;
}

ul, li {
  list-style:none;
} 


}



</style>


</head>


<body class="">
	<div id="layoutSidenav">

		<div id="layoutSidenav_nav" style="margin-left: 50px">
			<ul class="menu">
		        <li class="menu-item">
		            <a href="menu" class="menu-link">All</a>
		        </li>
		        <li class="menu-item">
		            <a href="coffee" class="menu-link">COFFEE</a>
		        </li>
		        <li class="menu-item">
		            <a href="milkTea" class="menu-link">MILK TEA & LATTE</a>
		        </li>
		        <li class="menu-item">
		            <a href="juice" class="menu-link">JUICE & DRINK</a>
		        </li>
		        <li class="menu-item">
		            <a href="smoothie" class="menu-link">SMOOTHIE</a>
		        </li>
		        <li class="menu-item">
		            <a href="tea" class="menu-link">TEA & ADE</a>
		        </li>
		        <li class="menu-item">
		            <a href="bread" class="menu-link">BREAD</a>
		        </li>
		        <li class="menu-item">
		            <a href="dessert" class="menu-link">DESSERT</a>
		        </li>
		        <li class="menu-item">
		            <a href="md" class="menu-link">MD</a>
		        </li>
		    </ul>
		</div>	
				
		

		<div id="layoutSidenav_content" style="bottom: 56px;">

			<main class="min-width">
				
				
				<a style="font-size: 20px">${menu.type}</a>
				<br><br>		
				<h1>${menu.name }</h1>
				<br>
					<c:if test="${not empty menu.filename }">
						<img style="width: 300px; height: auto;" src="/resources/files/${menu.filename }">
						<br>
					</c:if>
					<br>
					<p>${menu.content }</p>
					<br>
					<hr>
					<br>
					<div class="num">
					    <b><span style="font-size: 18px;">주문하기</span></b>
					    <form name="regForm" id="regForm" action="drinkOrder" method="post">
						    <div style="margin-left: 4px;" class="quantity" id="quantity"><br>
						        <button style="border: none; border-radius: 10px;" class="minus" type="button">-</button>
						        <span id="result">1</span>
						        <button style="border: none; border-radius: 10px;" style="all: unset" class="plus" type="button">+</button>
						        <br><br>
						        <a style="font-size: 17px;">금액 : </a><span id ="price" style="font-size: 17px;">${menu.price }</span>원
						        
						    </div>

						    <input type="hidden" id="menuId" name="id" value="${menu.id}">
						    <input type="hidden" id="menuQuantity" name="quantity" value="1">
						    <input type="hidden" id="menuName" name ="menuName" value=${menu.name }><br>						    
						    <input type="button" style="background: #ffffff;" id="confirm" onclick="go()" value = "장바구니 담기">  
						</form>
						<br>
						<form name="regForm2" id="regForm2" action="cart2" method="post">
							<input type="hidden" name="menuPrice" id="menuPrice" value="${menu.price}">
							<input type="hidden" name="menuName" id="menuName" value="${menu.name}">
							<input type="button" style="background: #ffffff;" id="confirm" onclick="go2()" value = "바로 주문하기">
						</form>
			       	</div>
				
					
				<br>
				<div><input style="float:right; padding:6px 8px" type="button" class="list-btn" value="목록" onclick="listnum();">
                 <%
					    String username = (String) session.getAttribute("username");
					    String displayStyle = (username != null && username.equals("admin")) ? "block" : "none";
					  %>
                <input style="float:right; margin-right:7px; padding:6px 8px" class="modi-btn" type="button" display: <%= displayStyle %> id="modibtn" value="수정" onclick="modi()">
                </div>
				
			</main>
	
				
<script>
function go() {
	regForm.submit();
}

function go2() {
	regForm2.submit();
}
</script>




<script>
    const plusBtn = document.querySelector('.plus');
    const minusBtn = document.querySelector('.minus');
    const resultSpan = document.querySelector('#result');
    const priceSpan = document.querySelector('#price');
    
    const resultValue = parseInt(resultSpan.textContent);
    const priceValue = parseInt(priceSpan.textContent);
    
    const menuQuantityInput = document.querySelector('#menuQuantity');
    
    const totalPrice = document.getElementById("priceAll");
    
    plusBtn.addEventListener('click', () => {
        let quantity = parseInt(resultSpan.textContent);
        quantity++;
        resultSpan.textContent = quantity;
        menuQuantityInput.value = quantity;
        priceSpan.textContent = quantity*priceValue;
        totalPrice.value=quantity*priceValue;
    });
    
    minusBtn.addEventListener('click', () => {
        let quantity = parseInt(resultSpan.textContent);
        if (quantity > 1) {
            quantity--;
            resultSpan.textContent = quantity;
            menuQuantityInput.value = quantity;
            priceSpan.textContent = quantity*priceValue;
            totalPrice.value=quantity*priceValue;
        }
    });
    
    
</script>

<script>
function modi() {
    document.addEventListener('DOMContentLoaded', function() {
        const modibtn = document.getElementById('modi-btn');
        const username = ${sessionScope.username};
        if (username != 'admin') {
            modibtn.style.display = 'none';
        } else {
            modibtn.style.display = 'block';
        }
    });
    // 버튼 클릭 시 실행할 동작 추가
    location.href='modifyMenu?id=${menu.id}';
}
</script>

<script>
   function listnum(){
      if(${sessionScope.listnum} == '1'){
         history.go(-1);
         return;
      }else if(${sessionScope.listnum} == '2'){
         history.go(-2);
      }else if(${sessionScope.listnum} == '3'){   
         history.go(-2);
      }
   }
</script>

<%	} %>

<%if(isMobile) { %>

<style>
.textareas{
    overflow:hidden;
    height:auto;
    }

.min-width {
	width: 1080px;
	margin: 0 auto;
	margin-top: 60px;
	margin-bottom: 50px;
}

.left-box {
	float: left;
}

.writer_info {
	margin-right: 6px;
	font-size: 13px;
	font-weight: 700;
}

.se-section-text.se-l-default .se-text-paragraph {
	line-height: 1.8;
	white-space: break-spaces;
}

.CommentWriter {
	margin: 12px 0 29px;
	padding: 16px 10px 10px 18px;
	border: 2px solid var(- -skinCommentWriterBorder);
	border-radius: 6px;
	box-sizing: border-box;
	background: var(- -skinCommentWriterBg);
}

.CommentWriter textarea {
	height: auto; /* 내용의 길이에 따라 자동으로 높이 조정 */
	resize: none; /* 사용자가 크기를 조정할 수 없도록 함 */
	overflow: auto; /* 내용이 넘칠 경우 스크롤바 생성 */
}

.my-box {
	border: 1px solid;
	padding: 10px;
	width: auto;
	margin: 12px 0 29px;
	padding: 16px 10px 10px 18px;
	border-radius: 6px;
	box-sizing: border-box;
	overflow: auto
}

.right-box {
	float: right;
}

.comment_inbox_text {
	overflow-x: hidden;
	overflow-y: auto;
	display: block;
	width: 100%;
	min-height: 17px;
	padding-right: 1px;
	border: 0;
	font-size: 13px;
	-webkit-appearance: none;
	resize: none;
	box-sizing: border-box;
	background: transparent;
	color: var(- -skinTextColor);
	outline: 0;
}

.comment_info_date {
	margin-right: 8px;
}

.rounded-box {
	border-radius: 10px;
	border: 1px solid #ccc;
	padding: 10px;
	position: relative;
}

.rounded-box .comment-btn {
	margin: 10px;
	position: absolute;
	float: right;
	bottom: 7px;
}

.register_box .button {
	display: inline-block;
	min-width: 46px;
	height: 34px;
	line-height: 36px;
	font-size: 13px;
	color: #b7b7b7;
	border-radius: 6px;
	box-sizing: border-box;
	font-weight: 700;
	text-align: center;
	vertical-align: top;
}

.modify-btn {
	background-color: gray;
	color: #fff;
	border: none;
	border-radius: 10px;
}

.comment-btn {
	background-color: gray;
	color: #fff;
	border: none;
	border-radius: 10px;
}

.delete-btn {
	background-color: gray;
	color: #fff;
	border: none;
	border-radius: 10px;
}

.list-btn {
	background-color: gray;
	color: #fff;
	border: none;
	border-radius: 10px;
}

.modi-btn {
	background-color: gray;
	color: #fff;
	border: none;
	border-radius: 10px;
}

.mt-6 {
	margin-top: 0.5rem !important;
	margin-bottom: 0.8rem;
}

.scroll::-webkit-scrollbar {
	display: none;
}

.menu {
	margin-top: 150px;
}

.menu-item {
  background-color: #ffffff;
  flex-grow: 1;
  transition: 0.5s;
}
.menu-item:hover {
  background-color: crimson;
  flex-grow: 1.2;
}
.menu-link {
  /* block이면 마우스 클릭영역이 더 커짐, a태그는 inline으로서 클릭영역이 콘텐츠에 한정됨*/
  display: block; 
  padding: 16px;
  font-size: 18px;
  font-weight: bold;
  color: #555;
  text-decoration: none;
  text-align: center;
}
.menu-link:hover {
  color: white;
}

ul, li {
  list-style:none;
} 

@media only screen and (max-width: 768px) {
  .textareas {
    /* 모바일에 맞는 스타일 수정 */
    /* 자동 조정 높이와 관련된 스타일 변경 */
  }

  .min-width {
    /* 모바일에 맞는 스타일 수정 */
    width: 100%; /* 전체 너비를 화면에 맞게 조정 */
    margin-top: 30px; /* 상단 여백 조정 */
    margin-bottom: 20px; /* 하단 여백 조정 */
    margin-left: 30px;
  }

  .left-box {
    /* 모바일에 맞는 스타일 수정 */
    float: none; /* 왼쪽 정렬 해제 */
  }

  .writer_info {
    /* 모바일에 맞는 스타일 수정 */
    margin-right: 0; /* 오른쪽 여백 제거 */
  }

  .CommentWriter {
    /* 모바일에 맞는 스타일 수정 */
    /* 댓글 작성 영역 스타일 변경 */
  }

  .my-box {
    /* 모바일에 맞는 스타일 수정 */
    /* 박스 스타일 변경 */
  }

  .right-box {
    /* 모바일에 맞는 스타일 수정 */
    float: none; /* 오른쪽 정렬 해제 */
  }

  .comment_inbox_text {
    /* 모바일에 맞는 스타일 수정 */
    min-height: 50px; /* 최소 높이 조정 */
  }

  .rounded-box {
    /* 모바일에 맞는 스타일 수정 */
    padding: 5px; /* 패딩 조정 */
  }

  .register_box .button {
    /* 모바일에 맞는 스타일 수정 */
    /* 버튼 스타일 변경 */
  }

  .menu {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin-left: 30px;
  }

  .menu-item {
    flex-basis: 50%;
    margin-bottom: 10px;
    margin-left: 30px;
  }

  .menu-link {
    /* 모바일에 맞는 스타일 수정 */
    padding: 8px; /* 패딩 조정 */
    font-size: 14px; /* 글꼴 크기 조정 */
  }

  .mt-6 {
    /* 모바일에 맞는 스타일 수정 */
    margin-top: 0.3rem !important; /* 상단 여백 조정 */
    margin-bottom: 0.6rem; /* 하단 여백 조정 */
  }
}


</style>






<body class="">
	<div class="layoutSidenav">

	<div class="layoutSidenav_nav">
		<ul class="menu">
	        <li class="menu-item">
	            <a href="menu" class="menu-link">All</a>
	        </li>
	        <li class="menu-item">
	            <a href="coffee" class="menu-link">COFFEE</a>
	        </li>
	        <li class="menu-item">
	            <a href="milkTea" class="menu-link">MILK TEA & LATTE</a>
	        </li>
	        <li class="menu-item">
	            <a href="juice" class="menu-link">JUICE & DRINK</a>
	        </li>
	        <li class="menu-item">
	            <a href="smoothie" class="menu-link">SMOOTHIE</a>
	        </li>
	        <li class="menu-item">
	            <a href="tea" class="menu-link">TEA & ADE</a>
	        </li>
	        <li class="menu-item">
	            <a href="bread" class="menu-link">BREAD</a>
	        </li>
	        <li class="menu-item">
	            <a href="dessert" class="menu-link">DESSERT</a>
	        </li>
	        <li class="menu-item">
	            <a href="md" class="menu-link">MD</a>
	        </li>
	    </ul>
	</div>

	<div class="layoutSidenav_content">
		<main class="min-width">
			<a class="menu-type" style="font-size: 20px">${menu.type}</a>
			<br><br>
			<h1 class="menu-name">${menu.name}</h1>
			<br>
			<c:if test="${not empty menu.filename }">
				<img class="menu-image" src="/resources/files/${menu.filename}">
				<br>
			</c:if>
			<br>
			<p class="menu-content">${menu.content}</p>
			<br>
			<hr>
			<br>
			<div class="num">
			    <b><span class="order-title" style="font-size: 18px;">주문하기</span></b>
			    <form name="regForm" id="regForm" action="drinkOrder" method="post">
				    <div class="quantity" id="quantity"><br>
				        <button class="quantity-btn minus" type="button">-</button>
				        <span id="result">1</span>
				        <button class="quantity-btn plus" type="button">+</button>
				        <br><br>
				        <a class="price-label" style="font-size: 17px;">금액 : </a><span id="price" class="price-value" style="font-size: 17px;">${menu.price}</span>원
				    </div>

				    <input type="hidden" id="menuId" name="id" value="${menu.id}">
				    <input type="hidden" id="menuQuantity" name="quantity" value="1">
				    <input type="hidden" id="menuName" name="menuName" value=${menu.name}><br>						    
				    <input type="button" class="confirm-btn" style="background: #ffffff;" id="confirm" onclick="go()" value="장바구니 담기">  
				</form>
				<br>
				<form name="regForm2" id="regForm2" action="cart2" method="post">
					<input type="hidden" name="menuPrice" id="menuPrice" value="${menu.price}">
					<input type="hidden" name="menuName" id="menuName" value="${menu.name}">
					<input type="button" class="confirm-btn" style="background: #ffffff;" id="confirm" onclick="go2()" value="바로 주문하기">
				</form>
			</div>
			
			<br>
			<div>
				<input style="float:center; padding:10px 10px" type="button" class="list-btn" value="목록" onclick="listnum();">
				<%
				    String username = (String) session.getAttribute("username");
				    String displayStyle = (username != null && username.equals("admin")) ? "block" : "none";
				%>
				<input style="float:right; margin-right:7px; padding:6px 8px; display: <%= displayStyle %>" class="modi-btn" type="button" id="modibtn" value="수정" onclick="modi()">
			</div>
		</main>
	</div>
</div>
	
				
<script>
function go() {
	regForm.submit();
}

function go2() {
	regForm2.submit();
}
</script>




<script>
    const plusBtn = document.querySelector('.plus');
    const minusBtn = document.querySelector('.minus');
    const resultSpan = document.querySelector('#result');
    const priceSpan = document.querySelector('#price');
    
    const resultValue = parseInt(resultSpan.textContent);
    const priceValue = parseInt(priceSpan.textContent);
    
    const menuQuantityInput = document.querySelector('#menuQuantity');
    
    const totalPrice = document.getElementById("priceAll");
    
    plusBtn.addEventListener('click', () => {
        let quantity = parseInt(resultSpan.textContent);
        quantity++;
        resultSpan.textContent = quantity;
        menuQuantityInput.value = quantity;
        priceSpan.textContent = quantity*priceValue;
        totalPrice.value=quantity*priceValue;
    });
    
    minusBtn.addEventListener('click', () => {
        let quantity = parseInt(resultSpan.textContent);
        if (quantity > 1) {
            quantity--;
            resultSpan.textContent = quantity;
            menuQuantityInput.value = quantity;
            priceSpan.textContent = quantity*priceValue;
            totalPrice.value=quantity*priceValue;
        }
    });
    
    
</script>

<script>
function modi() {
    document.addEventListener('DOMContentLoaded', function() {
        const modibtn = document.getElementById('modi-btn');
        const username = ${sessionScope.username};
        if (username != 'admin') {
            modibtn.style.display = 'none';
        } else {
            modibtn.style.display = 'block';
        }
    });
    // 버튼 클릭 시 실행할 동작 추가
    location.href='modifyMenu?id=${menu.id}';
}
</script>

<script>
   function listnum(){
      if(${sessionScope.listnum} == '1'){
         history.go(-1);
         return;
      }else if(${sessionScope.listnum} == '2'){
         history.go(-2);
      }else if(${sessionScope.listnum} == '3'){   
         history.go(-2);
      }
   }
</script>
<%} %>


<%@ include file="/resources/include/footer.jsp"%>