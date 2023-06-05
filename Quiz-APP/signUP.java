

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class signUP extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_test_info","root","");
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String pswd = request.getParameter("pswd");
            String cpswd = request.getParameter("cpswd");
            String gender = request.getParameter("gen");
            String branch = request.getParameter("branch");
            PreparedStatement pst = con.prepareStatement("insert into student_info values(?,?,?,?,?,?,?)");
            pst.setString(1,fname);
            pst.setString(2,lname);
            pst.setString(3,email);
            pst.setString(4,pswd);
            pst.setString(5,cpswd);
            pst.setString(6,gender);
            pst.setString(7,branch);
            pst.executeUpdate();
            request.getRequestDispatcher("login.jsp").forward(request, response);
            con.close();
            
        }
        catch(Exception e){
            System.out.println(e);
        }
    }

}
