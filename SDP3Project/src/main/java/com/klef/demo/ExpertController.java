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
public class ExpertController {
	@Autowired
	ExpertService empservice;
	

	@GetMapping("/expertregister")
	public ModelAndView expregister() {
		return new ModelAndView("expertregister","exp",new Expert());
	}
	@PostMapping("/submitexpertdata")
	public ModelAndView submitexpertdata(@ModelAttribute("emp") Expert emp) {
		empservice.addExpertrecord(emp);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addsuccess");
		mv.addObject("name",emp.getName());
		return mv;
	}

	@GetMapping("/expertlogin")
	public ModelAndView blogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("expertlogin");
		return mv;
	}

	@PostMapping("/eloginverify")
	public ModelAndView auth1(@RequestParam("email") String username,@RequestParam("password") String password,HttpServletRequest request )
	{
		HttpSession session=request.getSession(); // creating session variable as same as servlet
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		
		SessionFactory sf=cfg.buildSessionFactory();
		Session ses=sf.openSession();
		
		Query qry1=ses.createQuery("from Expert where email=?1 ");
		qry1.setString(1,username);
		List<Expert> list1=qry1.list();
		if(list1.size()!=0) {
			Query qry2=ses.createQuery("from Expert where password=?1 ");
			qry2.setString(1,password);
			List<Expert> list2=qry2.list();
			if(list2.size()!=0) {
				session.setAttribute("uname", username);
				ModelAndView mv= new ModelAndView();
				mv.setViewName("experthome");
				return mv;
			}
		}
		ModelAndView mv= new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
}
