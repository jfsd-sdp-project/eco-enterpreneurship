package com.klef.demo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FormService {
	@Autowired
	FormRepository formrepository;
	public void addFormrecord(Form form) {
		
		formrepository.save(form);
	}
	public List<Form> viewEmployeeById(String string) {
		return (List<Form>)formrepository.findAllByEmail(string);
	}
	public List<Form> getallFormrecords() {
		return (List<Form>)formrepository.findAll();
	}
	public void deleteForm(int id) {
		formrepository.deleteById(id);
	}
	public void updateformrecord(String c,int email)
	{
		Form form = formrepository.findById(email).get();
		form.setComments(c);
		formrepository.save(form);
	}
	public void updatebookrecord(String c,int email)
	{
		Form form = formrepository.findById(email).get();
		form.setBooked(c);
		formrepository.save(form);
	}
	public void updatesellrecord(String c,int email,String cost)
	{
		Form form = formrepository.findById(email).get();
		form.setSell(c);
		form.setCost(cost);
		formrepository.save(form);
	}
	public List<Form> getAllByBooked(String c)
	{
		return (List<Form>)formrepository.findAllByBooked(c);
	}

	public void deleterecord(int id) {
		formrepository.deleteById(id);
	}

	public void updateemprecord(Form emp)
	{
		formrepository.save(emp);
	}
	
}
