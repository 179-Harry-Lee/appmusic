<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="icon/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <title>Login</title>
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

            <form class="dangnhap-menu">
                <h2 class="fromdangnhap">
                 ĐĂNG NHẬP
                </h2>
                <!-- Email input -->
                <div class="form-outline mb-4">
                    <label class="form-label" for="email">Tài khoản</label>
                  <input placeholder="Tài khoản" type="email" id="email" class="khunginputdangnhap form-control" name="email" required />
                </div>
              
                <!-- Password input -->
                <div class="form-outline mb-4">
                    <label class="form-label" for="password1">Mật khẩu</label>
                  <input placeholder="Mật khẩu" type="password" id="password1" class="khunginputdangnhap form-control" name="password" required />
                </div>
              
                <!-- 2 column grid layout for inline styling -->
                <div class="row mb-4">
                  <div class="col d-flex justify-content-center">
                    <!-- Checkbox -->
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
                      <label class="form-check-label" for="form2Example31"> Remember me </label>
                    </div>
                  </div>
              
                  <div class="col">
                    <!-- Simple link -->
                    <a href="#!">Quên mật khẩu?</a>
                  </div>
                </div>
                <!-- Submit button -->
                <button type="button" class="btn btn-primary btn-block mb-4">Đăng nhập</button>
              
                <!-- Register buttons -->
                <div class="text-center">
                  <p>Không phải là thành viên? <a href="register">Đăng kí</a></p>
    
                </div>
              </form>

            <div class="clear"></div>   
            </div>
                    <!--footer-->
                    <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>