package com.klef.demo;
import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface FormRepository extends CrudRepository<Form,Integer>{
	List<Form> findAllByBooked(String name);
	List<Form> findAllByEmail(String name);
	void deleteByPrjname(String id);
	
	

}
