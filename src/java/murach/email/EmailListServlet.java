package murach.email;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import murach.business.User;

public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String url = "/index.html";
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";
        }

        if (action.equals("add")) {
            // Lấy dữ liệu từ Request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String dateOfBirth = request.getParameter("dateOfBirth");
            String hearFrom = request.getParameter("hearFrom");
            String wantsUpdates = request.getParameter("wantsUpdates");
            String emailAnnouncements = request.getParameter("emailAnnouncements");
            String contactVia = request.getParameter("contactVia");

            // Khởi tạo đối tượng User
            User user = new User();
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            user.setDateOfBirth(dateOfBirth);
            user.setHearFrom(hearFrom);
            user.setWantsUpdates(wantsUpdates != null ? "Yes" : "No");
            user.setEmailAnnouncements(emailAnnouncements != null ? "Yes" : "No");
            user.setContactVia(contactVia);

            request.setAttribute("user", user);
            url = "/thanks.jsp";
        }
        
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
}