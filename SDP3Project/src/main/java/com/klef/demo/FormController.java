package com.klef.demo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FormController {
	@Autowired
	FormService formservice;
	
	@GetMapping("/addprojects")
	public ModelAndView home() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addproject");
		return mv;
	}
	@GetMapping("/updateform")
	public ModelAndView updateform() {
		return new ModelAndView("updateform","emp",new Form());
	}
	@PostMapping("/updateformdata")
	public ModelAndView updateempdata(@ModelAttribute("form") Form emp){
		formservice.updateemprecord(emp);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("userhome");
		mv.addObject("name",emp.getName());
		return mv;
	}
	@GetMapping("/delete")
	public ModelAndView delete(HttpSession session) {

		String email=(String)session.getAttribute("uname");
		List<Form> form=formservice.viewEmployeeById(email);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("delete");
		mv.addObject("formdata",form);
		return mv;
	}
	@GetMapping("/update")
	public ModelAndView update(HttpSession session) {

		String email=(String)session.getAttribute("uname");
		List<Form> form=formservice.viewEmployeeById(email);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("update");
		mv.addObject("formdata",form);
		return mv;
	}
	@GetMapping("/book")
	public ModelAndView book() {
		List<Form> form=formservice.getAllByBooked("yes");
		ModelAndView mv=new ModelAndView();
		mv.setViewName("book");
		mv.addObject("formdata",form);
		return mv;
	}
	@PostMapping("/submitproject")
	public ModelAndView submitproject(@ModelAttribute("form") Form form) {
		System.out.println(form);
		formservice.addFormrecord(form);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("pollution");
		mv.addObject("name",form.getName());
		return mv;
	}

	@GetMapping("/suggestions")
	public ModelAndView suggestions(HttpSession session) {
		String email=(String)session.getAttribute("uname");
		List<Form> form=formservice.viewEmployeeById(email);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("suggestions");
		mv.addObject("formdata",form);
		return mv;
	}
	@GetMapping("/existing")
	public ModelAndView viewemployee() {
		List<Form> form=formservice.getallFormrecords();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("existing");
		mv.addObject("formdata",form);
		return mv;
	}
	@GetMapping("/wantsell")
	public ModelAndView wantsell(HttpSession session) {
		String email=(String)session.getAttribute("uname");
		List<Form> form=formservice.viewEmployeeById(email);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("wantsell");
		mv.addObject("formdata",form);
		return mv;
	}
	@GetMapping("/booked")
	public ModelAndView booked() {
		List<Form> form=formservice.getAllByBooked("yes");
		ModelAndView mv=new ModelAndView();
		mv.setViewName("booked");
		mv.addObject("formdata",form);
		return mv;
	}
	@GetMapping("/notbooked")
	public ModelAndView notbooked() {
		List<Form> form=formservice.getAllByBooked(null);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("booked");
		mv.addObject("formdata",form);
		return mv;
	}

	@GetMapping("/portfolio")
	public ModelAndView portfolio() {
		List<Form> form=formservice.getallFormrecords();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("portfolio");
		mv.addObject("formdata",form);
		return mv;
	}
	@PostMapping("/updateformrecord")
	public ModelAndView update(HttpServletRequest req, HttpServletResponse res) {
		String c=req.getParameter("comments");
		int email=Integer.parseInt(req.getParameter("id"));
		System.out.println(email);
		formservice.updateformrecord(c, email);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("userhome");
		return mv;
	}

	@PostMapping("/updatebookrecord")
	public ModelAndView updatebook(HttpServletRequest req, HttpServletResponse res) {
		String c=req.getParameter("book");
		int email=Integer.parseInt(req.getParameter("id"));
		formservice.updatebookrecord(c, email);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("payment");
		return mv;
	}
	@PostMapping("/updatesellrecord")
	public ModelAndView updatesell(HttpServletRequest req, HttpServletResponse res) {
		String c=req.getParameter("sell");
		int email=Integer.parseInt(req.getParameter("id"));
		String cost=req.getParameter("cost");
		formservice.updatesellrecord(c, email,cost);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("userhome");
		return mv;
	}

	@PostMapping("/deleterecord")
	public ModelAndView deleterecord(HttpServletRequest req, HttpServletResponse res) {
		int c=Integer.parseInt(req.getParameter("id"));
		formservice.deleterecord(c);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("userhome");
		return mv;
	}
}
