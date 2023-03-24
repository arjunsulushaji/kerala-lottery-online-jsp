
<%
    String district=request.getParameter("d");
    session.setAttribute("district",district);
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/digital_lottery","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    String sele="select * from distributor where DDISTRICT='"+district+"' ";
    java.sql.ResultSet rs=stmt.executeQuery(sele);  
    if(rs.next())  
    {    
        response.sendRedirect("lotteryagentsnext.jsp");
    }
      else
      {
        response.sendRedirect("noagent.jsp");
      }      
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);
   }
%>