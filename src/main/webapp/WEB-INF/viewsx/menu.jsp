<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="icon/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <title> Menu </title>
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

.clear {
    clear: both;
}

.text-white {
    color: #fff !important;
}

#nav, .subnav {
    font-family: Arial, Helvetica, sans-serif;
}


/* menu */
#menu {
    height: 54px;
    background-color: #000;
    position: fixed;
    top: 56px;
    left: 0;
    right: 0;
}

#nav {
    display: inline-block;
}

#nav > li {
    display: inline-block;

}

#nav li {   
    position: relative;
}

#nav .subnav li:hover a,
#nav > li:hover > a {
    color: #000;
    background-color: #ccc;
}

#nav > li > a {
    color: #fff;
    text-transform: uppercase;
}

#nav li a {
    text-decoration: none;
    line-height: 54px;
    padding: 0 12px;
    display: block;
}

#nav li:hover .subnav {
    display: block;
}

#nav .subnav {
    display: none;
    position: absolute;
    background-color: #fff;
    list-style: none;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
    width: 100%;

}

#nav .subnav a {
    font-size: 14px;
    color: #000;
}


/* icon của menu */
#nav .arrow-down {
   font-size: 12px; 
}

#menu #icon-header {
    float: right;
    display: flex;
    line-height: 54px;
}

#menu .icon-con:hover {
    background-color:hotpink;
    cursor: pointer;
}

#menu .icon-con {
    padding: 0 18px;
}


#menu .icon-cart {
    color: #fff;
    
}

#menu .icon-search {
    color: #fff;
}


</style>

<body>
    
          <!-- begin: menu -->
          <div id="menu">
            <!-- begin: nav -->
         <ul id="nav">
             <li><a href="hometest"> <i class="ti-home"></i> Trang chủ </a></li>
            <li><a href="#giới thiệu">giới thiệu</a></li>
            <li><a href="product">sản phẩm </a></li>
            <li><a title="0378277554" href="#liên hệ">liên hệ</a></li>
            <li><a href="cart"> <i class="icon-cart ti-shopping-cart"></i> Giỏ hàng </a></li>
            <li>
                <a href="">
                    Tài khoản <i class="arrow-down ti-angle-down"></i>
                </a>
                <ul class="subnav">
                    <li><a href="login">Đăng nhập</a></li>
                    <li><a href="admin">Trang admin</a></li>
                    <li><a href="customer">Trang khách có tài khoản</a></li>
                    <li><a href="#">Đăng xuất</a></li>
                </ul>
            </li>
            <li>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
              </form>
            </li>
         </ul>
            <!-- end: nav -->
    
            <!-- end: search -->
            
        </div>
        <!-- end:header -->
    

</body>

</html>