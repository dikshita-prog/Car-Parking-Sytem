<%-- 
    Document   : index
    Created on : May 3, 2023, 2:13:21 PM
    Author     : Dikshita Aggarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Car Parking Space</title>
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
                <form action="checkServlet" method="POST" >
                    
                 <div class="form-group">
                     <br>
                     <h1>Car Parking Space</h1>
                     <hr>
                     <h2>Enter car details</h3>
                     <hr>
                </div>    
     
                <div class="form-group">
                    <h5><label>Driver Name</label></h5>
                    <input type="text" name="drivername" class="form-control" required> 
                </div>
               
                 <div class="form-group">
                   <h5><label>Type of Car</label></h5>
                   <br>
                   <select name="cartype" required>
                         <option>SUV</option>
                         <option>Sedan</option>
                         <option>Hatchback</option>
                     </select>
                </div>
                    
                <div class="form-group">        
                 <h5><label>Entry Time</label></h5>
                 <br>
                 <input type="time" name="entry" class="form-control" required > 
               </div>   
                    
                <div class="form-group">        
                 <h5><label>Valet?</label></h5>
                 <br>
                 <input type="radio" name="valet" value="yes" checked required /> YES 
                 &nbsp; &nbsp;
                 <input type="radio" name="valet" value="no" />NO
               </div>  
                    
               <div class="form-group">        
                <button type="submit" class="btn btn-success">Check-In</button>
               </div>    
                
               
              </form>  
           </div>       
           </div>   
        </div>
    </body>
</html>
