<%@page import="java.util.Base64"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String name = request.getParameter("name");
String password = request.getParameter("pass");
String file_location = request.getParameter("file");
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","Root@161");
		File f = new File("C://Users//Vignesh//Downloads//"+file_location);
		FileInputStream csv_file = new FileInputStream(f);
		PreparedStatement statement = connection.prepareStatement("insert into File values(?,?,?)");
		statement.setString(1,name);
		statement.setBinaryStream(2,(InputStream)csv_file,(int)f.length());
		statement.setString(3,Base64.getEncoder().encodeToString(password.getBytes()));
		int flag =statement.executeUpdate();
		if(flag>0){
			response.sendRedirect("home.jsp?msg=success");
		}
	}
	
	catch(Exception message)
	{
		System.out.println("Exception message : "+message);
		response.sendRedirect("home.jsp?msg=failed");
	}

%>