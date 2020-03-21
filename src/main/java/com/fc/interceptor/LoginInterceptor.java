package com.fc.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import java.util.List;

public class LoginInterceptor extends HandlerInterceptorAdapter{

    private List<String> excludedUrls;


    public static String getUrl(HttpServletRequest req) {
        String reqUrl = req.getRequestURL().toString();
        String queryString = req.getQueryString();
        if (queryString != null) {
            reqUrl += "?" + queryString;
        }
        return reqUrl;
    }

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {

        String requestUri = request.getRequestURI();
        HttpSession session = request.getSession();


        for (String s : excludedUrls) {
            if (requestUri.endsWith(s)) {
                return true;
            }
        }

        String preUrl,url;
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            url = request.getHeader("Referer");
        } else {
            url = getUrl(request);
        }
        String[] urls = url.split("/");
        int len = urls.length;
        preUrl = urls[len-1];
        session.setAttribute("preUrl", preUrl);

        Integer uid =  (Integer)request.getSession().getAttribute("uid");
        if(uid == null){
            //在session中保存进入登录之前的页面
            //保存登录前的页面
            session.setAttribute("fromUrl", preUrl);
            request.getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);
            return false;
        }else{
            return true;
        }
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
    }


    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
    }

    public List<String> getExcludedUrls() {
        return excludedUrls;
    }

    public void setExcludedUrls(List<String> excludedUrls) {
        this.excludedUrls = excludedUrls;
    }

}
