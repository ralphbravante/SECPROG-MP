
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        out.println("<h1>Error 404: Webpage not found.</h1>");
        request.getRequestDispatcher("Error.jsp").include(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();  
        
        
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        String un = request.getParameter("username");
        
		
		Cookie usernameCookie = new Cookie("User", un);
		response.addCookie(usernameCookie);
		usernameCookie.setMaxAge(60*60*24);
		if(request.getSession().getAttribute("User") == null){
                    //SESSION SCOPE
                    request.getSession().setAttribute("User", un);
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("User", username);
                
                
                
                
                boolean status = false;
		PreparedStatement pst = null;
		ResultSet rs = null;
                int count = 1;
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = DriverManager.getConnection(
                                "jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");
                    do{
                        pst = connection.prepareStatement("select * from user where userUsername = ? and userPassword = ? and userTypeID = ?");
                        pst.setString(1, username);
                        pst.setString(2, password);
                        pst.setString(3, count + "");   
                        rs = pst.executeQuery();
                        
                        status = rs.next();
                        count++;
                        System.out.println(status + "asdf" + count);
                
                    }while(status == false && count < 4);
                 
                    if((count - 1) == 1 && status){
                        RequestDispatcher rd=request.getRequestDispatcher("Customer.jsp");  
                        rd.forward(request,response);
                    }else
                        if(count - 1 == 2 && status == true){
                            RequestDispatcher rd=request.getRequestDispatcher("Manager.jsp");  
                            rd.forward(request,response);
                        }else
                            if(count -1 == 3 && status == true){
                                RequestDispatcher rd=request.getRequestDispatcher("Admin.jsp");  
                                rd.forward(request,response);
                            }else{
                                RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");  
                                rd.include(request,response);
                            }
                                
		
                } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
                
                
       
    }
}
