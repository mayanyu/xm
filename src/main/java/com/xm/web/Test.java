package com.xm.web;

import java.util.ArrayList;
import java.util.List;

/**
 * @author mayanyu.
 * @email mayanyu@chehejia.com.
 * @date 2017/9/27 下午4:11.
 */
public class Test {

    public static void main(String[] args){
        List<Double> list = new ArrayList<>();
        list.add(1.1);
        list.add(1.1);
        list.add(0.1);
        list.add(0.1);
        list.add(1.1);
        list.stream().filter(i -> i.doubleValue()>1).forEach(s -> {
            System.out.println(s);
        });
    }

}
