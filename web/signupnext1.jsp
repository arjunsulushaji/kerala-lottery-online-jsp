<%
      String userid,username,useremail,userpass,userdistrict,userphno,useraddress,userpincode;
      userid = request.getParameter("userid");
      username = request.getParameter("username");
      useremail = request.getParameter("useremail");
      userpass = request.getParameter("userpass");
      userdistrict = request.getParameter("userdistrict");
      userphno = request.getParameter("userphno");
      useraddress = request.getParameter("useraddress");
      userpincode = request.getParameter("userpincode");
      
      session.setAttribute("userid",userid);
      session.setAttribute("username",username);
      session.setAttribute("useremail",useremail);
      session.setAttribute("userpass",userpass);
      session.setAttribute("userdistrict",userdistrict);
      session.setAttribute("userphno",userphno);
      session.setAttribute("useraddress",useraddress);
      session.setAttribute("userpincode",userpincode);
     
      String val = "";
      
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/digital_lottery","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    String ins="SELECT *from login";
    java.sql.ResultSet rs = stmt.executeQuery(ins);
    while(rs.next()){
    val = rs.getString(1);
    if(val.equals(useremail)){
        response.sendRedirect("signupErr.jsp");
    }
    }
    response.sendRedirect("signupnext.jsp");
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);
   }
      
%>