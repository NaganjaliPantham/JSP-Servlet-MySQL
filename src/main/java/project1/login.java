package project1;

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

@WebServlet("/Login")
public class login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        // Set the response content type to HTML
        resp.setContentType("text/html");

        try (PrintWriter pw = resp.getWriter()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/swiggy", "root", "root");
            String sql = "select * from login where email=? and password=?";
            PreparedStatement pmst = conn.prepareStatement(sql);
            pmst.setString(1, email);
            pmst.setString(2, password);
            ResultSet rs = pmst.executeQuery();

            // Start HTML response with embedded CSS
            pw.println("<!DOCTYPE html>");
            pw.println("<html>");
            pw.println("<head>");
            pw.println("<title>Login Details</title>");
            pw.println("<style>");
            pw.println("* { margin: 0;padding: 0;box-sizing: border-box;font-family: Arial, sans-serif;}");
            pw.println("body {display: flex;justify-content: center;align-items: center;margin: 7%;background-image: url('https://prints.alamy.com/p/780/abstract-painting-background-gentle-light-blue-33060294.jpg.webp'); background-size: cover; background-position: center; background-repeat: no-repeat;}"); 
            pw.println(".container {margin-top:100px;max-width: 100%;width: 50%;height: 200px;align-items: center;justify-content: center;border: 2px solid black;padding: 20px;border-radius: 10px;background-color: rgba(255, 255, 255, 0.8);}"); 
            pw.println("h1 { color: #333;font-weight:600; text-align: center; }");
            pw.println(".detail { font-size: 18px; color: #555; margin-bottom: 10px; }");
            pw.println("</style>");
            pw.println("</head>");
            pw.println("<body>");
            pw.println("<div class='container'>");
            pw.println("<h1>User Details</h1>");

            // Loop through the result set and display data
            while (rs.next()) {
                pw.println("<div class='detail'><strong>ID:</strong> " + rs.getInt("id") + "</div>");
                pw.println("<div class='detail'><strong>Name:</strong> " + rs.getString("name") + "</div>");
                pw.println("<div class='detail'><strong>Email:</strong> " + rs.getString("email") + "</div>");
                pw.println("<div class='detail'><strong>Password:</strong> " + rs.getString("password") + "</div>");
            }

            pw.println("</div>");
            pw.println("</body>");
            pw.println("</html>");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}