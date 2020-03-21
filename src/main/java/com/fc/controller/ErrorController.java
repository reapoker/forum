package com.fc.controller;

import com.fc.util.MyConstant;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class ErrorController
{
    @RequestMapping(path = "/error.do", produces = MediaType.APPLICATION_JSON_VALUE)
    public String handle(HttpServletRequest request, Model model)
    {
        System.out.println("ERROR");
//        model = new model("error");

        model.addAttribute("title","出错了");

        int code = (Integer) request.getAttribute("javax.servlet.error.status_code");
        if (code == 404){
            //http://pszoi7vyf.bkt.clouddn.com/404.png
            model.addAttribute("info","页面不存在 QAQ... <img src=\""+MyConstant.QINIU_IMAGE_URL+
                    "404.png\" >");
        }else if (code == 400){
            model.addAttribute("info","请求错误！ 可以再刷新试试~ ");
        }else if (code == 500){
            model.addAttribute("info","服务器出错了，联系<a src=\""+ MyConstant.DOMAIN_NAME+"toPost.do?pid=1\">管理员</a>，扣扣:936771816");
        }

        return "prompt/promptInfo";
    }
}