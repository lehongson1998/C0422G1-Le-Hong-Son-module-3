package com.case_study.controlleer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
    @GetMapping("")
    public ModelAndView home(){
        ModelAndView modelAndView = new ModelAndView("employee/list");
        return modelAndView;
    }

    @GetMapping("/list")
    public ModelAndView listFacility(){
        ModelAndView modelAndView = new ModelAndView("employee/list");
        return modelAndView;
    }
}
