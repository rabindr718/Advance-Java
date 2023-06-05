/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HARSHIT DWIVEDI
 */
public class showResult extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String[] value = new String[]{request.getParameter("one"),request.getParameter("two"),request.getParameter("three"),request.getParameter("four"),request.getParameter("five"),
            request.getParameter("six"),request.getParameter("seven"),request.getParameter("eight"),request.getParameter("nine"),request.getParameter("ten")};
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_test_info", "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("Select result from answerkey");
            String ans ="";
            int count=0;
            while(rs.next()){
                ans = rs.getString(1);
                for(int i=0;i<value.length;i++){
                    if(ans.equals(value[i])){
                        count++;
                        break;
                    }
                    else
                        continue;
                }
            }
            String message ="";
            int result = count;
            request.setAttribute("result", result);
            long millis = System.currentTimeMillis();
            Date date = new Date(millis);
            request.setAttribute("date",date);
            if(count >= 9)
                message = "Congratulations ! You scored "+ count + " out of 10";
            else if(count<=5)
                message = "Keep it UP ! You scored "+ count+ " out of 10";
            else
                message = "Give one more chance! We have faith on YOU !! Your scored " + count + " out of 10";
            request.setAttribute("message", message);
            request.getRequestDispatcher("AddProfile").forward(request, response);
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
