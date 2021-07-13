/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Web application lifecycle listener.
 *
 * @author phanh
 */
public class OnlineUsersListener implements ServletContextListener, HttpSessionListener {
    ServletContext application;
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("Context Initialized!!!");
        application = sce.getServletContext();
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Context Destroyed!!!");
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        Long onlineUsers = (Long) application.getAttribute("OnlineUsers");
        if(onlineUsers == null){
            onlineUsers = 0L;
        }
        onlineUsers++;
        System.out.println("Session Created!!!");
        application.setAttribute("OnlineUsers", onlineUsers);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        Long onlineUsers = (Long) application.getAttribute("OnlineUsers");
        if(onlineUsers == null){
            onlineUsers = 0L;
        }
        onlineUsers--;
        System.out.println("Session Destroyed!!!");
        application.setAttribute("OnlineUsers", onlineUsers);
    }
}
