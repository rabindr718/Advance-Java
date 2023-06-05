/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddProfile extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_test_info", "root", "");
             HttpSession session = request.getSession();
            String email = (String) session.getAttribute("emal");

            String test="";
            test=(String)request.getSession().getAttribute("test");

            int count = (int) request.getAttribute("result");

            Date date = (Date)request.getAttribute("date");

            PreparedStatement pst = con.prepareStatement("insert into profile values (?,?,?,?)");
            pst.setString(1,email);
            pst.setString(2, test);
            pst.setDate(3,date);
            pst.setInt(4, count);
            pst.executeUpdate();
            request.getRequestDispatcher("/resultPage.jsp").include(request, response);

        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
