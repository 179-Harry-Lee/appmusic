<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
  <!--su dung JSTL-->
 <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container" style="margin-top: 25px;">

           
                      <!--content-->
            
                    <form action="#" method="post" enctype="multipart/form-data">
                     <h2 class="myclass">ADD Product</h2>
                        
                            <label>ID</label> 
                            <input  name="id" value="${p.idsanpham}">
                        
                            

                        
                        <div class="form-group">
                            <label>IDLSP</label> 
                            <input type="text" 
                                   class="form-control" name="ids" placeholder="Enter IDLSP">
                        </div>
                        <div class="form-group">
                            <label>NAME</label> 
                            <input type="text" 
                                   class="form-control" name="name" placeholder="Enter Name">
                        </div>
                        <div class="form-group">
                            <label>GIA</label> 
                            <input type="text" 
                                   class="form-control" name="gia" placeholder="gia">
                        </div>
                        
                         <div class="form-group">
                            <label>MOTA</label> 
                           <textarea rows="5" cols="100" name="mota"></textarea>
                        </div>
                        
                        
                        
                        
                        <div class="form-group">
                            <label>Photo</label> <br/>
                           
                            <input type="file" 
                                   class="form-control" name="image" placeholder="Enter photo">
                        </div>
                        <button type="submit" class="btn btn-primary">Save</button>
                        <button type="reset" class="btn btn-primary">Cancel</button>
                        
                    </form>
               

            
                </div>
            </div>
        </div>

    </body>
</html>