package com.xm.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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

}
