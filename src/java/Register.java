import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Beep xD
 */
@WebServlet(urlPatterns = {"/Register"})
public class Register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String LastName = request.getParameter("LastName");
        String FirstName = request.getParameter("FirstName");
        String MI = request.getParameter("MI");
        String Username = request.getParameter("Username");
        String Email = request.getParameter("Email");
        String Password = request.getParameter("Password");
        String RePassword = request.getParameter("RePassword");
        String MobileNum = request.getParameter("MobileNum");
        String BillAdd = request.getParameter("BillAdd");
        String DelAdd = request.getParameter("DelAdd");
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");
            PreparedStatement pstmt = connection.prepareStatement("INSERT INTO `secprog`.`user` (`userLast`, `userFirst`, `userMI`, `userUsername`, `userPassword`, `userEmail`, `userBillingAdd`, `userDeliveryAdd`, `userContactNum`, `userTypeID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
            pstmt.setString(1, LastName);
            pstmt.setString(2, FirstName);
            pstmt.setString(3, MI);
            pstmt.setString(4, Username);
            pstmt.setString(5, Password);
            pstmt.setString(6, Email);
            pstmt.setString(7, BillAdd);
            pstmt.setString(8, DelAdd);
            pstmt.setString(9, MobileNum);
            pstmt.setInt(10, 1);
            
            pstmt.executeUpdate();
            System.out.println("COMPLETE?");
            
            pstmt.close();
            connection.close();
        }catch(Exception ex){ 
            ex.printStackTrace();
           
        }
        
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }
}
                             