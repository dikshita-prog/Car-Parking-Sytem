<%-- 
    Document   : HomePage
    Created on : May 3, 2023, 4:18:06 PM
    Author     : Dikshita Aggarwal
--%>

<%@page import="java.sql.Time"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
     <head>
        <title>Home Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
            
    </head>
    <body>
       
            <div class="container">
            <div class="row">  
            <div>
                <form action="checkout.jsp" method="POST" >
                    
                 <div class="form-group">
                     <br>
                     <h1>Welcome!!</h1>
                     <hr>
                     <h3>Id: ${id}<br>
                         Name: ${name}
                     </h3>
                     <hr>
                     <h3>Do you want to CheckOut?</h3>
                      <div class="form-group">
                    <h5><label>Enter your id</label></h5>
                    <input type="text" name="d_id" class="form-control" required> 
                </div>
                     <div class="form-group">        
                <button type="submit" class="btn btn-success">CheckOut</button>
               </div>    
                </div>
            </div><!-- comment -->
            </div><!-- comment -->
         </div><!-- comment -->
     
    </body>
</html>
