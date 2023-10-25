<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="icon/themify-icons/themify-icons.css">
    <title>Menu Admin</title>
</head>
<body>
    <style>

        .nav-admin {
            background-color:hotpink;
            z-index: 1;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            height: 88px;
        }
        
        .content {
            height: 600px;
            position: relative;
        }

        .table table-dark {
            padding-top: 80px;
            width: 700px;
            position: absolute;
            top: 0;
        }

    </style>
        <!-- nav -->
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="nav-admin container-fluid">
              <a class="navbar-brand" href="admin">Trang chủ</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="productlist">Quản lí sản phẩm</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="orderlist">Quản lí đơn hàng</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="userlist">Quản lí tài khoản</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Cập nhật
                    </a>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="hometest">quay lại trang home</a></li>
                      <li><a class="dropdown-item" href="customer">quay lại trang của khách hàng có tài khoản</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">Thêm sản phẩm</a></li>
                    </ul>
                  </li>
                 
                </ul>
                <form class="d-flex" role="search">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
              </div>
            </div>
          </nav>
</body>
</html>