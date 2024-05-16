package resourcesMybatis;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/image")
public class ImageServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String imageName = request.getParameter("name");

        if (imageName != null && !imageName.isEmpty()) {
            String imagePath = "/WEB-INF/img/" + imageName;
            
            InputStream inputStream = getServletContext().getResourceAsStream(imagePath);
            
            if (inputStream != null) {
                response.setContentType(getServletContext().getMimeType(imagePath));
                Files.copy(Paths.get(getServletContext().getRealPath(imagePath)), response.getOutputStream());
            } else {
                response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            }
        } else {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
        }
    }
}
