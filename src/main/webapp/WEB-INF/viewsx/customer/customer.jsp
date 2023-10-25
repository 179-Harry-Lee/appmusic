<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Music instrument</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="icon/themify-icons/themify-icons.css">
</head>

<body>

<div id="main">
                <!--header-->
                <jsp:include page="header.jsp"></jsp:include>
                <!--menu-->
                <jsp:include page="menucustomer.jsp"></jsp:include>
         <!-- begin: Header -->

    <!-- end:header -->


    <!-- begin:content -->
    <div id="content">

      <!-- begin: banner -->
      <div id="banner">
            
      </div>
     <!-- end: banner -->     


      <!-- begin: giới thiệu -->
        <div id="giới thiệu" class="section-introduce">
            
            <h2 class="introduce-heading"> Giới thiệu về nhạc cụ </h2>

            <p class="introduce-sub-heading">Nhạc cụ cổ điển</p>

            <p class="introduce-content">Nhạc cổ điển được hình thành từ nhiều thế kỷ trước và chứa đựng một số lượng khổng lồ các công trình sáng tạo phi thường của nhân loại, lẽ tất nhiên là có những tác phẩm không dễ cảm thụ. Tuy vậy, vẫn có những bản nhạc không hề khó thưởng thức như định kiến, thậm chí còn khơi dậy những cảm xúc tích cực, vui vẻ, trong đó có cả những tác phẩm của các nhà soạn nhạc vĩ đại, quen thuộc.</p>

            <!-- phần name và hình ảnh -->

            <div class="introduce-list">

                <div class="introduce-item">
                  <p class="name-introduce">Đàn tranh</p>
                  <!-- <img src="./general/css/img/dancodien/dan-tranh1.jpg" alt="nhạc cụ" class="img-introduce">   -->
                  <img src="img/dancodien/dantranh.jpg" alt="nhạc cụ" class="img-introduce">  
                </div>

                <div class="introduce-item">
                    <p class="name-introduce">Đàn bầu</p>
                    <img src="img/dancodien/dan-bau2.png" alt="nhạc cụ" class="img-introduce">  
                  </div>

                  <div class="introduce-item">
                    <p class="name-introduce">Đàn sến</p>
                    <img src="img/dancodien/dan-sen3.jpg" alt="nhạc cụ" class="img-introduce">  
                  </div>

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

        <div id="sản phẩm" class="section-product-big">
             <!-- begin: product -->
        <div class="section-product">
            <div class="product-heading">
                <h3 class="produce-heading-item text-white">SẢN PHẨM CỦA CHÚNG TÔI</h3>
            </div>

            <!-- hình ảnh sản phẩm -->
            <div class="product-list">

                <div class="product-item">
                    <img src="img/product/dan1.jpg" alt="" class="img-product">

                    <div class="product-body">
                        <h3 class="body-heading">SUZUKI VIOLIN</h3>
                        <p class="body-price">18,850,000đ</p>
                        <p class="body-descrip">Suzuki Violin 220FE4 4/4 sản xuất tại Nhật Bản, mang đến âm thanh tuyệt vời. Là nhạc cụ biểu diễn chuyên nghiệp cho nhạc công. Chất liệu: Gỗ vân sam Kí</p>
                        <button class="body-buy-btn js-thanh-toan">Mua</button>
                    </div>
                </div>

                <div class="product-item">
                    <img src="img/product/dan2.jpg" alt="" class="img-product">

                    <div class="product-body">
                        <h3 class="body-heading">KAWAI 22</h3>
                        <p class="body-price">90,000,000đ</p>
                        <p class="body-descrip">Đàn piano Kawai ND-21 mang đến chất lượng âm thanh trong, mạnh và một sự ổn định tuyệt đối về kết cấu bề mặt bởi kỹ thuật bộ máy</p>
                        <button class="body-buy-btn js-thanh-toan">Mua</button>
                    </div>
                </div>

                <div class="product-item">
                    <img src="img/product/dan3.jpg" alt="" class="img-product">

                    <div class="product-body">
                        <h3 class="body-heading">DEVISOR UK-20</h3>
                        <p class="body-price">1,280,000đ</p>
                        <p class="body-descrip">Đàn Ukulele Deviser UK-24-30 là một trong những dòng sản phẩm đàn ukulele được rất nhiều người yêu thích. Cần đàn của em này khá rộng</p>
                        <button class="body-buy-btn js-thanh-toan">Mua</button>
                    </div>
                </div>

                <!-- lần 2 -->
                <div class="product-item">
                    <img src="img/product/dan4.jpg" alt="" class="img-product">

                    <div class="product-body">
                        <h3 class="body-heading">SÁO NHỰA</h3>
                        <p class="body-price">150,000đ</p>
                        <p class="body-descrip"> Sáo nhựa Nuvo được thiết kế bắt mắt thu hút trẻ em Sở hữu bộ cộng hưởng âm thanh Không thấm nước Màu hồng cùng trắng</p>
                        <button class="body-buy-btn js-thanh-toan">Mua</button>
                    </div>
                </div>

                <div class="product-item">
                    <img src="img/product/dan5.jpg" alt="" class="img-product">

                    <div class="product-body">
                        <h3 class="body-heading">TRỐNG BỘ</h3>
                        <p class="body-price">20,700,000đ</p>
                        <p class="body-descrip">Pearl DMP925SP/C bộ trống Jazz hoàn hảo 22 inch bằng gỗ Maple mang đến cảm hứng vô tận cho người chơi với mức giá cực kỳ mềm</p>
                        <button class="body-buy-btn js-thanh-toan">Mua</button>
                    </div>
                </div>

                <div class="product-item">
                    <img src="img/product/dan6.jpg" alt="" class="img-product">

                    <div class="product-body">
                        <h3 class="body-heading">TRỐNG LẺ</h3>
                        <p class="body-price">8,210,000đ</p>
                        <p class="body-descrip">Vỏ (shell) 1,2 mm Beaded Seamless Aluminum Shell cho âm mạnh mẽ , khô , nhiều âm bồi . được mạ Hợp kim nhôm Heritage cho mà</p>
                        <button class="body-buy-btn js-thanh-toan">Mua</button>
                    </div>
                </div>

                <!-- lần 3 -->
                <div class="product-item">
                    <img src="img/product/dan7.jpg" alt="" class="img-product">

                    <div class="product-body">
                        <h3 class="body-heading">ORGAN</h3>
                        <p class="body-price">2,770,000đ</p>
                        <p class="body-descrip">Đàn organ / keyboard SA-80 dòng đàn phím mini mới được hãng Casio giới thiệu trong năm nay. Đàn có tính năng dễ sử dụng.</p>
                        <button class="body-buy-btn js-thanh-toan">Mua</button>
                    </div>
                </div>

                <div class="product-item">
                    <img src="img/product/dan8.jpg" alt="" class="img-product">

                    <div class="product-body">
                        <h3 class="body-heading">KÈN HƠI</h3>
                        <p class="body-price">14,810,000đ</p>
                        <p class="body-descrip">Conn-Selmer TR-650  sự lựa chọn hoàn hảo cho người chơi Thumb Hook on 1st Valve Điều chỉnh 3 Valve Slide Finger Ring Miệng Valve S</p>
                        <button class="body-buy-btn js-thanh-toan">Mua</button>
                    </div>
                </div>

                <div class="product-item">
                    <img src="img/product/dan9.jpg" alt="" class="img-product">

                    <div class="product-body">
                        <h3 class="body-heading">LOA</h3>
                        <p class="body-price">24,890,000đ</p>
                        <p class="body-descrip">Bộ khuếch đại guitar acoustic công suất 130 W, với 3 đầu vào (2 Mic-Line và 1 Line), các điều khiển Gain / Volume, bộ cân bằng 3 băng tần, hiệu ứng gửi</p>
                        <button class="body-buy-btn js-thanh-toan">Mua</button>
                    </div>
                </div>
            <div class="clear"></div>

            </div>
        </div>

        <!-- end: product -->
        </div>

        <!-- phần liên hệ -->
        <div id="liên hệ" class="contact-section">
            <h2 class="section-heading">Liên hệ</h2>

            <div class="info">

                <div class="contact-info">
                    <p><i class="ti-location-pin"></i>Trường Đại Học Gia Định</p>
                    <p><i class="ti-mobile"></i> Phone:+123456789</p>
                    <p><i class="ti-email"></i> Email: mail@mail.com</p>
                </div>

                <div class="nut-info">
                    <form action="">
                        <input type="text" name="" placeholder="name" id="" class="font-contral">

                        <input type="email" name="" placeholder="Email" id="" class="font-contral">

                        <input type="text" name="" placeholder="Message" id="" class="font-contral">

                        <div class="nut-gua-lon">
                            <input type="submit" value="Send" class="nut-gua">
                        </div>
                    </form>
                </div>

            </div>

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