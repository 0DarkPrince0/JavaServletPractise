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
 * Servlet implementation class register
 */
@WebServlet("/register.servlet")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
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
			PreparedStatement pst=con.prepareStatement("insert into details values(?,?,?,?,?,?)");
			String name=request.getParameter("name");
			String mobile=request.getParameter("mobile");
			String email=request.getParameter("email");
			String password=request.getParameter("pass");
			String confirmpassword=request.getParameter("cnfpass");
			String course=request.getParameter("course");
			String colegeid=request.getParameter("colegeid");
			
			if(password.equalsIgnoreCase(confirmpassword)){
				pst.setString(1, name);
				pst.setString(2, mobile);
				pst.setString(3, email);
				pst.setString(4, password);
				pst.setString(5, course);
				pst.setString(6, colegeid);
				
				int x=pst.executeUpdate();
				
				if(x>0){
					out.print("DATA INSERTED SUCCESSFULLY");
				}
				
			}else{
				out.println("NO PASS MATCHED");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
