<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="icon/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <title>Đăng ký</title>
</head>
<style>

    .dangnhap-menu {
        padding-top: 150px;
    }

    .fromdangnhap {
        text-align: center;
        text-transform: uppercase;
        color: #000;
        padding-bottom: 20px;
    }

    .khunginputdangnhap {
        border: 2px solid #000;
    }

</style>
<body>
                        <!--header-->
                        <jsp:include page="header.jsp"></jsp:include>
                        <!--menu-->
                        <jsp:include page="menu.jsp"></jsp:include>
            <div id="content">
                <div id="giới thiệu" class="section-introduce">
    
                <!-- from login -->
                <form action="#" class="dangnhap-menu" method="post">
                    <h2 class="fromdangnhap">
                     ĐĂNG KÝ
                    </h2>

                    <!-- Email input -->
                    <div class="form-outline mb-4">
                        <label class="form-label" for="email">Tài khoản</label>
                      <input placeholder="Nhập tài khoản theo email" type="email" id="Email" class="khunginputdangnhap form-control" name="email" required />
                    </div>
                  
                    <!-- Password input -->
                    <div class="form-outline mb-4">
                        <label class="form-label" for="password1">Mật khẩu</label>
                      <input placeholder="Mật khẩu" type="password" id="password1" class="khunginputdangnhap form-control" name="password" required />
                    </div>

                  <!-- Confirm Password input -->
                  <div class="form-outline mb-4">
                    <label class="form-label" for="password2">Nhập lại mật Mật khẩu</label>
                  <input placeholder=" Nhập lại mật khẩu" type="password" id="password2" class="khunginputdangnhap form-control" name="password" required />
                </div>
                
                <!-- Phone input -->
                <div class="form-outline mb-4">
                    <label class="form-label" for="phone">Số điện thoại</label>
                  <input placeholder="Nhập số điện thoại" type="tel" id="phone" class="khunginputdangnhap form-control" required
                  pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" />
                </div>

                <!-- Adress input -->
                <div class="form-outline mb-4">
                    <label class="form-label" for="address">Địa chỉ</label>
                  <input placeholder="Nhập địa chỉ" type="text" id="address" class="khunginputdangnhap form-control" name="address" required />
                </div>
                <div class="row mb-4">
                    <div class="col d-flex justify-content-center">
                    </div>
                    <!-- Submit button -->
                    <button type="button" class="btn btn-primary btn-block mb-4">Đăng Ký</button>
                  
                    <!-- Register buttons -->
                    <div class="text-center">
                      <p>Đã có tài khoản? <a href="login">Đăng Nhập</a></p>
                        </div>
                    </div>
                  </form>
    
                <div class="clear"></div>   
                </div>
                        <!--footer-->
                        <jsp:include page="footer.jsp"></jsp:include>
            </div>
</body>
</html>