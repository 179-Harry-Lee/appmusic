<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <!--su dung JSTL-->
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>

        <!DOCTYPE html>

        <html>

        <head>

        </head>

        <body>


           

            <h2>Edit product Product Page</h2>

            <form action="#" method="post">
                <input type="hidden" name="code" value="${p.idsanpham}">
                <table>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="name" value="${p.tensanpham}"></td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td><input type="text" name="price" value="${p.giasanpham}"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save"></td>
                        <td><a href="productList">Cancel</a></td>
                    </tr>
                </table>
            </form>
            <!--content-->
          



        </body>

        </html>