<%  
    String agentid=request.getParameter("id");
    try
    {
    Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/digital_lottery","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    java.sql.ResultSet rs;
    
    String ss="delete from tickets where AGENTID='"+agentid+"' ";
    stmt.executeUpdate(ss);
    response.sendRedirect("agent.jsp");
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
    %>