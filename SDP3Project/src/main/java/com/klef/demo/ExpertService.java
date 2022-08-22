package com.klef.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.demo.Expert;

@Service
public class ExpertService {
	@Autowired
	ExpertRepository emprepository;
	public void addExpertrecord(Expert emp) {
		emprepository.save(emp);
	}
	public List<Expert> getallExpertrecords() {
		return (List<Expert>)emprepository.findAll();
	}
	public void deleteExpert(int id) {
		emprepository.deleteById(id);
	}
	public void updateemprecord(Expert emp)
	{
		emprepository.save(emp);
	}
	
}
