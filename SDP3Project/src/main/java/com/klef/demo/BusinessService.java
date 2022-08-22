package com.klef.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.demo.Business;

@Service
public class BusinessService {
	@Autowired
	BusinessRepository emprepository;
	public void addBusinessrecord(Business emp) {
		emprepository.save(emp);
	}
	public List<Business> getallBusinessrecords() {
		return (List<Business>)emprepository.findAll();
	}
	public void deleteBusiness(int id) {
		emprepository.deleteById(id);
	}
	public void updateemprecord(Business emp)
	{
		emprepository.save(emp);
	}
	
}
