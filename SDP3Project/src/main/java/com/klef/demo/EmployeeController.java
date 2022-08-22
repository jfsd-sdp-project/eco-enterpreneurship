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
public class EmployeeController {
	@Autowired
	EmployeeService empservice;
	
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	@GetMapping("/pollution")
	public ModelAndView pollution() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("pollution");
		return mv;
	}
	@GetMapping("/pchecker")
	public ModelAndView pchecker() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("pchecker");
		return mv;
	}
	
	@GetMapping("/about")
	public ModelAndView about() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("about");
		return mv;
	}
	@GetMapping("/blog-single")
	public ModelAndView blogsingle() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("blog-single");
		return mv;
	}
	@GetMapping("/generateideas")
	public ModelAndView generateideas() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("generateidea");
		return mv;
	}
	@GetMapping("/blog")
	public ModelAndView blog() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("blog");
		return mv;
	}
	@GetMapping("/contact")
	public ModelAndView contact() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("contact");
		return mv;
	}
	@GetMapping("/services")
	public ModelAndView services() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("services");
		return mv;
	}
	@GetMapping("/login")
	public ModelAndView login() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	@GetMapping("/loginas")
	public ModelAndView loginas() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("loginas");
		return mv;
	}
	@GetMapping("/registeras")
	public ModelAndView registeras() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("registeras");
		return mv;
	}
	@GetMapping("/addemployee")
	public ModelAndView addemployee() {
		return new ModelAndView("userregister","exp",new Employee());
	}
	@PostMapping("/loginverify")
	public ModelAndView auth1(@RequestParam("email") String username,@RequestParam("password") String password,HttpServletRequest request )
	{
		HttpSession session=request.getSession(); // creating session variable as same as servlet
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		
		SessionFactory sf=cfg.buildSessionFactory();
		Session ses=sf.openSession();
		
		Query qry1=ses.createQuery("from Employee where email=?1 ");
		qry1.setString(1,username);
		List<Employee> list1=qry1.list();
		if(list1.size()!=0) {
			Query qry2=ses.createQuery("from Employee where password=?1 ");
			qry2.setString(1,password);
			List<Employee> list2=qry2.list();
			if(list2.size()!=0) {
				session.setAttribute("uname", username);
				ModelAndView mv= new ModelAndView();
				mv.setViewName("userhome");
				return mv;
			}
		}
		ModelAndView mv= new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@PostMapping("/submitempdata")
	public ModelAndView submitempdata(@ModelAttribute("emp") Employee emp) {
		empservice.addemployeerecord(emp);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addsuccess");
		mv.addObject("name",emp.getName());
		return mv;
	}
	@GetMapping("/deleteemployee/{empid}")
	public String deleteemployee(@PathVariable("empid")int empid) {
		empservice.deleteemployee(empid);
		return "redirect:/viewemployee";
	}
	@GetMapping("/updateemployee")
	public ModelAndView updateemployee() {
		//emp is request obj of Employee type
		return new ModelAndView("updateemployee","emp",new Employee());
	}

}
