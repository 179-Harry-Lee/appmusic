<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <!--su dung JSTL-->
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản phẩm</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="icon/themify-icons/themify-icons.css">
</head>

<body>
                    <!--header-->
            <jsp:include page="header.jsp"></jsp:include>
                    <!--menu-->
            <jsp:include page="menu.jsp"></jsp:include>
          <!-- begin: banner -->
          <div id="content">

            <!-- begin: banner -->

           <!-- end: banner -->     
      
      
            <!-- begin: giới thiệu -->
              <div id="giới thiệu" class="section-introduce">
                  
                 
                  <!-- phần name và hình ảnh -->
      
                  <div class="introduce-list">
                  <!-- đoạn 2 -->
      
                      <p class="introduce-sub-heading">Nhạc cụ hiện đại</p>
          
                      <p class="introduce-content">Nhạc cụ là những dụng cụ chuyên dùng để khai thác những âm thanh âm nhạc và tạo tiếng động tiết tấu, được sử dụng cho việc biểu diễn âm nhạc. Mỗi nhạc cụ có âm sắc riêng biệt về âm vang, có cường độ âm thanh riêng và âm vực khác nhau. Nhạc cụ xuất hiện gắn liền với lịch sử văn hóa và liên quan tới sự phát triển của nghệ thuật biểu diễn cũng như kỹ thuật chế tạo.</p>
          
                      <!-- phần name và hình ảnh -->
          
                    <div class="introduce-list">
          
                          <div class="introduce-item">
                            <p class="name-introduce">Đàn Piano</p>
                            <img src="img/danhiendai/Piano4.jnp.avif" alt="nhạc cụ" class="img-introduce">  
                          </div>
          
                          <div class="introduce-item">
                              <p class="name-introduce">Nhạc cụ phím</p>
                              <img src="img/danhiendai/nhaccuphim5.jnp.webp" alt="nhạc cụ" class="img-introduce">  
                            </div>
          
                            <div class="introduce-item">
                              <p class="name-introduce">Đàn Guitars</p>
                              <img src="img/danhiendai/guitars6.webp" alt="nhạc cụ" class="img-introduce">  
                            </div>  
                         <div class="clear"></div>   
                  </div>
      
              </div>
      
          </div>
      
          <!-- end: giới thiệu -->
        <c:if test="${not empty list}">
            <c:forEach var="p" items="${list}">
                <form action="giohang" method="post">
              <div id="sản phẩm" class="section-product-big">
                   <!-- begin: product -->
              <div class="section-product">
                      
                  <!-- hình ảnh sản phẩm -->
                  <div class="product-list">
      
                    <tr>
                        <div class="product-item">
                            <img src="${p.hinhanh}" alt="${p.hinhanh}" class="img-product" name="${p.hinhanh}">
        
                            <div class="product-body">
                                <h3 class="body-heading" >${p.tensanpham}</h3>
                                <input type="hidden" name="tenx" value="${p.tensanpham}">
                                <input type="hidden" name="giax" value="${p.giasanpham}">
                                <input type="hidden" name="imgx" value="${p.hinhanh}">
                                <p class="body-price">${p.giasanpham}</p>
                                <p class="body-descrip" >${p.motasanpham}</p>
                                <button class="body-buy-btn js-thanh-toan">Mua</button>
                                <button >Thêm</button>
                            </div>
                        </div>
                        
                    </tr>
                  </div>
                  <div class="clear"></div>

              </div>
              </div>
            </form>
            </c:forEach>
      </c:if>
        
              <!-- end: product -->
              </div>
      
              <!-- phần footer -->
              <!--footer-->
      
              <jsp:include page="footer.jsp"></jsp:include>
      
      </div>
      
          <!-- giao diện modal -->
          <div class="modal js-modal">
              <div class="modal-container">
      
                  <div class="modal-close js-modal-close">
                      <i class="ti-close"></i>
                  </div>
      
                  <header class="modal-header">
                      <i class="modal-save-icon ti-save"></i>
                      Thông tin cần điền
                  </header>
      
                  <div class="modal-body">
                      <label for="số điện thoại" class="modal-label">
                          <i class="ti-mobile"></i>
                          Số điện thoại
                      </label>
                      <input id="số điện thoại" type="text" class="modal-input" placeholder="Số điện thoại?">
      
                      <label for="email" class="modal-label">
                          <i class="ti-email"></i>
                          Email
                      </label>
                      <input id="email" type="text" class="modal-input" placeholder="Nhập email">
      
                      <div class="nut-btn-pay-modal">
                          <buttuon class="btn-pay">
                              Thanh toán <i class="ti-check"></i>
                          </buttuon>
                      </div>
                      
                  </div>
                  
              </div>
          </div>
          
         <script>
      
          const buyBtns = document.querySelectorAll('.js-thanh-toan')
          const modal = document.querySelector('.modal')
          const modalclose = document.querySelector('.js-modal-close')
      
          function showBuy() {
              modal.classList.add('open')
          }
      
          function hideBuy() {
              modal.classList.remove('open')
          }
      
          for (const buyBtn of buyBtns) {
              buyBtn.addEventListener('click', showBuy)
          }
      
          modalclose.addEventListener('click', hideBuy)
      
         </script>

</body>
</html>