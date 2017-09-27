package com.xm.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.util.Random;

/**
 * @author mayanyu.
 * @email mayanyu@chehejia.com.
 * @date 2017/9/25 下午12:42.
 */
@Controller
public class R {

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public ModelAndView view() {
        return new ModelAndView().addObject("ms","hello");
    }

    @RequestMapping(value = "/video", method = RequestMethod.GET)
    public ModelAndView video(String spmc,String sp,String zbmc,String zbtx) throws UnsupportedEncodingException {
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject("spmc",new String(spmc.getBytes("ISO-8859-1"), "UTF-8"));
        modelAndView.addObject("sp",new String(sp.getBytes("ISO-8859-1"), "UTF-8"));
        modelAndView.addObject("zbmc",new String(zbmc.getBytes("ISO-8859-1"), "UTF-8"));
        modelAndView.addObject("zbtx",new String(zbtx.getBytes("ISO-8859-1"), "UTF-8"));

//        modelAndView.addObject("spmc",spmc);
//        modelAndView.addObject("sp",sp);
//        modelAndView.addObject("zbmc",zbmc);
//        modelAndView.addObject("zbtx",zbtx);


        modelAndView.addObject("zbjb",new Random().nextInt(20)%(20-1+1) + 1);

        return modelAndView;
    }

}
