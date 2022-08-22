package com.klef.demo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BusinessController {
	@Autowired
	BusinessService empservice;
	

	@GetMapping("/businessregister")
	public ModelAndView expregister() {
		return new ModelAndView("business","exp",new Business());
	}
	@PostMapping("/submitbusinessdata")
	public ModelAndView submitempdata(@ModelAttribute("exp") Business emp) {
		empservice.addBusinessrecord(emp);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("businesshome");
		mv.addObject("name",emp.getName());
		return mv;
	}
	@GetMapping("/businesslogin")
	public ModelAndView blogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("businesslogin");
		return mv;
	}

	@PostMapping("/bloginverify")
	public ModelAndView auth1(@RequestParam("email") String username,@RequestParam("password") String password,HttpServletRequest request )
	{
		HttpSession session=request.getSession(); // creating session variable as same as servlet
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		
		SessionFactory sf=cfg.buildSessionFactory();
		Session ses=sf.openSession();
		
		Query qry1=ses.createQuery("from Business where email=?1 ");
		qry1.setString(1,username);
		List<Business> list1=qry1.list();
		if(list1.size()!=0) {
			Query qry2=ses.createQuery("from Business where password=?1 ");
			qry2.setString(1,password);
			List<Business> list2=qry2.list();
			if(list2.size()!=0) {
				session.setAttribute("uname", username);
				ModelAndView mv= new ModelAndView();
				mv.setViewName("businesshome");
				return mv;
			}
		}
		ModelAndView mv= new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
}
