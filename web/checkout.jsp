<%-- 
    Document   : checkout
    Created on : May 3, 2023, 5:30:24 PM
    Author     : Dikshita Aggarwal
--%>

<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Checkout</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
            
    </head>
    <body>
        <div class="container">
        <h1>Thank you for choosing our services!!</h1>
        <h3>You have to pay: 
        <%
            try{
               int d=Integer.parseInt(request.getParameter("d_id"));
               Date date = new Date();
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","password");
               String sql="Select entry from carpark where id=?";
               PreparedStatement pst=con.prepareStatement(sql);
               pst.setInt(1,d);
               
               ResultSet rs=pst.executeQuery();
               if(rs.next()){
                   int h=date.getHours();
                   int h1=rs.getTime("entry").getHours();
                   int t=h-h1;
                   int charges=t*10;//Rs. 10 per hour
                   out.print(charges);
                   sql="Delete from carpark where id=?";
                   pst=con.prepareStatement(sql);
                   pst.setInt(1,d);
                   pst.executeQuery();
               }
               else{
                   out.println("Error:ID not found!!");
               }
            }
            catch(Exception e){
                out.println(e);
            }
            %>
        </h3>
        </div><!-- comment -->
    </body>
</html>
