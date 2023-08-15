package userServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.ConnectionString;

/**
 * Servlet implementation class Discount
 */
@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String packagename = request.getParameter("packagename");
		String feedback = request.getParameter("feedback");
		String name=request.getParameter("name");
		PrintWriter out = response.getWriter();
		
		try{
			Connection con=ConnectionString.getCon();//getting db connection
			PreparedStatement ps=con.prepareStatement("insert into feedback values(?,?,?)");//creating statment to run query
			ps.setString(1,name);		
			ps.setString(2,feedback);	
			ps.setString(3,packagename);
			ps.executeUpdate();			
			out.println("Successfully added");
			//response.sendRedirect("User/User.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
