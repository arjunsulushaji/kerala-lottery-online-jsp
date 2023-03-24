<%  
    String bookedticketid=(String)session.getAttribute("bookedticketid");
    String winamount=request.getParameter("winamount");
    try
    {
    Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/digital_lottery","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    java.sql.ResultSet rs;
    
    String ss="update  bookedtickets set STATUS='win',TSTATUS='closed',WINPRICE='"+winamount+"' where BTID='"+bookedticketid+"' ";
    stmt.executeUpdate(ss);
    response.sendRedirect("agent.jsp");
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
    %>
