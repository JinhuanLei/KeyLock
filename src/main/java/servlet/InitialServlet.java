package servlet;

import core.Key1;
import core.KeyLock;
import core.Lock1;
import core.Main;
import core.ConvertJson;

import javax.servlet.http.HttpSession;
import java.util.HashSet;
import java.util.Iterator;

@javax.servlet.annotation.WebServlet(name = "InitialServlet", urlPatterns = "/InitialServlet")
public class InitialServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        //设置Session对象的最长不活动间隔
       // session.setMaxInactiveInterval(30);

        Main m=new Main();
        ConvertJson cj=new ConvertJson();
        HashSet<Key1> k1=m.getAllKeys();
        HashSet<Lock1> l1=m.getAllLocks();
        HashSet<KeyLock> kl1=m.getAllCombos();
        session.setAttribute("setk1",k1);
        session.setAttribute("setl1",l1);
        session.setAttribute("setkl1",kl1);

        //        Iterator<Key1> iterator1=m.getAllKeys().iterator();
//        Iterator<Lock1> iterator2=m.getAllLocks().iterator();
//        Iterator<KeyLock> iterator3=m.getAllCombos().iterator();
       String keys= cj.set2json(m.getAllKeys());
        String locks= cj.set2json(m.getAllLocks());
        String combos= cj.set2json(m.getAllCombos());
//        session.setAttribute("locks",locks);
//        session.setAttribute("keys",keys);
//        session.setAttribute("combos",combos);

       System.out.println(locks);
        System.out.println("........................................................");
        System.out.println(combos);
        response.getWriter().write(keys);

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doPost(request, response);

    }
}
