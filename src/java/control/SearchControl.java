package control;

import DAO.DAO;
import entity.Movie;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SearchControl", urlPatterns = {"/search"})
public class SearchControl extends HttpServlet {

    @Override
    protected void doGet (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        DAO dao = new DAO();
        String name = request.getParameter("name");
        String flag = request.getParameter("flag");
        List<List<Movie>> list = dao.searchByName(name);
        List<Movie> movieList = list.get(0);
        List<Movie> tvShowList = list.get(1);
        //Check to know which page to forward
        switch( flag ) {
            case "home":
                //Put data on home.jsp
                Movie home = dao.getLast();
                request.setAttribute("last", home);
                request.setAttribute("listM", movieList);
                request.setAttribute("listTV", tvShowList);
                //Set the flag back
                request.setAttribute("flag", "home");
                request.getRequestDispatcher("home.jsp").forward(request, response);
                break;
            case "movie":
                //Put data on movie.jsp
                Movie lastm = dao.getLastMovie();
                request.setAttribute("last", lastm);
                request.setAttribute("kichtinh", dao.searchBycateOfCate(movieList, "Kịch tính"));
                request.setAttribute("hanhdong", dao.searchBycateOfCate(movieList, "Phim Hành động"));
                request.setAttribute("hoathinh", dao.searchBycateOfCate(movieList, "Phim Hoạt Hình"));
                //Set the flag back
                request.setAttribute("flag", "movie");
                request.getRequestDispatcher("movie.jsp").forward(request, response);
                break;
            case "tvshow":
                //Put data on tvshow.jsp
                Movie lastTV = dao.getLastTVShow();
                request.setAttribute("last", lastTV);
                request.setAttribute("gameShow", dao.searchBycateOfCate(tvShowList, "Game Show"));
                request.setAttribute("thucTe", dao.searchBycateOfCate(tvShowList, "Truyền hình thực tế"));
                //Set the flag back
                request.setAttribute("flag", "tvshow");
                request.getRequestDispatcher("tvshow.jsp").forward(request, response);
                break;
        }

    }

    @Override
    public String getServletInfo () {
        return "Short description";
    }// </editor-fold>

}
