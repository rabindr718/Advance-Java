/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HARSHIT DWIVEDI
 */
public class login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String email = request.getParameter("uname");
        String pswd = request.getParameter("pswd");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_test_info", "root", "");
            PreparedStatement pst = con.prepareStatement("select FirstName,Email,Password from student_info where email=email");
            ResultSet rs = pst.executeQuery();
            int count = 0;
            String user = "";
            String emal = "";
            while (rs.next()) {
                String unm = rs.getString(1);
                String eml = rs.getString(2);
                String psw = rs.getString(3);
                if (psw.equals(pswd)) {
                    count = 0;
                    user = unm;
                    emal = eml;
                    break;
                }
                if (!psw.equals(pswd)) {
                    count++;
                    continue;
                }
            }
            if (count > 0) {
                String message = "Invalid Credentials";
                request.setAttribute("message", message);
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("uname",user);
//                request.setAttribute("emal",emal);
                 session.setAttribute("emal",emal);
//                String Loggeduser = user;
//                request.setAttribute("LoggedUser", user);
                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
                request.getRequestDispatcher("/home.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
