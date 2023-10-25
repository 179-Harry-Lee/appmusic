<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> footer </title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="icon/themify-icons/themify-icons.css">
</head>

<style>
    * {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

html {
    font-family: Arial, Helvetica, sans-serif;
    scroll-behavior: smooth;
}

/* part: footer */
#footer {
    background-color: #343434;
    padding-top: 50px;
}

.container {
    width: 1140px;
    margin: auto;
    display: flex;
    justify-content: center;
}

.footer-content {
    width: 174px;
    margin: auto;
    padding: 8px;
}

.footer-heading-chu:hover {
    color: #f18930;
    cursor: pointer;
}

.footer-heading-chu {
    color: #fff;
    font-size: 24px;
    font-weight: 600;
    letter-spacing: 1px;
}

.footer-chu:hover {
    color: #f18930;
    cursor: pointer;
}

.footer-chu {
    color: #fff;
    padding: 10px 0;
}

.social-icon:hover {
    color: brown;
    cursor: pointer;
}

.social-icon {
    color: #f18930;
}

#footer .bottom-bar {
    background-color: #f18930;
    text-align: center;
    padding: 10px 0;
    margin-top: 50px;
}

#footer .bottom-bar p {
    color: #343434;
    margin: 0;
    font-size: 18px;
    padding: 8px;
}

</style>

<body>
    
     <!-- phần footer -->
     <div id="footer">

        <div class="container">
            <div class="footer-content">
                <h3 class="footer-heading-chu">Liên hệ nha</h3>
                <p class="footer-chu">Công ty : 5 thành viên</p>
                <p class="footer-chu">Trường : Gia Định</p>
                <p class="footer-chu"> 0378277554 </p>
            </div>

            <div class="footer-content">
                <h3 class="footer-heading-chu"> Tổng quan </h3>
                <p class="footer-chu">Trang chủ</p>
                <p class="footer-chu">Giới thiệu</p>
                <p class="footer-chu">Sản phẩm</p>
                <p class="footer-chu">Liên hệ</p>
                <p class="footer-chu">Tài khoản</p>
            </div>

            <div class="footer-content">
                <h3 class="footer-heading-chu">Follow us</h3>
                <i class="social-icon ti-facebook"></i>
                <i class="social-icon ti-instagram"></i>
                <i class="social-icon ti-twitter-alt"></i>
                <i class="social-icon ti-youtube"></i>
            </div>

        </div>

        <div class="bottom-bar">
            <p>&copy; 2023 your company .All right reserved</p>
        </div>

    </div>

</div>

</body>

</html>