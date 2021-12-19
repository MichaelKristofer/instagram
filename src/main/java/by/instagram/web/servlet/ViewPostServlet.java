package by.instagram.web.servlet;

import by.instagram.entity.Post;
import by.instagram.service.PostService;
import by.instagram.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/viewPost")
public class ViewPostServlet extends HttpServlet {

    private final PostService postService = new PostService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Post byId = postService.findById(id);
        req.setAttribute("post", byId);
        getServletContext().getRequestDispatcher("/pages/viewPost.jsp").forward(req, resp);
    }
}
