package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.FoodtruckService;
import vo.Foodtruck_Location;;



public class FoodtruckMapServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
   FoodtruckService service = new FoodtruckService();
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      String num = request.getParameter("num");
      int fNum = Integer.parseInt(num);
 
      try {
         List<Foodtruck_Location> list = service.findlocation (fNum);
         request.setAttribute("location", list);
      }catch (Exception e) {
         e.printStackTrace();
         request.setAttribute("location", e.getMessage());
      }
      
      String forwardURL = "foodtruck/mapresult.jsp";
      RequestDispatcher rd = request.getRequestDispatcher(forwardURL);
      rd.forward(request, response);   
   }
}