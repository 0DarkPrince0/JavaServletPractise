package pack1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class update
 */
@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public update() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			PrintWriter out = response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_crud", "root",
					"password");
		PreparedStatement pst = con.prepareStatement("update details SET name=?, mobile_no=?, password=? ,course=? ,college_id=? where email_id=?");
			String name = request.getParameter("name1");
			String mobile = request.getParameter("mobile1");
			String email = request.getParameter("email1");
			String password = request.getParameter("pass1");
			String confirmpassword = request.getParameter("cnfpass1");
			String course = request.getParameter("course1");
			String colegeid = request.getParameter("colegeid1");

			if (password.equalsIgnoreCase(confirmpassword)) {
				pst.setString(1, name);
				pst.setString(2, mobile);
				pst.setString(3, password);
				pst.setString(4, course);
				pst.setString(5, colegeid);
				pst.setString(6, email);
				int x = pst.executeUpdate();

				if (x > 0) {
					out.print("DATA Updated SUCCESSFULLY");
					response.sendRedirect("registerpage.jsp");
				}

			} else {
				out.println("NO PASS MATCHED");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
