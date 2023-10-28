/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MyPC
 */
public class GamePlay extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet GamePlay</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GamePlay at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    ; // Initial capital
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        // khong su dung doGet vi de lo tham so truyen ve hehehe!
    }

    ArrayList<history> history = new ArrayList<>();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String money = request.getParameter("capital"); 
        String action = request.getParameter("action");
        String betString = request.getParameter("betAmount");
        String choice = request.getParameter("choice");
        String result = "";
        String mayResult = "";
        int bet = 0;
        int sum = 0;
        int dice1 = 0;
        int dice2 = 0;
        int capital = 1000;
        history store = new history();
        
        
        
        if (money == null || action.equals("restart")) {       
            request.setAttribute("capital", capital);
            history.clear();
        } else  {
            request.setAttribute("capital",Integer.parseInt(money));
            capital = Integer.parseInt(money);
        }
    
        
    if (choice != null && betString != null) {
            bet = Integer.parseInt(betString);
            
            dice1 = (int) (Math.random() * 6) + 1;
            dice2 = (int) (Math.random() * 6) + 1;
            sum = dice1 + dice2;
            
            if (sum >= 7) {
                mayResult = "Tài";
            } else {
                mayResult = "Xỉu";
            }
            if (bet <= capital) {
                

                if (choice.equals("tai")) {
                    if (sum >= 7) {
                        capital += bet;
                        result = "Bạn thắng!";
                    } else {
                        capital -= bet;
                        result = "Bạn thua!";
                    }
                } else if (choice.equals("xiu")) {
                    if (sum < 7) {
                        capital += bet;
                        result = "Bạn thắng!";
                        
                    } else {
                        capital -= bet;
                        result = "Bạn thua!";
                    }
                }
            } else {
                result = "Số vốn không đủ để đặt cược!";
            }
            
            if (choice.equals("tai")) {
                choice = "Tài";
            } else if (choice.equals("xiu")) {
                choice = "Xỉu";
            }
            
    store.setChoice(choice);
    store.setDice1(dice1);
    store.setDice2(dice2);
    store.setResult(mayResult);
    store.setMoney(bet);
    history.add(store);
    ArrayList<history> reversed = new ArrayList<>();
    for (int i = history.size() - 1; i >= 0; i--) {
        reversed.add(history.get(i));
}   
    request.setAttribute("history",reversed);
    request.setAttribute("choice",choice);
    request.setAttribute("capital", capital);
    request.setAttribute("sum", sum);
    request.setAttribute("dice1", dice1);
    request.setAttribute("dice2", dice2);
    request.setAttribute("result", result);
    }
        
    request.getRequestDispatcher("/gameplay.jsp").forward(request,response);
    response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
