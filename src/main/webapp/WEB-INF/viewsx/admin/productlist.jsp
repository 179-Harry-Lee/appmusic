<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
  <!--su dung JSTL-->
 <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý sản phẩm</title>
    <script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
    <jsp:include page="menuadmin.jsp"></jsp:include>   

    
    <div id="content">
     
        <!-- begin: giới thiệu -->
          <div id="Danhsachsanpham" class="section-introduce">
            <h2>Quản lý sản phẩm</h2>

            <table class="table table-bordered">
                <thead>
                <tr>
                    <th></th>
                    <th>idsanpham</th>
                    <th>idloaisanpham</th>
                    <th>tensanpham</th>
                    <th>giasanpham</th>
                    <th>soluongsanpham</th>
                    <th>motasanpham</th>
                    <th>hinhanh</th>
                    
                </tr>
            </thead>
                <!--for-->
                <!--JSTL và EL-->
                <c:if test="${not empty list}">
                    <c:forEach var="p" items="${list}">
                        <form action="#" method="post">
                            
                        <tr>
                            <td><input hidden type="text" name="id" value="${p.idsanpham}"/><br/>  </td>
                            <td>${p.idsanpham}</td>
                            <td>${p.idloaisanpham}</td>
                            <td>${p.tensanpham}</td>
                            <td>${p.giasanpham}</td>
                            <td>${p.soluongsanpham}</td>
                            <td>${p.motasanpham}</td>
                            <td width="100"><img src="${p.hinhanh}" width="80" height="70"/></td> 
                            <td><a class="btn btn-primary btn-sm"href="uploadproduct?idsanpham=${p.idsanpham}">Edit</a></td>
                            <td><button>Del</button>  </td>
                        </form>
                        </tr>
                    </c:forEach>
        
                </c:if>
        
        
            </table>
            <a class="btn btn-primary" href="addimg">ADD</a>
 

  
              <div class="introduce-list">
  
                     <div class="clear"></div>   
              </div>
  
          </div>
  
      </div>
</body>
</html>