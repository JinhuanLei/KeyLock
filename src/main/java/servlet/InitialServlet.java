package servlet;

import core.Key1;
import core.KeyLock;
import core.Lock1;
import core.Main;
import core.ConvertJson;

import java.util.Iterator;

@javax.servlet.annotation.WebServlet(name = "InitialServlet", urlPatterns = "/InitialServlet")
public class InitialServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        Main m=new Main();
        ConvertJson cj=new ConvertJson();
        Iterator<Key1> iterator1=m.getAllKeys().iterator();
        Iterator<Lock1> iterator2=m.getAllLocks().iterator();
        Iterator<KeyLock> iterator3=m.getAllCombos().iterator();
       String x= cj.set2json(m.getAllKeys());
       // System.out.println(x);
        response.getWriter().write(x);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doPost(request, response);

    }
}
