package pack1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login.servlet")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			PrintWriter out=response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_crud","root","password");
			PreparedStatement pst=con.prepareStatement("select * from details where email_id=? AND password = ?");

		
			String email=request.getParameter("email");
			String password=request.getParameter("pass");
			
				
				pst.setString(1, email);
				pst.setString(2, password);
				
				
				ResultSet rs=pst.executeQuery();
				
				if(rs.next()){
					request.getSession().setAttribute("name", rs.getString("name"));
					request.getSession().setAttribute("mobile", rs.getString("mobile_no"));
					request.getSession().setAttribute("email", rs.getString("email_id"));
					request.getSession().setAttribute("course", rs.getString("course"));
					request.getSession().setAttribute("collegeid", rs.getString("college_id"));
					response.sendRedirect("registerpage.jsp");
				}else{
					out.println("Invalid Credentials");
				}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
