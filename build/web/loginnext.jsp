
<%
    String email=request.getParameter("useremail");
    String pass=request.getParameter("userpass");
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/digital_lottery","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    String usertype="";
    String sele="select * from login where email='"+email+"' and password='"+pass+"'";
    java.sql.ResultSet rs=stmt.executeQuery(sele);  
    if(rs.next())  
    {
     usertype=rs.getString("USERTYPE");
     if(usertype.equals("user"))
     {
        session.setAttribute("email",email);      
        response.sendRedirect("index1.jsp");
      }
      else
         if(usertype.equals("admin"))
         {
        session.setAttribute("email",email);
        response.sendRedirect("admin.jsp");
         }
      else
        if(usertype.equals("distributor"))
        {
        session.setAttribute("email",email);
        session.setAttribute("pass",pass);
        response.sendRedirect("agent.jsp");
        }
    }
      else
            response.sendRedirect("loginerror.jsp");
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);
   }
%>