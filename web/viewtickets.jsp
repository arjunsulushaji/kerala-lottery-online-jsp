<%
    String agentid=request.getParameter("id");
    session.setAttribute("agentid",agentid);
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/digital_lottery","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    String sele="select * from tickets where AGENTID='"+agentid+"' and STATUS='pending' ";
    java.sql.ResultSet rs=stmt.executeQuery(sele);  
    String aid = "";
    if(rs.next())  
    {
     aid=rs.getString(2);
     if(aid.equals(agentid))
      {
        session.setAttribute("agentid",agentid);      
        response.sendRedirect("showtickets.jsp");
      }
      else
      {
        response.sendRedirect("notickets.jsp");
        }
        }
      else
            response.sendRedirect("notickets.jsp");
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);
   }
%>