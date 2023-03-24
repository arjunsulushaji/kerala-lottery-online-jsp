<%
      String userid,username,useremail,userpass,userdistrict,userphno;
      userid = request.getParameter("userid");
      username = request.getParameter("username");
      useremail = request.getParameter("useremail");
      userpass = request.getParameter("userpass");
      userdistrict = request.getParameter("userdistrict");
      userphno = request.getParameter("userphno");
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/digital_lottery","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    String ins="insert into signup(USERID,NAME,EMAIL,PASSWORD,DISTRICT,PHNO) values('"+userid+"','"+username+"','"+useremail+"','"+userpass+"','"+userdistrict+"','"+userphno+"')";
    String inss="insert into login(EMAIL,PASSWORD,USERTYPE) values('"+useremail+"','"+userpass+"','user')";
    stmt.executeUpdate(ins);
    stmt.executeUpdate(inss);
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);
   }
%>