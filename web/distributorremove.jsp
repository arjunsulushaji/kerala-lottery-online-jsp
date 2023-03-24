<%
      
      String distributorid=request.getParameter("id");
      String email="";
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/digital_lottery","root","");  
    java.sql.Statement stmt=con.createStatement();  
    String sele="SELECT *FROM distributor where DID='"+distributorid+"' ";
     java.sql.ResultSet r=stmt.executeQuery(sele);  
    if(r.next()) 
    {
       email=r.getString(3);
    }
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);    
}
%>
<%  
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/digital_lottery","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    java.sql.ResultSet rs;
    
    String s="delete from login where EMAIL='"+email+"' ";
    String ss="delete from distributor where DID='"+distributorid+"' ";
    String sss="delete from bookedtickets where AGENTID='"+distributorid+"' ";
    String ssss="delete from tickets where AGENTID='"+distributorid+"' ";
    stmt.executeUpdate(s);
    stmt.executeUpdate(ss);
    stmt.executeUpdate(sss);
    stmt.executeUpdate(ssss);
    response.sendRedirect("admin.jsp");
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
    %>
