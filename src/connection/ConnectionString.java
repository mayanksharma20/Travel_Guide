package connection;

import java.sql.Connection;
import java.sql.DriverManager;

/*<%@ page import = "java.sql.*"%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String pass = request.getParameter("pass");
String mobile = request.getParameter("mobile");


try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc: mysql://localhost:3307/tourism","root","Sarvesh619")
PreparedStatement ps conn.prepareStatement("insert into register (name, email, pass, mobile)values(?,?,?,?);");
ps.setString(1, name);
ps.setString(2, email);
ps.setString(3, pass);
ps.setString(4, mobile);
int x = ps.executeUpdate();
if(x > 0){
	out.println("Register done succesfully...");
}else{
	out.println("Register failed...");
}*/

public class ConnectionString{
	public static Connection getCon() {
		Connection conn = null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism","root","Kumud$98");
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return conn;
		
	}
}
